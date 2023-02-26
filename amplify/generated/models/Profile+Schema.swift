// swiftlint:disable all
import Amplify
import Foundation

extension Profile {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case birth_date
    case ethnicities
    case sexuality
    case politics
    case prompt_1
    case prompt_2
    case prompt_3
    case prompt_4
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let profile = Profile.keys
    
    model.authRules = [
      rule(allow: .public, operations: [.create, .update, .delete, .read]),
      rule(allow: .private, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "Profiles"
    
    model.attributes(
      .primaryKey(fields: [profile.id])
    )
    
    model.fields(
      .field(profile.id, is: .required, ofType: .string),
      .field(profile.birth_date, is: .required, ofType: .date),
      .field(profile.ethnicities, is: .required, ofType: .embeddedCollection(of: String.self)),
      .field(profile.sexuality, is: .required, ofType: .string),
      .field(profile.politics, is: .required, ofType: .string),
      .field(profile.prompt_1, is: .optional, ofType: .embedded(type: Prompt.self)),
      .field(profile.prompt_2, is: .optional, ofType: .embedded(type: Prompt.self)),
      .field(profile.prompt_3, is: .optional, ofType: .embedded(type: Prompt.self)),
      .field(profile.prompt_4, is: .optional, ofType: .embedded(type: Prompt.self)),
      .field(profile.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(profile.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}

extension Profile: ModelIdentifiable {
  public typealias IdentifierFormat = ModelIdentifierFormat.Default
  public typealias IdentifierProtocol = DefaultModelIdentifier<Self>
}