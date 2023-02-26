// swiftlint:disable all
import Amplify
import Foundation

public struct Account: Model {
  public let id: String
  public var user_id: String
  public var first_name: String
  public var last_name: String
  public var is_discoverable: Bool
  public var profile: Profile?
  public var location: Location?
  public var current_match: String?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  public var accountProfileId: String?
  
  public init(id: String = UUID().uuidString,
      user_id: String,
      first_name: String,
      last_name: String,
      is_discoverable: Bool,
      profile: Profile? = nil,
      location: Location? = nil,
      current_match: String? = nil,
      accountProfileId: String? = nil) {
    self.init(id: id,
      user_id: user_id,
      first_name: first_name,
      last_name: last_name,
      is_discoverable: is_discoverable,
      profile: profile,
      location: location,
      current_match: current_match,
      createdAt: nil,
      updatedAt: nil,
      accountProfileId: accountProfileId)
  }
  internal init(id: String = UUID().uuidString,
      user_id: String,
      first_name: String,
      last_name: String,
      is_discoverable: Bool,
      profile: Profile? = nil,
      location: Location? = nil,
      current_match: String? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil,
      accountProfileId: String? = nil) {
      self.id = id
      self.user_id = user_id
      self.first_name = first_name
      self.last_name = last_name
      self.is_discoverable = is_discoverable
      self.profile = profile
      self.location = location
      self.current_match = current_match
      self.createdAt = createdAt
      self.updatedAt = updatedAt
      self.accountProfileId = accountProfileId
  }
}