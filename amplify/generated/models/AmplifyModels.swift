// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "e8980a0366977d7b8209e7a7eec2950d"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Account.self)
    ModelRegistry.register(modelType: Profile.self)
    ModelRegistry.register(modelType: Match.self)
  }
}