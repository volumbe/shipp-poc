// swiftlint:disable all
import Amplify
import Foundation

public struct Profile: Model {
  public let id: String
  public var birth_date: Temporal.Date
  public var ethnicities: [String?]?
  public var sexuality: String?
  public var politics: String?
  public var about_prompt_1: String?
  public var about_prompt_2: String?
  public var weekly_prompt_1: String?
  public var weekly_prompt_2: String?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      birth_date: Temporal.Date,
      ethnicities: [String?]? = nil,
      sexuality: String? = nil,
      politics: String? = nil,
      about_prompt_1: String? = nil,
      about_prompt_2: String? = nil,
      weekly_prompt_1: String? = nil,
      weekly_prompt_2: String? = nil) {
    self.init(id: id,
      birth_date: birth_date,
      ethnicities: ethnicities,
      sexuality: sexuality,
      politics: politics,
      about_prompt_1: about_prompt_1,
      about_prompt_2: about_prompt_2,
      weekly_prompt_1: weekly_prompt_1,
      weekly_prompt_2: weekly_prompt_2,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      birth_date: Temporal.Date,
      ethnicities: [String?]? = nil,
      sexuality: String? = nil,
      politics: String? = nil,
      about_prompt_1: String? = nil,
      about_prompt_2: String? = nil,
      weekly_prompt_1: String? = nil,
      weekly_prompt_2: String? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.birth_date = birth_date
      self.ethnicities = ethnicities
      self.sexuality = sexuality
      self.politics = politics
      self.about_prompt_1 = about_prompt_1
      self.about_prompt_2 = about_prompt_2
      self.weekly_prompt_1 = weekly_prompt_1
      self.weekly_prompt_2 = weekly_prompt_2
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}