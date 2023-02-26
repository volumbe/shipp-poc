// swiftlint:disable all
import Amplify
import Foundation

public struct Match: Model {
  public let id: String
  public var account_id_1: String
  public var account_id_2: String
  public var accepted_by_1: Bool?
  public var accepted_by_2: Bool?
  public var cancelled: Bool?
  public var cancelled_id: String?
  public var arrived_1: Bool?
  public var arrived_2: Bool?
  public var met: Bool?
  public var feedback_1: String?
  public var feedback_2: String?
  public var match_deadline: Temporal.DateTime?
  public var meetup_deadline: Temporal.DateTime?
  public var location: Location?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      account_id_1: String,
      account_id_2: String,
      accepted_by_1: Bool? = nil,
      accepted_by_2: Bool? = nil,
      cancelled: Bool? = nil,
      cancelled_id: String? = nil,
      arrived_1: Bool? = nil,
      arrived_2: Bool? = nil,
      met: Bool? = nil,
      feedback_1: String? = nil,
      feedback_2: String? = nil,
      match_deadline: Temporal.DateTime? = nil,
      meetup_deadline: Temporal.DateTime? = nil,
      location: Location? = nil) {
    self.init(id: id,
      account_id_1: account_id_1,
      account_id_2: account_id_2,
      accepted_by_1: accepted_by_1,
      accepted_by_2: accepted_by_2,
      cancelled: cancelled,
      cancelled_id: cancelled_id,
      arrived_1: arrived_1,
      arrived_2: arrived_2,
      met: met,
      feedback_1: feedback_1,
      feedback_2: feedback_2,
      match_deadline: match_deadline,
      meetup_deadline: meetup_deadline,
      location: location,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      account_id_1: String,
      account_id_2: String,
      accepted_by_1: Bool? = nil,
      accepted_by_2: Bool? = nil,
      cancelled: Bool? = nil,
      cancelled_id: String? = nil,
      arrived_1: Bool? = nil,
      arrived_2: Bool? = nil,
      met: Bool? = nil,
      feedback_1: String? = nil,
      feedback_2: String? = nil,
      match_deadline: Temporal.DateTime? = nil,
      meetup_deadline: Temporal.DateTime? = nil,
      location: Location? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.account_id_1 = account_id_1
      self.account_id_2 = account_id_2
      self.accepted_by_1 = accepted_by_1
      self.accepted_by_2 = accepted_by_2
      self.cancelled = cancelled
      self.cancelled_id = cancelled_id
      self.arrived_1 = arrived_1
      self.arrived_2 = arrived_2
      self.met = met
      self.feedback_1 = feedback_1
      self.feedback_2 = feedback_2
      self.match_deadline = match_deadline
      self.meetup_deadline = meetup_deadline
      self.location = location
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}