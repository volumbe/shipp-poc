const { default: fetch, Request } = require("node-fetch");
const awsServerlessExpress = require("aws-serverless-express");
const GRAPHQL_ENDPOINT =
  "https://qmuxztiplrcaxefujag4xdx4tq.appsync-api.us-east-1.amazonaws.com/graphql";
const GRAPHQL_API_KEY = "da2-7acuw3rtdzgkbigwnzx5qzay5a";

const query = /* GraphQL */ `
  query LIST_MATCHES {
    listMatches {
      items {
        id
        account_id_1
        account_id_2
        accounts {
          items {
            account {
              id
            }
          }
        }
      }
    }
  }
`;

const query_options = {
  method: "POST",
  headers: {
    "x-api-key": GRAPHQL_API_KEY,
  },
  body: JSON.stringify({ query }),
};

const mutation = `
mutation MyMutation(
  $accountMatch1: CreateAccountMatchInput!,
  $accountMatch2: CreateAccountMatchInput!,
  $accountUpdate1: UpdateAccountInput!,
  $accountUpdate2: UpdateAccountInput!) {
  addOne: createAccountMatch(input: $accountMatch1) {
    id
  }
  addTwo: createAccountMatch(input: $accountMatch2) {
    id
  }
  updateOne: updateAccount(input: $accountUpdate1) {
    Matches {
      items {
        id
        match {
          account_id_1
          account_id_2
          id
        }
      }
    }
  }
  updateTwo: updateAccount(input: $accountUpdate2) {
    Matches {
      items {
        id
        match {
          account_id_1
          account_id_2
          id
        }
      }
    }
  }
}
`;

const mutation_options = (variables) => {
  return {
    method: "POST",
    headers: {
      "x-api-key": GRAPHQL_API_KEY,
    },
    body: JSON.stringify({ "query": mutation, "variables": variables }),
  }
}

/** For each match
 *  1. Get full model for each account
 *  2. Calculate match deadline
 *  3. Update match model with accounts, match_deadline
 *  4. Post match update
 *
 * /

/**
 * @type {import('@types/aws-lambda').APIGatewayProxyHandler}
 */

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
    let matches = body.data.listMatches.items;
        
    let failedMatches = []
    let successfulMatches = []
    
    for (var i = 0; i < matches.length; i++) {
      const match = matches[i]
      const variables = {
        "accountMatch1": {
          "accountId": match.account_id_1,
          "matchId": match.id
        },
        "accountMatch2": {
          "accountId": match.account_id_2,
          "matchId": match.id
        },
        "accountUpdate1": {
          "id": match.account_id_1,
          "current_match": match.id
        },
        "accountUpdate2": {
          "id": match.account_id_2,
          "current_match": match.id
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
    body = {matches: matches, successfulMatches: successfulMatches, failedMatches: failedMatches };
  }

  return {
    statusCode,
    body: JSON.stringify(body),
    error: error
  };
};