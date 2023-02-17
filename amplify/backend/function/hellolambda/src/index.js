/*
Formulas: http://www.movable-type.co.uk/scripts/latlong.html
*/

const awsServerlessExpress = require("aws-serverless-express");
const app = require("./app");
const { default: fetch, Request } = require("node-fetch");

const server = awsServerlessExpress.createServer(app);
const GRAPHQL_ENDPOINT =
  "https://qmuxztiplrcaxefujag4xdx4tq.appsync-api.us-east-1.amazonaws.com/graphql";
const GRAPHQL_API_KEY = "da2-7acuw3rtdzgkbigwnzx5qzay5a";

const query = `query DISCOVERABLE_ACCOUNTS {
    listAccounts(filter: {is_discoverable: {eq: false}}) {
      items {
        id
        location {
          latitude
          longitude
        }
      }
    }
  }`;

const query_options = {
  method: "POST",
  headers: {
    "x-api-key": GRAPHQL_API_KEY,
  },
  body: JSON.stringify({ query }),
};

const mutation = `mutation CREATE_MATCH($input: CreateMatchInput!) {
    createMatch(input: $input) {
      id
      account_id_1
      account_id_2
    }
  }
`;

const mutation_options = (variables) => {
  return {
    method: "POST",
    headers: {
      "x-api-key": GRAPHQL_API_KEY,
    },
    body: JSON.stringify({ mutation, variables }),
  }
}

const calculate_distance = (coord1, coord2) => {
  const R = 6371e3; // metres
  const φ1 = (coord1["latitude"] * Math.PI) / 180; // φ, λ in radians
  const φ2 = (coord2["latitude"] * Math.PI) / 180;
  const Δφ = ((coord2["latitude"] - coord1["latitude"]) * Math.PI) / 180;
  const Δλ = ((coord2["longitude"] - coord1["longitude"]) * Math.PI) / 180;

  const a =
    Math.sin(Δφ / 2) * Math.sin(Δφ / 2) +
    Math.cos(φ1) * Math.cos(φ2) * Math.sin(Δλ / 2) * Math.sin(Δλ / 2);

  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));

  const d = R * c; // metres

  return d;
};

const calculate_midpoint = (coord1, coord2) => {
  const φ1 = (coord1["latitude"] * Math.PI) / 180; // φ, λ in radians
  const φ2 = (coord2["latitude"] * Math.PI) / 180;
  const λ1 = (coord1["longitude"] * Math.PI) / 180; // φ, λ in radians
  const λ2 = (coord2["longitude"] * Math.PI) / 180;

  const Bx = Math.cos(φ2) * Math.cos(λ2 - λ1);
  const By = Math.cos(φ2) * Math.sin(λ2 - λ1);

  const φ3 = Math.atan2(
    Math.sin(φ1) + Math.sin(φ2),
    Math.sqrt((Math.cos(φ1) + Bx) * (Math.cos(φ1) + Bx) + By * By)
  );
  const λ3 = λ1 + Math.atan2(By, Math.cos(φ1) + Bx);

  let coordinates = {
    "latitude": φ3,
    "longitude": λ3
  }
  
  coordinates = {
    "latitude": φ3*180/Math.PI,
    "longitude": λ3*180/Math.PI
  }

  return coordinates
};

const calculate_matches = (accounts) => {
    const matchedAccounts = []
  const matches = []
  
    for(var i = 0; i < accounts.length; i++) {
      let current = accounts[i]
      if (matchedAccounts.includes(current.id)) { continue; }
      for (var j = 1; j < accounts.length; j++) {
        let other = accounts[j]
        if (current == other || matchedAccounts.includes(other.id)) { continue; }
        
        let distance = calculate_distance(current.location, other.location);
        let midpoint = calculate_midpoint(current.location, other.location);
        
        //TODO: Check if distance is less than (1000?) meters
        let match = {
          "account_id_1": current.id,
          "account_id_2": other.id,
          "distance": distance,
          "midpoint": midpoint
        }
        matchedAccounts.push(current.id)
        matchedAccounts.push(other.id)
        matches.push(match)
      }
    }
    
    return {
      "accounts": matchedAccounts,
      "matches": matches
    }
}

exports.handler = async (event) => {
  console.log(`EVENT: ${JSON.stringify(event)}`);
  let statusCode = "";
  let body = "";
  let error;

  const query_request = new Request(GRAPHQL_ENDPOINT, query_options);

  try {
    const query_response = await fetch(query_request);
    body = await query_response.json();
    if (body.errors) statusCode = 400;
  } catch (error) {
    statusCode = 400;
    body = {
      error: {
        status: statusCode,
        message: error.message,
        stack: error.stack,
      },
    };
  }

  if (body.data) {
    let accounts = body.data.listAccounts.items;
    
    let {matchedAccounts, matches} = calculate_matches(accounts);
    
    let failedMatches = []
    let successfulMatches = []
    
    for (var i = 0; i < matches.length; i++) {
      const match = matches[i]
      const variables = {
        "input": {
          "account_id_1": match.account_id_1,
          "account_id_2": match.account_id_2
        }
      }
      console.log(variables)
      let req_options = {
          method: "POST",
          headers: {
            "x-api-key": GRAPHQL_API_KEY,
          },
          body: JSON.stringify({ "query": mutation, "variables": variables }),
        }
      let mutation_request = new Request(GRAPHQL_ENDPOINT, req_options);
      try {
        let mutation_response = await fetch(mutation_request);
        console.log(mutation_response)
        body = await mutation_response.json();
        console.log(body)
        if (body.errors) statusCode = 400;
        successfulMatches.push(match)
      
      } catch (err) {
        console.log(err)
        error = err
        statusCode = 400;
        match.error = {
          status: statusCode,
          message: err.message,
          stack: err.stack,
        }    
        failedMatches.push(match)
      } 
      
    }
    body = { matchedAccounts: matchedAccounts, matches: matches, successfulMatches: successfulMatches, failedMatches: failedMatches };
  }

  return {
    statusCode,
    body: JSON.stringify(body),
    error: error
  };
};