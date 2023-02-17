// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "45da4ac62b3984f1d576e578b2a686bc"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Account.self)
    ModelRegistry.register(modelType: Profile.self)
    ModelRegistry.register(modelType: Match.self)
    ModelRegistry.register(modelType: AccountMatch.self)
  }
}