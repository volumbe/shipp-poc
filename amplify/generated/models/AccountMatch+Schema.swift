// swiftlint:disable all
import Amplify
import Foundation

extension AccountMatch {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case account
    case match
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let accountMatch = AccountMatch.keys
    
    model.pluralName = "AccountMatches"
    
    model.attributes(
      .index(fields: ["accountId"], name: "byAccount"),
      .index(fields: ["matchId"], name: "byMatch"),
      .primaryKey(fields: [accountMatch.id])
    )
    
    model.fields(
      .field(accountMatch.id, is: .required, ofType: .string),
      .belongsTo(accountMatch.account, is: .required, ofType: Account.self, targetNames: ["accountId"]),
      .belongsTo(accountMatch.match, is: .required, ofType: Match.self, targetNames: ["matchId"]),
      .field(accountMatch.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(accountMatch.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}

extension AccountMatch: ModelIdentifiable {
  public typealias IdentifierFormat = ModelIdentifierFormat.Default
  public typealias IdentifierProtocol = DefaultModelIdentifier<Self>
}