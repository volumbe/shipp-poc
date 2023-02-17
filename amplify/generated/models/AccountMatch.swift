// swiftlint:disable all
import Amplify
import Foundation

public struct AccountMatch: Model {
  public let id: String
  public var account: Account
  public var match: Match
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      account: Account,
      match: Match) {
    self.init(id: id,
      account: account,
      match: match,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      account: Account,
      match: Match,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.account = account
      self.match = match
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}