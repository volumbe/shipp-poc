// swiftlint:disable all
import Amplify
import Foundation

extension Account: Hashable {
        
    public var identifier: String {
         return user_id
     }
     
     public func hash(into hasher: inout Hasher) {
         return hasher.combine(identifier)
     }
    
    public static func == (lhs: Account, rhs: Account) -> Bool {
        return lhs.user_id == rhs.user_id
    }
    
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case user_id
    case first_name
    case last_name
    case is_discoverable
    case profile
    case location
    case current_match
    case createdAt
    case updatedAt
    case accountProfileId
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let account = Account.keys
    
    model.authRules = [
      rule(allow: .public, operations: [.create, .update, .delete, .read]),
      rule(allow: .private, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "Accounts"
    
    model.attributes(
      .primaryKey(fields: [account.id])
    )
    
    model.fields(
      .field(account.id, is: .required, ofType: .string),
      .field(account.user_id, is: .required, ofType: .string),
      .field(account.first_name, is: .required, ofType: .string),
      .field(account.last_name, is: .required, ofType: .string),
      .field(account.is_discoverable, is: .required, ofType: .bool),
      .hasOne(account.profile, is: .optional, ofType: Profile.self, associatedWith: Profile.keys.id, targetNames: ["accountProfileId"]),
      .field(account.location, is: .optional, ofType: .embedded(type: Location.self)),
      .field(account.current_match, is: .optional, ofType: .string),
      .field(account.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(account.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(account.accountProfileId, is: .optional, ofType: .string)
    )
    }
}

extension Account: ModelIdentifiable {
  public typealias IdentifierFormat = ModelIdentifierFormat.Default
  public typealias IdentifierProtocol = DefaultModelIdentifier<Self>
}
