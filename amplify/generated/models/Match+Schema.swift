// swiftlint:disable all
import Amplify
import Foundation

extension Match {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case account_id_1
    case account_id_2
    case accepted_by_1
    case accepted_by_2
    case cancelled
    case cancelled_id
    case arrived_1
    case arrived_2
    case met
    case feedback_1
    case feedback_2
    case accounts
    case match_deadline
    case meetup_deadline
    case location
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let match = Match.keys
    
    model.authRules = [
      rule(allow: .public, operations: [.create, .update, .delete, .read]),
      rule(allow: .private, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "Matches"
    
    model.attributes(
      .primaryKey(fields: [match.id])
    )
    
    model.fields(
      .field(match.id, is: .required, ofType: .string),
      .field(match.account_id_1, is: .required, ofType: .string),
      .field(match.account_id_2, is: .required, ofType: .string),
      .field(match.accepted_by_1, is: .optional, ofType: .bool),
      .field(match.accepted_by_2, is: .optional, ofType: .bool),
      .field(match.cancelled, is: .optional, ofType: .bool),
      .field(match.cancelled_id, is: .optional, ofType: .string),
      .field(match.arrived_1, is: .optional, ofType: .bool),
      .field(match.arrived_2, is: .optional, ofType: .bool),
      .field(match.met, is: .optional, ofType: .bool),
      .field(match.feedback_1, is: .optional, ofType: .string),
      .field(match.feedback_2, is: .optional, ofType: .string),
      .hasMany(match.accounts, is: .optional, ofType: AccountMatch.self, associatedWith: AccountMatch.keys.match),
      .field(match.match_deadline, is: .optional, ofType: .dateTime),
      .field(match.meetup_deadline, is: .optional, ofType: .dateTime),
      .field(match.location, is: .optional, ofType: .embedded(type: Location.self)),
      .field(match.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(match.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}

extension Match: ModelIdentifiable {
  public typealias IdentifierFormat = ModelIdentifierFormat.Default
  public typealias IdentifierProtocol = DefaultModelIdentifier<Self>
}