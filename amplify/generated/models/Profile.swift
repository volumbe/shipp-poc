// swiftlint:disable all
import Amplify
import Foundation

public struct Profile: Model {
  public let id: String
  public var birth_date: Temporal.Date
  public var ethnicities: [String]
  public var sexuality: String
  public var politics: String
  public var prompt_1: Prompt?
  public var prompt_2: Prompt?
  public var prompt_3: Prompt?
  public var prompt_4: Prompt?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      birth_date: Temporal.Date,
      ethnicities: [String] = [],
      sexuality: String,
      politics: String,
      prompt_1: Prompt? = nil,
      prompt_2: Prompt? = nil,
      prompt_3: Prompt? = nil,
      prompt_4: Prompt? = nil) {
    self.init(id: id,
      birth_date: birth_date,
      ethnicities: ethnicities,
      sexuality: sexuality,
      politics: politics,
      prompt_1: prompt_1,
      prompt_2: prompt_2,
      prompt_3: prompt_3,
      prompt_4: prompt_4,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      birth_date: Temporal.Date,
      ethnicities: [String] = [],
      sexuality: String,
      politics: String,
      prompt_1: Prompt? = nil,
      prompt_2: Prompt? = nil,
      prompt_3: Prompt? = nil,
      prompt_4: Prompt? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.birth_date = birth_date
      self.ethnicities = ethnicities
      self.sexuality = sexuality
      self.politics = politics
      self.prompt_1 = prompt_1
      self.prompt_2 = prompt_2
      self.prompt_3 = prompt_3
      self.prompt_4 = prompt_4
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}