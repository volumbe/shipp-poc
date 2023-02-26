// swiftlint:disable all
import Amplify
import Foundation

extension Prompt {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case title
    case response
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let prompt = Prompt.keys
    
    model.pluralName = "Prompts"
    
    model.fields(
      .field(prompt.title, is: .required, ofType: .string),
      .field(prompt.response, is: .required, ofType: .string)
    )
    }
}