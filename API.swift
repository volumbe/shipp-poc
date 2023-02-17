//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateAccountInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, userId: String, firstName: String, lastName: String, isDiscoverable: Bool, location: LocationInput? = nil, version: Int? = nil, accountProfileId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "user_id": userId, "first_name": firstName, "last_name": lastName, "is_discoverable": isDiscoverable, "location": location, "_version": version, "accountProfileId": accountProfileId]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["user_id"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "user_id")
    }
  }

  public var firstName: String {
    get {
      return graphQLMap["first_name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "first_name")
    }
  }

  public var lastName: String {
    get {
      return graphQLMap["last_name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "last_name")
    }
  }

  public var isDiscoverable: Bool {
    get {
      return graphQLMap["is_discoverable"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "is_discoverable")
    }
  }

  public var location: LocationInput? {
    get {
      return graphQLMap["location"] as! LocationInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "location")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }

  public var accountProfileId: GraphQLID? {
    get {
      return graphQLMap["accountProfileId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accountProfileId")
    }
  }
}

public struct LocationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(latitude: Double, longitude: Double) {
    graphQLMap = ["Latitude": latitude, "Longitude": longitude]
  }

  public var latitude: Double {
    get {
      return graphQLMap["Latitude"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Latitude")
    }
  }

  public var longitude: Double {
    get {
      return graphQLMap["Longitude"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Longitude")
    }
  }
}

public struct ModelAccountConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(userId: ModelStringInput? = nil, firstName: ModelStringInput? = nil, lastName: ModelStringInput? = nil, isDiscoverable: ModelBooleanInput? = nil, and: [ModelAccountConditionInput?]? = nil, or: [ModelAccountConditionInput?]? = nil, not: ModelAccountConditionInput? = nil, accountProfileId: ModelIDInput? = nil) {
    graphQLMap = ["user_id": userId, "first_name": firstName, "last_name": lastName, "is_discoverable": isDiscoverable, "and": and, "or": or, "not": not, "accountProfileId": accountProfileId]
  }

  public var userId: ModelStringInput? {
    get {
      return graphQLMap["user_id"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "user_id")
    }
  }

  public var firstName: ModelStringInput? {
    get {
      return graphQLMap["first_name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "first_name")
    }
  }

  public var lastName: ModelStringInput? {
    get {
      return graphQLMap["last_name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "last_name")
    }
  }

  public var isDiscoverable: ModelBooleanInput? {
    get {
      return graphQLMap["is_discoverable"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "is_discoverable")
    }
  }

  public var and: [ModelAccountConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelAccountConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelAccountConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelAccountConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelAccountConditionInput? {
    get {
      return graphQLMap["not"] as! ModelAccountConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }

  public var accountProfileId: ModelIDInput? {
    get {
      return graphQLMap["accountProfileId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accountProfileId")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelBooleanInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Bool? = nil, eq: Bool? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Bool? {
    get {
      return graphQLMap["ne"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Bool? {
    get {
      return graphQLMap["eq"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct UpdateAccountInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, userId: String? = nil, firstName: String? = nil, lastName: String? = nil, isDiscoverable: Bool? = nil, location: LocationInput? = nil, version: Int? = nil, accountProfileId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "user_id": userId, "first_name": firstName, "last_name": lastName, "is_discoverable": isDiscoverable, "location": location, "_version": version, "accountProfileId": accountProfileId]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String? {
    get {
      return graphQLMap["user_id"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "user_id")
    }
  }

  public var firstName: String? {
    get {
      return graphQLMap["first_name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "first_name")
    }
  }

  public var lastName: String? {
    get {
      return graphQLMap["last_name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "last_name")
    }
  }

  public var isDiscoverable: Bool? {
    get {
      return graphQLMap["is_discoverable"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "is_discoverable")
    }
  }

  public var location: LocationInput? {
    get {
      return graphQLMap["location"] as! LocationInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "location")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }

  public var accountProfileId: GraphQLID? {
    get {
      return graphQLMap["accountProfileId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accountProfileId")
    }
  }
}

public struct DeleteAccountInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, version: Int? = nil) {
    graphQLMap = ["id": id, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct CreateProfileInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var birthDate: String {
    get {
      return graphQLMap["birth_date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "birth_date")
    }
  }

  public var ethnicities: [String?]? {
    get {
      return graphQLMap["ethnicities"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ethnicities")
    }
  }

  public var sexuality: String? {
    get {
      return graphQLMap["sexuality"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sexuality")
    }
  }

  public var politics: String? {
    get {
      return graphQLMap["politics"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "politics")
    }
  }

  public var aboutPrompt_1: String? {
    get {
      return graphQLMap["about_prompt_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "about_prompt_1")
    }
  }

  public var aboutPrompt_2: String? {
    get {
      return graphQLMap["about_prompt_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "about_prompt_2")
    }
  }

  public var weeklyPrompt_1: String? {
    get {
      return graphQLMap["weekly_prompt_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weekly_prompt_1")
    }
  }

  public var weeklyPrompt_2: String? {
    get {
      return graphQLMap["weekly_prompt_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weekly_prompt_2")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct ModelProfileConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(birthDate: ModelStringInput? = nil, ethnicities: ModelStringInput? = nil, sexuality: ModelStringInput? = nil, politics: ModelStringInput? = nil, aboutPrompt_1: ModelStringInput? = nil, aboutPrompt_2: ModelStringInput? = nil, weeklyPrompt_1: ModelStringInput? = nil, weeklyPrompt_2: ModelStringInput? = nil, and: [ModelProfileConditionInput?]? = nil, or: [ModelProfileConditionInput?]? = nil, not: ModelProfileConditionInput? = nil) {
    graphQLMap = ["birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "and": and, "or": or, "not": not]
  }

  public var birthDate: ModelStringInput? {
    get {
      return graphQLMap["birth_date"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "birth_date")
    }
  }

  public var ethnicities: ModelStringInput? {
    get {
      return graphQLMap["ethnicities"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ethnicities")
    }
  }

  public var sexuality: ModelStringInput? {
    get {
      return graphQLMap["sexuality"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sexuality")
    }
  }

  public var politics: ModelStringInput? {
    get {
      return graphQLMap["politics"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "politics")
    }
  }

  public var aboutPrompt_1: ModelStringInput? {
    get {
      return graphQLMap["about_prompt_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "about_prompt_1")
    }
  }

  public var aboutPrompt_2: ModelStringInput? {
    get {
      return graphQLMap["about_prompt_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "about_prompt_2")
    }
  }

  public var weeklyPrompt_1: ModelStringInput? {
    get {
      return graphQLMap["weekly_prompt_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weekly_prompt_1")
    }
  }

  public var weeklyPrompt_2: ModelStringInput? {
    get {
      return graphQLMap["weekly_prompt_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weekly_prompt_2")
    }
  }

  public var and: [ModelProfileConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelProfileConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelProfileConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelProfileConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelProfileConditionInput? {
    get {
      return graphQLMap["not"] as! ModelProfileConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateProfileInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, birthDate: String? = nil, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var birthDate: String? {
    get {
      return graphQLMap["birth_date"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "birth_date")
    }
  }

  public var ethnicities: [String?]? {
    get {
      return graphQLMap["ethnicities"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ethnicities")
    }
  }

  public var sexuality: String? {
    get {
      return graphQLMap["sexuality"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sexuality")
    }
  }

  public var politics: String? {
    get {
      return graphQLMap["politics"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "politics")
    }
  }

  public var aboutPrompt_1: String? {
    get {
      return graphQLMap["about_prompt_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "about_prompt_1")
    }
  }

  public var aboutPrompt_2: String? {
    get {
      return graphQLMap["about_prompt_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "about_prompt_2")
    }
  }

  public var weeklyPrompt_1: String? {
    get {
      return graphQLMap["weekly_prompt_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weekly_prompt_1")
    }
  }

  public var weeklyPrompt_2: String? {
    get {
      return graphQLMap["weekly_prompt_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weekly_prompt_2")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct DeleteProfileInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, version: Int? = nil) {
    graphQLMap = ["id": id, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct CreateMatchInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, accountId_1: String, accountId_2: String, acceptedBy_1: Bool? = nil, acceptedBy_2: Bool? = nil, cancelled: Bool? = nil, cancelledId: String? = nil, arrived_1: Bool? = nil, arrived_2: Bool? = nil, met: Bool? = nil, feedback_1: String? = nil, feedback_2: String? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "account_id_1": accountId_1, "account_id_2": accountId_2, "accepted_by_1": acceptedBy_1, "accepted_by_2": acceptedBy_2, "cancelled": cancelled, "cancelled_id": cancelledId, "arrived_1": arrived_1, "arrived_2": arrived_2, "met": met, "feedback_1": feedback_1, "feedback_2": feedback_2, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var accountId_1: String {
    get {
      return graphQLMap["account_id_1"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "account_id_1")
    }
  }

  public var accountId_2: String {
    get {
      return graphQLMap["account_id_2"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "account_id_2")
    }
  }

  public var acceptedBy_1: Bool? {
    get {
      return graphQLMap["accepted_by_1"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accepted_by_1")
    }
  }

  public var acceptedBy_2: Bool? {
    get {
      return graphQLMap["accepted_by_2"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accepted_by_2")
    }
  }

  public var cancelled: Bool? {
    get {
      return graphQLMap["cancelled"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cancelled")
    }
  }

  public var cancelledId: String? {
    get {
      return graphQLMap["cancelled_id"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cancelled_id")
    }
  }

  public var arrived_1: Bool? {
    get {
      return graphQLMap["arrived_1"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "arrived_1")
    }
  }

  public var arrived_2: Bool? {
    get {
      return graphQLMap["arrived_2"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "arrived_2")
    }
  }

  public var met: Bool? {
    get {
      return graphQLMap["met"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "met")
    }
  }

  public var feedback_1: String? {
    get {
      return graphQLMap["feedback_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "feedback_1")
    }
  }

  public var feedback_2: String? {
    get {
      return graphQLMap["feedback_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "feedback_2")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct ModelMatchConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(accountId_1: ModelStringInput? = nil, accountId_2: ModelStringInput? = nil, acceptedBy_1: ModelBooleanInput? = nil, acceptedBy_2: ModelBooleanInput? = nil, cancelled: ModelBooleanInput? = nil, cancelledId: ModelStringInput? = nil, arrived_1: ModelBooleanInput? = nil, arrived_2: ModelBooleanInput? = nil, met: ModelBooleanInput? = nil, feedback_1: ModelStringInput? = nil, feedback_2: ModelStringInput? = nil, and: [ModelMatchConditionInput?]? = nil, or: [ModelMatchConditionInput?]? = nil, not: ModelMatchConditionInput? = nil) {
    graphQLMap = ["account_id_1": accountId_1, "account_id_2": accountId_2, "accepted_by_1": acceptedBy_1, "accepted_by_2": acceptedBy_2, "cancelled": cancelled, "cancelled_id": cancelledId, "arrived_1": arrived_1, "arrived_2": arrived_2, "met": met, "feedback_1": feedback_1, "feedback_2": feedback_2, "and": and, "or": or, "not": not]
  }

  public var accountId_1: ModelStringInput? {
    get {
      return graphQLMap["account_id_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "account_id_1")
    }
  }

  public var accountId_2: ModelStringInput? {
    get {
      return graphQLMap["account_id_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "account_id_2")
    }
  }

  public var acceptedBy_1: ModelBooleanInput? {
    get {
      return graphQLMap["accepted_by_1"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accepted_by_1")
    }
  }

  public var acceptedBy_2: ModelBooleanInput? {
    get {
      return graphQLMap["accepted_by_2"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accepted_by_2")
    }
  }

  public var cancelled: ModelBooleanInput? {
    get {
      return graphQLMap["cancelled"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cancelled")
    }
  }

  public var cancelledId: ModelStringInput? {
    get {
      return graphQLMap["cancelled_id"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cancelled_id")
    }
  }

  public var arrived_1: ModelBooleanInput? {
    get {
      return graphQLMap["arrived_1"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "arrived_1")
    }
  }

  public var arrived_2: ModelBooleanInput? {
    get {
      return graphQLMap["arrived_2"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "arrived_2")
    }
  }

  public var met: ModelBooleanInput? {
    get {
      return graphQLMap["met"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "met")
    }
  }

  public var feedback_1: ModelStringInput? {
    get {
      return graphQLMap["feedback_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "feedback_1")
    }
  }

  public var feedback_2: ModelStringInput? {
    get {
      return graphQLMap["feedback_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "feedback_2")
    }
  }

  public var and: [ModelMatchConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMatchConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMatchConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMatchConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMatchConditionInput? {
    get {
      return graphQLMap["not"] as! ModelMatchConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateMatchInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, accountId_1: String? = nil, accountId_2: String? = nil, acceptedBy_1: Bool? = nil, acceptedBy_2: Bool? = nil, cancelled: Bool? = nil, cancelledId: String? = nil, arrived_1: Bool? = nil, arrived_2: Bool? = nil, met: Bool? = nil, feedback_1: String? = nil, feedback_2: String? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "account_id_1": accountId_1, "account_id_2": accountId_2, "accepted_by_1": acceptedBy_1, "accepted_by_2": acceptedBy_2, "cancelled": cancelled, "cancelled_id": cancelledId, "arrived_1": arrived_1, "arrived_2": arrived_2, "met": met, "feedback_1": feedback_1, "feedback_2": feedback_2, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var accountId_1: String? {
    get {
      return graphQLMap["account_id_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "account_id_1")
    }
  }

  public var accountId_2: String? {
    get {
      return graphQLMap["account_id_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "account_id_2")
    }
  }

  public var acceptedBy_1: Bool? {
    get {
      return graphQLMap["accepted_by_1"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accepted_by_1")
    }
  }

  public var acceptedBy_2: Bool? {
    get {
      return graphQLMap["accepted_by_2"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accepted_by_2")
    }
  }

  public var cancelled: Bool? {
    get {
      return graphQLMap["cancelled"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cancelled")
    }
  }

  public var cancelledId: String? {
    get {
      return graphQLMap["cancelled_id"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cancelled_id")
    }
  }

  public var arrived_1: Bool? {
    get {
      return graphQLMap["arrived_1"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "arrived_1")
    }
  }

  public var arrived_2: Bool? {
    get {
      return graphQLMap["arrived_2"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "arrived_2")
    }
  }

  public var met: Bool? {
    get {
      return graphQLMap["met"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "met")
    }
  }

  public var feedback_1: String? {
    get {
      return graphQLMap["feedback_1"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "feedback_1")
    }
  }

  public var feedback_2: String? {
    get {
      return graphQLMap["feedback_2"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "feedback_2")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct DeleteMatchInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, version: Int? = nil) {
    graphQLMap = ["id": id, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct ModelAccountFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, userId: ModelStringInput? = nil, firstName: ModelStringInput? = nil, lastName: ModelStringInput? = nil, isDiscoverable: ModelBooleanInput? = nil, and: [ModelAccountFilterInput?]? = nil, or: [ModelAccountFilterInput?]? = nil, not: ModelAccountFilterInput? = nil, accountProfileId: ModelIDInput? = nil) {
    graphQLMap = ["id": id, "user_id": userId, "first_name": firstName, "last_name": lastName, "is_discoverable": isDiscoverable, "and": and, "or": or, "not": not, "accountProfileId": accountProfileId]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: ModelStringInput? {
    get {
      return graphQLMap["user_id"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "user_id")
    }
  }

  public var firstName: ModelStringInput? {
    get {
      return graphQLMap["first_name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "first_name")
    }
  }

  public var lastName: ModelStringInput? {
    get {
      return graphQLMap["last_name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "last_name")
    }
  }

  public var isDiscoverable: ModelBooleanInput? {
    get {
      return graphQLMap["is_discoverable"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "is_discoverable")
    }
  }

  public var and: [ModelAccountFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelAccountFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelAccountFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelAccountFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelAccountFilterInput? {
    get {
      return graphQLMap["not"] as! ModelAccountFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }

  public var accountProfileId: ModelIDInput? {
    get {
      return graphQLMap["accountProfileId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accountProfileId")
    }
  }
}

public struct ModelProfileFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, birthDate: ModelStringInput? = nil, ethnicities: ModelStringInput? = nil, sexuality: ModelStringInput? = nil, politics: ModelStringInput? = nil, aboutPrompt_1: ModelStringInput? = nil, aboutPrompt_2: ModelStringInput? = nil, weeklyPrompt_1: ModelStringInput? = nil, weeklyPrompt_2: ModelStringInput? = nil, and: [ModelProfileFilterInput?]? = nil, or: [ModelProfileFilterInput?]? = nil, not: ModelProfileFilterInput? = nil) {
    graphQLMap = ["id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var birthDate: ModelStringInput? {
    get {
      return graphQLMap["birth_date"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "birth_date")
    }
  }

  public var ethnicities: ModelStringInput? {
    get {
      return graphQLMap["ethnicities"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ethnicities")
    }
  }

  public var sexuality: ModelStringInput? {
    get {
      return graphQLMap["sexuality"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sexuality")
    }
  }

  public var politics: ModelStringInput? {
    get {
      return graphQLMap["politics"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "politics")
    }
  }

  public var aboutPrompt_1: ModelStringInput? {
    get {
      return graphQLMap["about_prompt_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "about_prompt_1")
    }
  }

  public var aboutPrompt_2: ModelStringInput? {
    get {
      return graphQLMap["about_prompt_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "about_prompt_2")
    }
  }

  public var weeklyPrompt_1: ModelStringInput? {
    get {
      return graphQLMap["weekly_prompt_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weekly_prompt_1")
    }
  }

  public var weeklyPrompt_2: ModelStringInput? {
    get {
      return graphQLMap["weekly_prompt_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weekly_prompt_2")
    }
  }

  public var and: [ModelProfileFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelProfileFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelProfileFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelProfileFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelProfileFilterInput? {
    get {
      return graphQLMap["not"] as! ModelProfileFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelMatchFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, accountId_1: ModelStringInput? = nil, accountId_2: ModelStringInput? = nil, acceptedBy_1: ModelBooleanInput? = nil, acceptedBy_2: ModelBooleanInput? = nil, cancelled: ModelBooleanInput? = nil, cancelledId: ModelStringInput? = nil, arrived_1: ModelBooleanInput? = nil, arrived_2: ModelBooleanInput? = nil, met: ModelBooleanInput? = nil, feedback_1: ModelStringInput? = nil, feedback_2: ModelStringInput? = nil, and: [ModelMatchFilterInput?]? = nil, or: [ModelMatchFilterInput?]? = nil, not: ModelMatchFilterInput? = nil) {
    graphQLMap = ["id": id, "account_id_1": accountId_1, "account_id_2": accountId_2, "accepted_by_1": acceptedBy_1, "accepted_by_2": acceptedBy_2, "cancelled": cancelled, "cancelled_id": cancelledId, "arrived_1": arrived_1, "arrived_2": arrived_2, "met": met, "feedback_1": feedback_1, "feedback_2": feedback_2, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var accountId_1: ModelStringInput? {
    get {
      return graphQLMap["account_id_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "account_id_1")
    }
  }

  public var accountId_2: ModelStringInput? {
    get {
      return graphQLMap["account_id_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "account_id_2")
    }
  }

  public var acceptedBy_1: ModelBooleanInput? {
    get {
      return graphQLMap["accepted_by_1"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accepted_by_1")
    }
  }

  public var acceptedBy_2: ModelBooleanInput? {
    get {
      return graphQLMap["accepted_by_2"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accepted_by_2")
    }
  }

  public var cancelled: ModelBooleanInput? {
    get {
      return graphQLMap["cancelled"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cancelled")
    }
  }

  public var cancelledId: ModelStringInput? {
    get {
      return graphQLMap["cancelled_id"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cancelled_id")
    }
  }

  public var arrived_1: ModelBooleanInput? {
    get {
      return graphQLMap["arrived_1"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "arrived_1")
    }
  }

  public var arrived_2: ModelBooleanInput? {
    get {
      return graphQLMap["arrived_2"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "arrived_2")
    }
  }

  public var met: ModelBooleanInput? {
    get {
      return graphQLMap["met"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "met")
    }
  }

  public var feedback_1: ModelStringInput? {
    get {
      return graphQLMap["feedback_1"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "feedback_1")
    }
  }

  public var feedback_2: ModelStringInput? {
    get {
      return graphQLMap["feedback_2"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "feedback_2")
    }
  }

  public var and: [ModelMatchFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMatchFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMatchFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMatchFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMatchFilterInput? {
    get {
      return graphQLMap["not"] as! ModelMatchFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelSubscriptionAccountFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelSubscriptionIDInput? = nil, userId: ModelSubscriptionStringInput? = nil, firstName: ModelSubscriptionStringInput? = nil, lastName: ModelSubscriptionStringInput? = nil, isDiscoverable: ModelSubscriptionBooleanInput? = nil, and: [ModelSubscriptionAccountFilterInput?]? = nil, or: [ModelSubscriptionAccountFilterInput?]? = nil) {
    graphQLMap = ["id": id, "user_id": userId, "first_name": firstName, "last_name": lastName, "is_discoverable": isDiscoverable, "and": and, "or": or]
  }

  public var id: ModelSubscriptionIDInput? {
    get {
      return graphQLMap["id"] as! ModelSubscriptionIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["user_id"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "user_id")
    }
  }

  public var firstName: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["first_name"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "first_name")
    }
  }

  public var lastName: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["last_name"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "last_name")
    }
  }

  public var isDiscoverable: ModelSubscriptionBooleanInput? {
    get {
      return graphQLMap["is_discoverable"] as! ModelSubscriptionBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "is_discoverable")
    }
  }

  public var and: [ModelSubscriptionAccountFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSubscriptionAccountFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSubscriptionAccountFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSubscriptionAccountFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }
}

public struct ModelSubscriptionIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, `in`: [GraphQLID?]? = nil, notIn: [GraphQLID?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "in": `in`, "notIn": notIn]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var `in`: [GraphQLID?]? {
    get {
      return graphQLMap["in"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "in")
    }
  }

  public var notIn: [GraphQLID?]? {
    get {
      return graphQLMap["notIn"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notIn")
    }
  }
}

public struct ModelSubscriptionStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, `in`: [String?]? = nil, notIn: [String?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "in": `in`, "notIn": notIn]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var `in`: [String?]? {
    get {
      return graphQLMap["in"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "in")
    }
  }

  public var notIn: [String?]? {
    get {
      return graphQLMap["notIn"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notIn")
    }
  }
}

public struct ModelSubscriptionBooleanInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Bool? = nil, eq: Bool? = nil) {
    graphQLMap = ["ne": ne, "eq": eq]
  }

  public var ne: Bool? {
    get {
      return graphQLMap["ne"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Bool? {
    get {
      return graphQLMap["eq"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }
}

public struct ModelSubscriptionProfileFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelSubscriptionIDInput? = nil, birthDate: ModelSubscriptionStringInput? = nil, ethnicities: ModelSubscriptionStringInput? = nil, sexuality: ModelSubscriptionStringInput? = nil, politics: ModelSubscriptionStringInput? = nil, aboutPrompt_1: ModelSubscriptionStringInput? = nil, aboutPrompt_2: ModelSubscriptionStringInput? = nil, weeklyPrompt_1: ModelSubscriptionStringInput? = nil, weeklyPrompt_2: ModelSubscriptionStringInput? = nil, and: [ModelSubscriptionProfileFilterInput?]? = nil, or: [ModelSubscriptionProfileFilterInput?]? = nil) {
    graphQLMap = ["id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "and": and, "or": or]
  }

  public var id: ModelSubscriptionIDInput? {
    get {
      return graphQLMap["id"] as! ModelSubscriptionIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var birthDate: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["birth_date"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "birth_date")
    }
  }

  public var ethnicities: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["ethnicities"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ethnicities")
    }
  }

  public var sexuality: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["sexuality"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sexuality")
    }
  }

  public var politics: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["politics"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "politics")
    }
  }

  public var aboutPrompt_1: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["about_prompt_1"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "about_prompt_1")
    }
  }

  public var aboutPrompt_2: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["about_prompt_2"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "about_prompt_2")
    }
  }

  public var weeklyPrompt_1: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["weekly_prompt_1"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weekly_prompt_1")
    }
  }

  public var weeklyPrompt_2: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["weekly_prompt_2"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weekly_prompt_2")
    }
  }

  public var and: [ModelSubscriptionProfileFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSubscriptionProfileFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSubscriptionProfileFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSubscriptionProfileFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }
}

public struct ModelSubscriptionMatchFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelSubscriptionIDInput? = nil, accountId_1: ModelSubscriptionStringInput? = nil, accountId_2: ModelSubscriptionStringInput? = nil, acceptedBy_1: ModelSubscriptionBooleanInput? = nil, acceptedBy_2: ModelSubscriptionBooleanInput? = nil, cancelled: ModelSubscriptionBooleanInput? = nil, cancelledId: ModelSubscriptionStringInput? = nil, arrived_1: ModelSubscriptionBooleanInput? = nil, arrived_2: ModelSubscriptionBooleanInput? = nil, met: ModelSubscriptionBooleanInput? = nil, feedback_1: ModelSubscriptionStringInput? = nil, feedback_2: ModelSubscriptionStringInput? = nil, and: [ModelSubscriptionMatchFilterInput?]? = nil, or: [ModelSubscriptionMatchFilterInput?]? = nil) {
    graphQLMap = ["id": id, "account_id_1": accountId_1, "account_id_2": accountId_2, "accepted_by_1": acceptedBy_1, "accepted_by_2": acceptedBy_2, "cancelled": cancelled, "cancelled_id": cancelledId, "arrived_1": arrived_1, "arrived_2": arrived_2, "met": met, "feedback_1": feedback_1, "feedback_2": feedback_2, "and": and, "or": or]
  }

  public var id: ModelSubscriptionIDInput? {
    get {
      return graphQLMap["id"] as! ModelSubscriptionIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var accountId_1: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["account_id_1"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "account_id_1")
    }
  }

  public var accountId_2: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["account_id_2"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "account_id_2")
    }
  }

  public var acceptedBy_1: ModelSubscriptionBooleanInput? {
    get {
      return graphQLMap["accepted_by_1"] as! ModelSubscriptionBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accepted_by_1")
    }
  }

  public var acceptedBy_2: ModelSubscriptionBooleanInput? {
    get {
      return graphQLMap["accepted_by_2"] as! ModelSubscriptionBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "accepted_by_2")
    }
  }

  public var cancelled: ModelSubscriptionBooleanInput? {
    get {
      return graphQLMap["cancelled"] as! ModelSubscriptionBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cancelled")
    }
  }

  public var cancelledId: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["cancelled_id"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cancelled_id")
    }
  }

  public var arrived_1: ModelSubscriptionBooleanInput? {
    get {
      return graphQLMap["arrived_1"] as! ModelSubscriptionBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "arrived_1")
    }
  }

  public var arrived_2: ModelSubscriptionBooleanInput? {
    get {
      return graphQLMap["arrived_2"] as! ModelSubscriptionBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "arrived_2")
    }
  }

  public var met: ModelSubscriptionBooleanInput? {
    get {
      return graphQLMap["met"] as! ModelSubscriptionBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "met")
    }
  }

  public var feedback_1: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["feedback_1"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "feedback_1")
    }
  }

  public var feedback_2: ModelSubscriptionStringInput? {
    get {
      return graphQLMap["feedback_2"] as! ModelSubscriptionStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "feedback_2")
    }
  }

  public var and: [ModelSubscriptionMatchFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelSubscriptionMatchFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelSubscriptionMatchFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelSubscriptionMatchFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }
}

public final class CreateAccountMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateAccount($input: CreateAccountInput!, $condition: ModelAccountConditionInput) {\n  createAccount(input: $input, condition: $condition) {\n    __typename\n    id\n    user_id\n    first_name\n    last_name\n    is_discoverable\n    profile {\n      __typename\n      id\n      birth_date\n      ethnicities\n      sexuality\n      politics\n      about_prompt_1\n      about_prompt_2\n      weekly_prompt_1\n      weekly_prompt_2\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n    }\n    location {\n      __typename\n      Latitude\n      Longitude\n    }\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    accountProfileId\n  }\n}"

  public var input: CreateAccountInput
  public var condition: ModelAccountConditionInput?

  public init(input: CreateAccountInput, condition: ModelAccountConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createAccount", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateAccount.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createAccount: CreateAccount? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createAccount": createAccount.flatMap { $0.snapshot }])
    }

    public var createAccount: CreateAccount? {
      get {
        return (snapshot["createAccount"] as? Snapshot).flatMap { CreateAccount(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createAccount")
      }
    }

    public struct CreateAccount: GraphQLSelectionSet {
      public static let possibleTypes = ["Account"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("first_name", type: .nonNull(.scalar(String.self))),
        GraphQLField("last_name", type: .nonNull(.scalar(String.self))),
        GraphQLField("is_discoverable", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("profile", type: .object(Profile.selections)),
        GraphQLField("location", type: .object(Location.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("accountProfileId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, firstName: String, lastName: String, isDiscoverable: Bool, profile: Profile? = nil, location: Location? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, accountProfileId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Account", "id": id, "user_id": userId, "first_name": firstName, "last_name": lastName, "is_discoverable": isDiscoverable, "profile": profile.flatMap { $0.snapshot }, "location": location.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "accountProfileId": accountProfileId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["user_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "user_id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["first_name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "first_name")
        }
      }

      public var lastName: String {
        get {
          return snapshot["last_name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "last_name")
        }
      }

      public var isDiscoverable: Bool {
        get {
          return snapshot["is_discoverable"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "is_discoverable")
        }
      }

      public var profile: Profile? {
        get {
          return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "profile")
        }
      }

      public var location: Location? {
        get {
          return (snapshot["location"] as? Snapshot).flatMap { Location(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "location")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var accountProfileId: GraphQLID? {
        get {
          return snapshot["accountProfileId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "accountProfileId")
        }
      }

      public struct Profile: GraphQLSelectionSet {
        public static let possibleTypes = ["Profile"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("ethnicities", type: .list(.scalar(String.self))),
          GraphQLField("sexuality", type: .scalar(String.self)),
          GraphQLField("politics", type: .scalar(String.self)),
          GraphQLField("about_prompt_1", type: .scalar(String.self)),
          GraphQLField("about_prompt_2", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
          self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var birthDate: String {
          get {
            return snapshot["birth_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "birth_date")
          }
        }

        public var ethnicities: [String?]? {
          get {
            return snapshot["ethnicities"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "ethnicities")
          }
        }

        public var sexuality: String? {
          get {
            return snapshot["sexuality"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sexuality")
          }
        }

        public var politics: String? {
          get {
            return snapshot["politics"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "politics")
          }
        }

        public var aboutPrompt_1: String? {
          get {
            return snapshot["about_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_1")
          }
        }

        public var aboutPrompt_2: String? {
          get {
            return snapshot["about_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_2")
          }
        }

        public var weeklyPrompt_1: String? {
          get {
            return snapshot["weekly_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
          }
        }

        public var weeklyPrompt_2: String? {
          get {
            return snapshot["weekly_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }
      }

      public struct Location: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("Latitude", type: .nonNull(.scalar(Double.self))),
          GraphQLField("Longitude", type: .nonNull(.scalar(Double.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(latitude: Double, longitude: Double) {
          self.init(snapshot: ["__typename": "Location", "Latitude": latitude, "Longitude": longitude])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latitude: Double {
          get {
            return snapshot["Latitude"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "Latitude")
          }
        }

        public var longitude: Double {
          get {
            return snapshot["Longitude"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "Longitude")
          }
        }
      }
    }
  }
}

public final class UpdateAccountMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateAccount($input: UpdateAccountInput!, $condition: ModelAccountConditionInput) {\n  updateAccount(input: $input, condition: $condition) {\n    __typename\n    id\n    user_id\n    first_name\n    last_name\n    is_discoverable\n    profile {\n      __typename\n      id\n      birth_date\n      ethnicities\n      sexuality\n      politics\n      about_prompt_1\n      about_prompt_2\n      weekly_prompt_1\n      weekly_prompt_2\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n    }\n    location {\n      __typename\n      Latitude\n      Longitude\n    }\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    accountProfileId\n  }\n}"

  public var input: UpdateAccountInput
  public var condition: ModelAccountConditionInput?

  public init(input: UpdateAccountInput, condition: ModelAccountConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateAccount", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateAccount.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateAccount: UpdateAccount? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateAccount": updateAccount.flatMap { $0.snapshot }])
    }

    public var updateAccount: UpdateAccount? {
      get {
        return (snapshot["updateAccount"] as? Snapshot).flatMap { UpdateAccount(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateAccount")
      }
    }

    public struct UpdateAccount: GraphQLSelectionSet {
      public static let possibleTypes = ["Account"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("first_name", type: .nonNull(.scalar(String.self))),
        GraphQLField("last_name", type: .nonNull(.scalar(String.self))),
        GraphQLField("is_discoverable", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("profile", type: .object(Profile.selections)),
        GraphQLField("location", type: .object(Location.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("accountProfileId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, firstName: String, lastName: String, isDiscoverable: Bool, profile: Profile? = nil, location: Location? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, accountProfileId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Account", "id": id, "user_id": userId, "first_name": firstName, "last_name": lastName, "is_discoverable": isDiscoverable, "profile": profile.flatMap { $0.snapshot }, "location": location.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "accountProfileId": accountProfileId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["user_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "user_id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["first_name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "first_name")
        }
      }

      public var lastName: String {
        get {
          return snapshot["last_name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "last_name")
        }
      }

      public var isDiscoverable: Bool {
        get {
          return snapshot["is_discoverable"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "is_discoverable")
        }
      }

      public var profile: Profile? {
        get {
          return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "profile")
        }
      }

      public var location: Location? {
        get {
          return (snapshot["location"] as? Snapshot).flatMap { Location(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "location")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var accountProfileId: GraphQLID? {
        get {
          return snapshot["accountProfileId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "accountProfileId")
        }
      }

      public struct Profile: GraphQLSelectionSet {
        public static let possibleTypes = ["Profile"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("ethnicities", type: .list(.scalar(String.self))),
          GraphQLField("sexuality", type: .scalar(String.self)),
          GraphQLField("politics", type: .scalar(String.self)),
          GraphQLField("about_prompt_1", type: .scalar(String.self)),
          GraphQLField("about_prompt_2", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
          self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var birthDate: String {
          get {
            return snapshot["birth_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "birth_date")
          }
        }

        public var ethnicities: [String?]? {
          get {
            return snapshot["ethnicities"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "ethnicities")
          }
        }

        public var sexuality: String? {
          get {
            return snapshot["sexuality"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sexuality")
          }
        }

        public var politics: String? {
          get {
            return snapshot["politics"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "politics")
          }
        }

        public var aboutPrompt_1: String? {
          get {
            return snapshot["about_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_1")
          }
        }

        public var aboutPrompt_2: String? {
          get {
            return snapshot["about_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_2")
          }
        }

        public var weeklyPrompt_1: String? {
          get {
            return snapshot["weekly_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
          }
        }

        public var weeklyPrompt_2: String? {
          get {
            return snapshot["weekly_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }
      }

      public struct Location: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("Latitude", type: .nonNull(.scalar(Double.self))),
          GraphQLField("Longitude", type: .nonNull(.scalar(Double.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(latitude: Double, longitude: Double) {
          self.init(snapshot: ["__typename": "Location", "Latitude": latitude, "Longitude": longitude])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latitude: Double {
          get {
            return snapshot["Latitude"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "Latitude")
          }
        }

        public var longitude: Double {
          get {
            return snapshot["Longitude"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "Longitude")
          }
        }
      }
    }
  }
}

public final class DeleteAccountMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteAccount($input: DeleteAccountInput!, $condition: ModelAccountConditionInput) {\n  deleteAccount(input: $input, condition: $condition) {\n    __typename\n    id\n    user_id\n    first_name\n    last_name\n    is_discoverable\n    profile {\n      __typename\n      id\n      birth_date\n      ethnicities\n      sexuality\n      politics\n      about_prompt_1\n      about_prompt_2\n      weekly_prompt_1\n      weekly_prompt_2\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n    }\n    location {\n      __typename\n      Latitude\n      Longitude\n    }\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    accountProfileId\n  }\n}"

  public var input: DeleteAccountInput
  public var condition: ModelAccountConditionInput?

  public init(input: DeleteAccountInput, condition: ModelAccountConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteAccount", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteAccount.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteAccount: DeleteAccount? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteAccount": deleteAccount.flatMap { $0.snapshot }])
    }

    public var deleteAccount: DeleteAccount? {
      get {
        return (snapshot["deleteAccount"] as? Snapshot).flatMap { DeleteAccount(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteAccount")
      }
    }

    public struct DeleteAccount: GraphQLSelectionSet {
      public static let possibleTypes = ["Account"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("first_name", type: .nonNull(.scalar(String.self))),
        GraphQLField("last_name", type: .nonNull(.scalar(String.self))),
        GraphQLField("is_discoverable", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("profile", type: .object(Profile.selections)),
        GraphQLField("location", type: .object(Location.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("accountProfileId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, firstName: String, lastName: String, isDiscoverable: Bool, profile: Profile? = nil, location: Location? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, accountProfileId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Account", "id": id, "user_id": userId, "first_name": firstName, "last_name": lastName, "is_discoverable": isDiscoverable, "profile": profile.flatMap { $0.snapshot }, "location": location.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "accountProfileId": accountProfileId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["user_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "user_id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["first_name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "first_name")
        }
      }

      public var lastName: String {
        get {
          return snapshot["last_name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "last_name")
        }
      }

      public var isDiscoverable: Bool {
        get {
          return snapshot["is_discoverable"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "is_discoverable")
        }
      }

      public var profile: Profile? {
        get {
          return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "profile")
        }
      }

      public var location: Location? {
        get {
          return (snapshot["location"] as? Snapshot).flatMap { Location(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "location")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var accountProfileId: GraphQLID? {
        get {
          return snapshot["accountProfileId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "accountProfileId")
        }
      }

      public struct Profile: GraphQLSelectionSet {
        public static let possibleTypes = ["Profile"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("ethnicities", type: .list(.scalar(String.self))),
          GraphQLField("sexuality", type: .scalar(String.self)),
          GraphQLField("politics", type: .scalar(String.self)),
          GraphQLField("about_prompt_1", type: .scalar(String.self)),
          GraphQLField("about_prompt_2", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
          self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var birthDate: String {
          get {
            return snapshot["birth_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "birth_date")
          }
        }

        public var ethnicities: [String?]? {
          get {
            return snapshot["ethnicities"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "ethnicities")
          }
        }

        public var sexuality: String? {
          get {
            return snapshot["sexuality"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sexuality")
          }
        }

        public var politics: String? {
          get {
            return snapshot["politics"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "politics")
          }
        }

        public var aboutPrompt_1: String? {
          get {
            return snapshot["about_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_1")
          }
        }

        public var aboutPrompt_2: String? {
          get {
            return snapshot["about_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_2")
          }
        }

        public var weeklyPrompt_1: String? {
          get {
            return snapshot["weekly_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
          }
        }

        public var weeklyPrompt_2: String? {
          get {
            return snapshot["weekly_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }
      }

      public struct Location: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("Latitude", type: .nonNull(.scalar(Double.self))),
          GraphQLField("Longitude", type: .nonNull(.scalar(Double.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(latitude: Double, longitude: Double) {
          self.init(snapshot: ["__typename": "Location", "Latitude": latitude, "Longitude": longitude])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latitude: Double {
          get {
            return snapshot["Latitude"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "Latitude")
          }
        }

        public var longitude: Double {
          get {
            return snapshot["Longitude"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "Longitude")
          }
        }
      }
    }
  }
}

public final class CreateProfileMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateProfile($input: CreateProfileInput!, $condition: ModelProfileConditionInput) {\n  createProfile(input: $input, condition: $condition) {\n    __typename\n    id\n    birth_date\n    ethnicities\n    sexuality\n    politics\n    about_prompt_1\n    about_prompt_2\n    weekly_prompt_1\n    weekly_prompt_2\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n  }\n}"

  public var input: CreateProfileInput
  public var condition: ModelProfileConditionInput?

  public init(input: CreateProfileInput, condition: ModelProfileConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createProfile", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateProfile.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createProfile: CreateProfile? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createProfile": createProfile.flatMap { $0.snapshot }])
    }

    public var createProfile: CreateProfile? {
      get {
        return (snapshot["createProfile"] as? Snapshot).flatMap { CreateProfile(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createProfile")
      }
    }

    public struct CreateProfile: GraphQLSelectionSet {
      public static let possibleTypes = ["Profile"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("ethnicities", type: .list(.scalar(String.self))),
        GraphQLField("sexuality", type: .scalar(String.self)),
        GraphQLField("politics", type: .scalar(String.self)),
        GraphQLField("about_prompt_1", type: .scalar(String.self)),
        GraphQLField("about_prompt_2", type: .scalar(String.self)),
        GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
        GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
        self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var birthDate: String {
        get {
          return snapshot["birth_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birth_date")
        }
      }

      public var ethnicities: [String?]? {
        get {
          return snapshot["ethnicities"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "ethnicities")
        }
      }

      public var sexuality: String? {
        get {
          return snapshot["sexuality"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sexuality")
        }
      }

      public var politics: String? {
        get {
          return snapshot["politics"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "politics")
        }
      }

      public var aboutPrompt_1: String? {
        get {
          return snapshot["about_prompt_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "about_prompt_1")
        }
      }

      public var aboutPrompt_2: String? {
        get {
          return snapshot["about_prompt_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "about_prompt_2")
        }
      }

      public var weeklyPrompt_1: String? {
        get {
          return snapshot["weekly_prompt_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
        }
      }

      public var weeklyPrompt_2: String? {
        get {
          return snapshot["weekly_prompt_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }
    }
  }
}

public final class UpdateProfileMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateProfile($input: UpdateProfileInput!, $condition: ModelProfileConditionInput) {\n  updateProfile(input: $input, condition: $condition) {\n    __typename\n    id\n    birth_date\n    ethnicities\n    sexuality\n    politics\n    about_prompt_1\n    about_prompt_2\n    weekly_prompt_1\n    weekly_prompt_2\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n  }\n}"

  public var input: UpdateProfileInput
  public var condition: ModelProfileConditionInput?

  public init(input: UpdateProfileInput, condition: ModelProfileConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateProfile", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateProfile.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateProfile: UpdateProfile? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateProfile": updateProfile.flatMap { $0.snapshot }])
    }

    public var updateProfile: UpdateProfile? {
      get {
        return (snapshot["updateProfile"] as? Snapshot).flatMap { UpdateProfile(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateProfile")
      }
    }

    public struct UpdateProfile: GraphQLSelectionSet {
      public static let possibleTypes = ["Profile"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("ethnicities", type: .list(.scalar(String.self))),
        GraphQLField("sexuality", type: .scalar(String.self)),
        GraphQLField("politics", type: .scalar(String.self)),
        GraphQLField("about_prompt_1", type: .scalar(String.self)),
        GraphQLField("about_prompt_2", type: .scalar(String.self)),
        GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
        GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
        self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var birthDate: String {
        get {
          return snapshot["birth_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birth_date")
        }
      }

      public var ethnicities: [String?]? {
        get {
          return snapshot["ethnicities"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "ethnicities")
        }
      }

      public var sexuality: String? {
        get {
          return snapshot["sexuality"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sexuality")
        }
      }

      public var politics: String? {
        get {
          return snapshot["politics"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "politics")
        }
      }

      public var aboutPrompt_1: String? {
        get {
          return snapshot["about_prompt_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "about_prompt_1")
        }
      }

      public var aboutPrompt_2: String? {
        get {
          return snapshot["about_prompt_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "about_prompt_2")
        }
      }

      public var weeklyPrompt_1: String? {
        get {
          return snapshot["weekly_prompt_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
        }
      }

      public var weeklyPrompt_2: String? {
        get {
          return snapshot["weekly_prompt_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }
    }
  }
}

public final class DeleteProfileMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteProfile($input: DeleteProfileInput!, $condition: ModelProfileConditionInput) {\n  deleteProfile(input: $input, condition: $condition) {\n    __typename\n    id\n    birth_date\n    ethnicities\n    sexuality\n    politics\n    about_prompt_1\n    about_prompt_2\n    weekly_prompt_1\n    weekly_prompt_2\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n  }\n}"

  public var input: DeleteProfileInput
  public var condition: ModelProfileConditionInput?

  public init(input: DeleteProfileInput, condition: ModelProfileConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteProfile", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteProfile.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteProfile: DeleteProfile? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteProfile": deleteProfile.flatMap { $0.snapshot }])
    }

    public var deleteProfile: DeleteProfile? {
      get {
        return (snapshot["deleteProfile"] as? Snapshot).flatMap { DeleteProfile(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteProfile")
      }
    }

    public struct DeleteProfile: GraphQLSelectionSet {
      public static let possibleTypes = ["Profile"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("ethnicities", type: .list(.scalar(String.self))),
        GraphQLField("sexuality", type: .scalar(String.self)),
        GraphQLField("politics", type: .scalar(String.self)),
        GraphQLField("about_prompt_1", type: .scalar(String.self)),
        GraphQLField("about_prompt_2", type: .scalar(String.self)),
        GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
        GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
        self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var birthDate: String {
        get {
          return snapshot["birth_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birth_date")
        }
      }

      public var ethnicities: [String?]? {
        get {
          return snapshot["ethnicities"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "ethnicities")
        }
      }

      public var sexuality: String? {
        get {
          return snapshot["sexuality"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sexuality")
        }
      }

      public var politics: String? {
        get {
          return snapshot["politics"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "politics")
        }
      }

      public var aboutPrompt_1: String? {
        get {
          return snapshot["about_prompt_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "about_prompt_1")
        }
      }

      public var aboutPrompt_2: String? {
        get {
          return snapshot["about_prompt_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "about_prompt_2")
        }
      }

      public var weeklyPrompt_1: String? {
        get {
          return snapshot["weekly_prompt_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
        }
      }

      public var weeklyPrompt_2: String? {
        get {
          return snapshot["weekly_prompt_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }
    }
  }
}

public final class CreateMatchMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateMatch($input: CreateMatchInput!, $condition: ModelMatchConditionInput) {\n  createMatch(input: $input, condition: $condition) {\n    __typename\n    id\n    account_id_1\n    account_id_2\n    accepted_by_1\n    accepted_by_2\n    cancelled\n    cancelled_id\n    arrived_1\n    arrived_2\n    met\n    feedback_1\n    feedback_2\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n  }\n}"

  public var input: CreateMatchInput
  public var condition: ModelMatchConditionInput?

  public init(input: CreateMatchInput, condition: ModelMatchConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createMatch", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateMatch.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createMatch: CreateMatch? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createMatch": createMatch.flatMap { $0.snapshot }])
    }

    public var createMatch: CreateMatch? {
      get {
        return (snapshot["createMatch"] as? Snapshot).flatMap { CreateMatch(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createMatch")
      }
    }

    public struct CreateMatch: GraphQLSelectionSet {
      public static let possibleTypes = ["Match"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("account_id_1", type: .nonNull(.scalar(String.self))),
        GraphQLField("account_id_2", type: .nonNull(.scalar(String.self))),
        GraphQLField("accepted_by_1", type: .scalar(Bool.self)),
        GraphQLField("accepted_by_2", type: .scalar(Bool.self)),
        GraphQLField("cancelled", type: .scalar(Bool.self)),
        GraphQLField("cancelled_id", type: .scalar(String.self)),
        GraphQLField("arrived_1", type: .scalar(Bool.self)),
        GraphQLField("arrived_2", type: .scalar(Bool.self)),
        GraphQLField("met", type: .scalar(Bool.self)),
        GraphQLField("feedback_1", type: .scalar(String.self)),
        GraphQLField("feedback_2", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, accountId_1: String, accountId_2: String, acceptedBy_1: Bool? = nil, acceptedBy_2: Bool? = nil, cancelled: Bool? = nil, cancelledId: String? = nil, arrived_1: Bool? = nil, arrived_2: Bool? = nil, met: Bool? = nil, feedback_1: String? = nil, feedback_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
        self.init(snapshot: ["__typename": "Match", "id": id, "account_id_1": accountId_1, "account_id_2": accountId_2, "accepted_by_1": acceptedBy_1, "accepted_by_2": acceptedBy_2, "cancelled": cancelled, "cancelled_id": cancelledId, "arrived_1": arrived_1, "arrived_2": arrived_2, "met": met, "feedback_1": feedback_1, "feedback_2": feedback_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var accountId_1: String {
        get {
          return snapshot["account_id_1"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "account_id_1")
        }
      }

      public var accountId_2: String {
        get {
          return snapshot["account_id_2"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "account_id_2")
        }
      }

      public var acceptedBy_1: Bool? {
        get {
          return snapshot["accepted_by_1"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accepted_by_1")
        }
      }

      public var acceptedBy_2: Bool? {
        get {
          return snapshot["accepted_by_2"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accepted_by_2")
        }
      }

      public var cancelled: Bool? {
        get {
          return snapshot["cancelled"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "cancelled")
        }
      }

      public var cancelledId: String? {
        get {
          return snapshot["cancelled_id"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "cancelled_id")
        }
      }

      public var arrived_1: Bool? {
        get {
          return snapshot["arrived_1"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrived_1")
        }
      }

      public var arrived_2: Bool? {
        get {
          return snapshot["arrived_2"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrived_2")
        }
      }

      public var met: Bool? {
        get {
          return snapshot["met"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "met")
        }
      }

      public var feedback_1: String? {
        get {
          return snapshot["feedback_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "feedback_1")
        }
      }

      public var feedback_2: String? {
        get {
          return snapshot["feedback_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "feedback_2")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }
    }
  }
}

public final class UpdateMatchMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateMatch($input: UpdateMatchInput!, $condition: ModelMatchConditionInput) {\n  updateMatch(input: $input, condition: $condition) {\n    __typename\n    id\n    account_id_1\n    account_id_2\n    accepted_by_1\n    accepted_by_2\n    cancelled\n    cancelled_id\n    arrived_1\n    arrived_2\n    met\n    feedback_1\n    feedback_2\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n  }\n}"

  public var input: UpdateMatchInput
  public var condition: ModelMatchConditionInput?

  public init(input: UpdateMatchInput, condition: ModelMatchConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMatch", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateMatch.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateMatch: UpdateMatch? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateMatch": updateMatch.flatMap { $0.snapshot }])
    }

    public var updateMatch: UpdateMatch? {
      get {
        return (snapshot["updateMatch"] as? Snapshot).flatMap { UpdateMatch(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateMatch")
      }
    }

    public struct UpdateMatch: GraphQLSelectionSet {
      public static let possibleTypes = ["Match"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("account_id_1", type: .nonNull(.scalar(String.self))),
        GraphQLField("account_id_2", type: .nonNull(.scalar(String.self))),
        GraphQLField("accepted_by_1", type: .scalar(Bool.self)),
        GraphQLField("accepted_by_2", type: .scalar(Bool.self)),
        GraphQLField("cancelled", type: .scalar(Bool.self)),
        GraphQLField("cancelled_id", type: .scalar(String.self)),
        GraphQLField("arrived_1", type: .scalar(Bool.self)),
        GraphQLField("arrived_2", type: .scalar(Bool.self)),
        GraphQLField("met", type: .scalar(Bool.self)),
        GraphQLField("feedback_1", type: .scalar(String.self)),
        GraphQLField("feedback_2", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, accountId_1: String, accountId_2: String, acceptedBy_1: Bool? = nil, acceptedBy_2: Bool? = nil, cancelled: Bool? = nil, cancelledId: String? = nil, arrived_1: Bool? = nil, arrived_2: Bool? = nil, met: Bool? = nil, feedback_1: String? = nil, feedback_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
        self.init(snapshot: ["__typename": "Match", "id": id, "account_id_1": accountId_1, "account_id_2": accountId_2, "accepted_by_1": acceptedBy_1, "accepted_by_2": acceptedBy_2, "cancelled": cancelled, "cancelled_id": cancelledId, "arrived_1": arrived_1, "arrived_2": arrived_2, "met": met, "feedback_1": feedback_1, "feedback_2": feedback_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var accountId_1: String {
        get {
          return snapshot["account_id_1"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "account_id_1")
        }
      }

      public var accountId_2: String {
        get {
          return snapshot["account_id_2"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "account_id_2")
        }
      }

      public var acceptedBy_1: Bool? {
        get {
          return snapshot["accepted_by_1"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accepted_by_1")
        }
      }

      public var acceptedBy_2: Bool? {
        get {
          return snapshot["accepted_by_2"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accepted_by_2")
        }
      }

      public var cancelled: Bool? {
        get {
          return snapshot["cancelled"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "cancelled")
        }
      }

      public var cancelledId: String? {
        get {
          return snapshot["cancelled_id"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "cancelled_id")
        }
      }

      public var arrived_1: Bool? {
        get {
          return snapshot["arrived_1"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrived_1")
        }
      }

      public var arrived_2: Bool? {
        get {
          return snapshot["arrived_2"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrived_2")
        }
      }

      public var met: Bool? {
        get {
          return snapshot["met"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "met")
        }
      }

      public var feedback_1: String? {
        get {
          return snapshot["feedback_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "feedback_1")
        }
      }

      public var feedback_2: String? {
        get {
          return snapshot["feedback_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "feedback_2")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }
    }
  }
}

public final class DeleteMatchMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteMatch($input: DeleteMatchInput!, $condition: ModelMatchConditionInput) {\n  deleteMatch(input: $input, condition: $condition) {\n    __typename\n    id\n    account_id_1\n    account_id_2\n    accepted_by_1\n    accepted_by_2\n    cancelled\n    cancelled_id\n    arrived_1\n    arrived_2\n    met\n    feedback_1\n    feedback_2\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n  }\n}"

  public var input: DeleteMatchInput
  public var condition: ModelMatchConditionInput?

  public init(input: DeleteMatchInput, condition: ModelMatchConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteMatch", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteMatch.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteMatch: DeleteMatch? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteMatch": deleteMatch.flatMap { $0.snapshot }])
    }

    public var deleteMatch: DeleteMatch? {
      get {
        return (snapshot["deleteMatch"] as? Snapshot).flatMap { DeleteMatch(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteMatch")
      }
    }

    public struct DeleteMatch: GraphQLSelectionSet {
      public static let possibleTypes = ["Match"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("account_id_1", type: .nonNull(.scalar(String.self))),
        GraphQLField("account_id_2", type: .nonNull(.scalar(String.self))),
        GraphQLField("accepted_by_1", type: .scalar(Bool.self)),
        GraphQLField("accepted_by_2", type: .scalar(Bool.self)),
        GraphQLField("cancelled", type: .scalar(Bool.self)),
        GraphQLField("cancelled_id", type: .scalar(String.self)),
        GraphQLField("arrived_1", type: .scalar(Bool.self)),
        GraphQLField("arrived_2", type: .scalar(Bool.self)),
        GraphQLField("met", type: .scalar(Bool.self)),
        GraphQLField("feedback_1", type: .scalar(String.self)),
        GraphQLField("feedback_2", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, accountId_1: String, accountId_2: String, acceptedBy_1: Bool? = nil, acceptedBy_2: Bool? = nil, cancelled: Bool? = nil, cancelledId: String? = nil, arrived_1: Bool? = nil, arrived_2: Bool? = nil, met: Bool? = nil, feedback_1: String? = nil, feedback_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
        self.init(snapshot: ["__typename": "Match", "id": id, "account_id_1": accountId_1, "account_id_2": accountId_2, "accepted_by_1": acceptedBy_1, "accepted_by_2": acceptedBy_2, "cancelled": cancelled, "cancelled_id": cancelledId, "arrived_1": arrived_1, "arrived_2": arrived_2, "met": met, "feedback_1": feedback_1, "feedback_2": feedback_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var accountId_1: String {
        get {
          return snapshot["account_id_1"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "account_id_1")
        }
      }

      public var accountId_2: String {
        get {
          return snapshot["account_id_2"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "account_id_2")
        }
      }

      public var acceptedBy_1: Bool? {
        get {
          return snapshot["accepted_by_1"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accepted_by_1")
        }
      }

      public var acceptedBy_2: Bool? {
        get {
          return snapshot["accepted_by_2"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accepted_by_2")
        }
      }

      public var cancelled: Bool? {
        get {
          return snapshot["cancelled"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "cancelled")
        }
      }

      public var cancelledId: String? {
        get {
          return snapshot["cancelled_id"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "cancelled_id")
        }
      }

      public var arrived_1: Bool? {
        get {
          return snapshot["arrived_1"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrived_1")
        }
      }

      public var arrived_2: Bool? {
        get {
          return snapshot["arrived_2"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrived_2")
        }
      }

      public var met: Bool? {
        get {
          return snapshot["met"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "met")
        }
      }

      public var feedback_1: String? {
        get {
          return snapshot["feedback_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "feedback_1")
        }
      }

      public var feedback_2: String? {
        get {
          return snapshot["feedback_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "feedback_2")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }
    }
  }
}

public final class GetAccountQuery: GraphQLQuery {
  public static let operationString =
    "query GetAccount($id: ID!) {\n  getAccount(id: $id) {\n    __typename\n    id\n    user_id\n    first_name\n    last_name\n    is_discoverable\n    profile {\n      __typename\n      id\n      birth_date\n      ethnicities\n      sexuality\n      politics\n      about_prompt_1\n      about_prompt_2\n      weekly_prompt_1\n      weekly_prompt_2\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n    }\n    location {\n      __typename\n      Latitude\n      Longitude\n    }\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    accountProfileId\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getAccount", arguments: ["id": GraphQLVariable("id")], type: .object(GetAccount.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getAccount: GetAccount? = nil) {
      self.init(snapshot: ["__typename": "Query", "getAccount": getAccount.flatMap { $0.snapshot }])
    }

    public var getAccount: GetAccount? {
      get {
        return (snapshot["getAccount"] as? Snapshot).flatMap { GetAccount(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getAccount")
      }
    }

    public struct GetAccount: GraphQLSelectionSet {
      public static let possibleTypes = ["Account"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("first_name", type: .nonNull(.scalar(String.self))),
        GraphQLField("last_name", type: .nonNull(.scalar(String.self))),
        GraphQLField("is_discoverable", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("profile", type: .object(Profile.selections)),
        GraphQLField("location", type: .object(Location.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("accountProfileId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, firstName: String, lastName: String, isDiscoverable: Bool, profile: Profile? = nil, location: Location? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, accountProfileId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Account", "id": id, "user_id": userId, "first_name": firstName, "last_name": lastName, "is_discoverable": isDiscoverable, "profile": profile.flatMap { $0.snapshot }, "location": location.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "accountProfileId": accountProfileId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["user_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "user_id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["first_name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "first_name")
        }
      }

      public var lastName: String {
        get {
          return snapshot["last_name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "last_name")
        }
      }

      public var isDiscoverable: Bool {
        get {
          return snapshot["is_discoverable"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "is_discoverable")
        }
      }

      public var profile: Profile? {
        get {
          return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "profile")
        }
      }

      public var location: Location? {
        get {
          return (snapshot["location"] as? Snapshot).flatMap { Location(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "location")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var accountProfileId: GraphQLID? {
        get {
          return snapshot["accountProfileId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "accountProfileId")
        }
      }

      public struct Profile: GraphQLSelectionSet {
        public static let possibleTypes = ["Profile"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("ethnicities", type: .list(.scalar(String.self))),
          GraphQLField("sexuality", type: .scalar(String.self)),
          GraphQLField("politics", type: .scalar(String.self)),
          GraphQLField("about_prompt_1", type: .scalar(String.self)),
          GraphQLField("about_prompt_2", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
          self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var birthDate: String {
          get {
            return snapshot["birth_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "birth_date")
          }
        }

        public var ethnicities: [String?]? {
          get {
            return snapshot["ethnicities"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "ethnicities")
          }
        }

        public var sexuality: String? {
          get {
            return snapshot["sexuality"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sexuality")
          }
        }

        public var politics: String? {
          get {
            return snapshot["politics"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "politics")
          }
        }

        public var aboutPrompt_1: String? {
          get {
            return snapshot["about_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_1")
          }
        }

        public var aboutPrompt_2: String? {
          get {
            return snapshot["about_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_2")
          }
        }

        public var weeklyPrompt_1: String? {
          get {
            return snapshot["weekly_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
          }
        }

        public var weeklyPrompt_2: String? {
          get {
            return snapshot["weekly_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }
      }

      public struct Location: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("Latitude", type: .nonNull(.scalar(Double.self))),
          GraphQLField("Longitude", type: .nonNull(.scalar(Double.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(latitude: Double, longitude: Double) {
          self.init(snapshot: ["__typename": "Location", "Latitude": latitude, "Longitude": longitude])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latitude: Double {
          get {
            return snapshot["Latitude"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "Latitude")
          }
        }

        public var longitude: Double {
          get {
            return snapshot["Longitude"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "Longitude")
          }
        }
      }
    }
  }
}

public final class ListAccountsQuery: GraphQLQuery {
  public static let operationString =
    "query ListAccounts($filter: ModelAccountFilterInput, $limit: Int, $nextToken: String) {\n  listAccounts(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      user_id\n      first_name\n      last_name\n      is_discoverable\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n      accountProfileId\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelAccountFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelAccountFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listAccounts", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListAccount.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listAccounts: ListAccount? = nil) {
      self.init(snapshot: ["__typename": "Query", "listAccounts": listAccounts.flatMap { $0.snapshot }])
    }

    public var listAccounts: ListAccount? {
      get {
        return (snapshot["listAccounts"] as? Snapshot).flatMap { ListAccount(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listAccounts")
      }
    }

    public struct ListAccount: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelAccountConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelAccountConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Account"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("first_name", type: .nonNull(.scalar(String.self))),
          GraphQLField("last_name", type: .nonNull(.scalar(String.self))),
          GraphQLField("is_discoverable", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("accountProfileId", type: .scalar(GraphQLID.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: String, firstName: String, lastName: String, isDiscoverable: Bool, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, accountProfileId: GraphQLID? = nil) {
          self.init(snapshot: ["__typename": "Account", "id": id, "user_id": userId, "first_name": firstName, "last_name": lastName, "is_discoverable": isDiscoverable, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "accountProfileId": accountProfileId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: String {
          get {
            return snapshot["user_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["first_name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "first_name")
          }
        }

        public var lastName: String {
          get {
            return snapshot["last_name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "last_name")
          }
        }

        public var isDiscoverable: Bool {
          get {
            return snapshot["is_discoverable"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "is_discoverable")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var accountProfileId: GraphQLID? {
          get {
            return snapshot["accountProfileId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "accountProfileId")
          }
        }
      }
    }
  }
}

public final class SyncAccountsQuery: GraphQLQuery {
  public static let operationString =
    "query SyncAccounts($filter: ModelAccountFilterInput, $limit: Int, $nextToken: String, $lastSync: AWSTimestamp) {\n  syncAccounts(filter: $filter, limit: $limit, nextToken: $nextToken, lastSync: $lastSync) {\n    __typename\n    items {\n      __typename\n      id\n      user_id\n      first_name\n      last_name\n      is_discoverable\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n      accountProfileId\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelAccountFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var lastSync: Int?

  public init(filter: ModelAccountFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, lastSync: Int? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.lastSync = lastSync
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken, "lastSync": lastSync]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("syncAccounts", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "lastSync": GraphQLVariable("lastSync")], type: .object(SyncAccount.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(syncAccounts: SyncAccount? = nil) {
      self.init(snapshot: ["__typename": "Query", "syncAccounts": syncAccounts.flatMap { $0.snapshot }])
    }

    public var syncAccounts: SyncAccount? {
      get {
        return (snapshot["syncAccounts"] as? Snapshot).flatMap { SyncAccount(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "syncAccounts")
      }
    }

    public struct SyncAccount: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelAccountConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelAccountConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Account"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(String.self))),
          GraphQLField("first_name", type: .nonNull(.scalar(String.self))),
          GraphQLField("last_name", type: .nonNull(.scalar(String.self))),
          GraphQLField("is_discoverable", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("accountProfileId", type: .scalar(GraphQLID.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: String, firstName: String, lastName: String, isDiscoverable: Bool, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, accountProfileId: GraphQLID? = nil) {
          self.init(snapshot: ["__typename": "Account", "id": id, "user_id": userId, "first_name": firstName, "last_name": lastName, "is_discoverable": isDiscoverable, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "accountProfileId": accountProfileId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: String {
          get {
            return snapshot["user_id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var firstName: String {
          get {
            return snapshot["first_name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "first_name")
          }
        }

        public var lastName: String {
          get {
            return snapshot["last_name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "last_name")
          }
        }

        public var isDiscoverable: Bool {
          get {
            return snapshot["is_discoverable"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "is_discoverable")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var accountProfileId: GraphQLID? {
          get {
            return snapshot["accountProfileId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "accountProfileId")
          }
        }
      }
    }
  }
}

public final class GetProfileQuery: GraphQLQuery {
  public static let operationString =
    "query GetProfile($id: ID!) {\n  getProfile(id: $id) {\n    __typename\n    id\n    birth_date\n    ethnicities\n    sexuality\n    politics\n    about_prompt_1\n    about_prompt_2\n    weekly_prompt_1\n    weekly_prompt_2\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getProfile", arguments: ["id": GraphQLVariable("id")], type: .object(GetProfile.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getProfile: GetProfile? = nil) {
      self.init(snapshot: ["__typename": "Query", "getProfile": getProfile.flatMap { $0.snapshot }])
    }

    public var getProfile: GetProfile? {
      get {
        return (snapshot["getProfile"] as? Snapshot).flatMap { GetProfile(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getProfile")
      }
    }

    public struct GetProfile: GraphQLSelectionSet {
      public static let possibleTypes = ["Profile"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("ethnicities", type: .list(.scalar(String.self))),
        GraphQLField("sexuality", type: .scalar(String.self)),
        GraphQLField("politics", type: .scalar(String.self)),
        GraphQLField("about_prompt_1", type: .scalar(String.self)),
        GraphQLField("about_prompt_2", type: .scalar(String.self)),
        GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
        GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
        self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var birthDate: String {
        get {
          return snapshot["birth_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birth_date")
        }
      }

      public var ethnicities: [String?]? {
        get {
          return snapshot["ethnicities"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "ethnicities")
        }
      }

      public var sexuality: String? {
        get {
          return snapshot["sexuality"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sexuality")
        }
      }

      public var politics: String? {
        get {
          return snapshot["politics"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "politics")
        }
      }

      public var aboutPrompt_1: String? {
        get {
          return snapshot["about_prompt_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "about_prompt_1")
        }
      }

      public var aboutPrompt_2: String? {
        get {
          return snapshot["about_prompt_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "about_prompt_2")
        }
      }

      public var weeklyPrompt_1: String? {
        get {
          return snapshot["weekly_prompt_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
        }
      }

      public var weeklyPrompt_2: String? {
        get {
          return snapshot["weekly_prompt_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }
    }
  }
}

public final class ListProfilesQuery: GraphQLQuery {
  public static let operationString =
    "query ListProfiles($filter: ModelProfileFilterInput, $limit: Int, $nextToken: String) {\n  listProfiles(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      birth_date\n      ethnicities\n      sexuality\n      politics\n      about_prompt_1\n      about_prompt_2\n      weekly_prompt_1\n      weekly_prompt_2\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelProfileFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelProfileFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listProfiles", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListProfile.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listProfiles: ListProfile? = nil) {
      self.init(snapshot: ["__typename": "Query", "listProfiles": listProfiles.flatMap { $0.snapshot }])
    }

    public var listProfiles: ListProfile? {
      get {
        return (snapshot["listProfiles"] as? Snapshot).flatMap { ListProfile(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listProfiles")
      }
    }

    public struct ListProfile: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelProfileConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelProfileConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Profile"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("ethnicities", type: .list(.scalar(String.self))),
          GraphQLField("sexuality", type: .scalar(String.self)),
          GraphQLField("politics", type: .scalar(String.self)),
          GraphQLField("about_prompt_1", type: .scalar(String.self)),
          GraphQLField("about_prompt_2", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
          self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var birthDate: String {
          get {
            return snapshot["birth_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "birth_date")
          }
        }

        public var ethnicities: [String?]? {
          get {
            return snapshot["ethnicities"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "ethnicities")
          }
        }

        public var sexuality: String? {
          get {
            return snapshot["sexuality"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sexuality")
          }
        }

        public var politics: String? {
          get {
            return snapshot["politics"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "politics")
          }
        }

        public var aboutPrompt_1: String? {
          get {
            return snapshot["about_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_1")
          }
        }

        public var aboutPrompt_2: String? {
          get {
            return snapshot["about_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_2")
          }
        }

        public var weeklyPrompt_1: String? {
          get {
            return snapshot["weekly_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
          }
        }

        public var weeklyPrompt_2: String? {
          get {
            return snapshot["weekly_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }
      }
    }
  }
}

public final class SyncProfilesQuery: GraphQLQuery {
  public static let operationString =
    "query SyncProfiles($filter: ModelProfileFilterInput, $limit: Int, $nextToken: String, $lastSync: AWSTimestamp) {\n  syncProfiles(filter: $filter, limit: $limit, nextToken: $nextToken, lastSync: $lastSync) {\n    __typename\n    items {\n      __typename\n      id\n      birth_date\n      ethnicities\n      sexuality\n      politics\n      about_prompt_1\n      about_prompt_2\n      weekly_prompt_1\n      weekly_prompt_2\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelProfileFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var lastSync: Int?

  public init(filter: ModelProfileFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, lastSync: Int? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.lastSync = lastSync
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken, "lastSync": lastSync]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("syncProfiles", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "lastSync": GraphQLVariable("lastSync")], type: .object(SyncProfile.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(syncProfiles: SyncProfile? = nil) {
      self.init(snapshot: ["__typename": "Query", "syncProfiles": syncProfiles.flatMap { $0.snapshot }])
    }

    public var syncProfiles: SyncProfile? {
      get {
        return (snapshot["syncProfiles"] as? Snapshot).flatMap { SyncProfile(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "syncProfiles")
      }
    }

    public struct SyncProfile: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelProfileConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelProfileConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Profile"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("ethnicities", type: .list(.scalar(String.self))),
          GraphQLField("sexuality", type: .scalar(String.self)),
          GraphQLField("politics", type: .scalar(String.self)),
          GraphQLField("about_prompt_1", type: .scalar(String.self)),
          GraphQLField("about_prompt_2", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
          self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var birthDate: String {
          get {
            return snapshot["birth_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "birth_date")
          }
        }

        public var ethnicities: [String?]? {
          get {
            return snapshot["ethnicities"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "ethnicities")
          }
        }

        public var sexuality: String? {
          get {
            return snapshot["sexuality"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sexuality")
          }
        }

        public var politics: String? {
          get {
            return snapshot["politics"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "politics")
          }
        }

        public var aboutPrompt_1: String? {
          get {
            return snapshot["about_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_1")
          }
        }

        public var aboutPrompt_2: String? {
          get {
            return snapshot["about_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_2")
          }
        }

        public var weeklyPrompt_1: String? {
          get {
            return snapshot["weekly_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
          }
        }

        public var weeklyPrompt_2: String? {
          get {
            return snapshot["weekly_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }
      }
    }
  }
}

public final class GetMatchQuery: GraphQLQuery {
  public static let operationString =
    "query GetMatch($id: ID!) {\n  getMatch(id: $id) {\n    __typename\n    id\n    account_id_1\n    account_id_2\n    accepted_by_1\n    accepted_by_2\n    cancelled\n    cancelled_id\n    arrived_1\n    arrived_2\n    met\n    feedback_1\n    feedback_2\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getMatch", arguments: ["id": GraphQLVariable("id")], type: .object(GetMatch.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getMatch: GetMatch? = nil) {
      self.init(snapshot: ["__typename": "Query", "getMatch": getMatch.flatMap { $0.snapshot }])
    }

    public var getMatch: GetMatch? {
      get {
        return (snapshot["getMatch"] as? Snapshot).flatMap { GetMatch(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getMatch")
      }
    }

    public struct GetMatch: GraphQLSelectionSet {
      public static let possibleTypes = ["Match"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("account_id_1", type: .nonNull(.scalar(String.self))),
        GraphQLField("account_id_2", type: .nonNull(.scalar(String.self))),
        GraphQLField("accepted_by_1", type: .scalar(Bool.self)),
        GraphQLField("accepted_by_2", type: .scalar(Bool.self)),
        GraphQLField("cancelled", type: .scalar(Bool.self)),
        GraphQLField("cancelled_id", type: .scalar(String.self)),
        GraphQLField("arrived_1", type: .scalar(Bool.self)),
        GraphQLField("arrived_2", type: .scalar(Bool.self)),
        GraphQLField("met", type: .scalar(Bool.self)),
        GraphQLField("feedback_1", type: .scalar(String.self)),
        GraphQLField("feedback_2", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, accountId_1: String, accountId_2: String, acceptedBy_1: Bool? = nil, acceptedBy_2: Bool? = nil, cancelled: Bool? = nil, cancelledId: String? = nil, arrived_1: Bool? = nil, arrived_2: Bool? = nil, met: Bool? = nil, feedback_1: String? = nil, feedback_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
        self.init(snapshot: ["__typename": "Match", "id": id, "account_id_1": accountId_1, "account_id_2": accountId_2, "accepted_by_1": acceptedBy_1, "accepted_by_2": acceptedBy_2, "cancelled": cancelled, "cancelled_id": cancelledId, "arrived_1": arrived_1, "arrived_2": arrived_2, "met": met, "feedback_1": feedback_1, "feedback_2": feedback_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var accountId_1: String {
        get {
          return snapshot["account_id_1"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "account_id_1")
        }
      }

      public var accountId_2: String {
        get {
          return snapshot["account_id_2"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "account_id_2")
        }
      }

      public var acceptedBy_1: Bool? {
        get {
          return snapshot["accepted_by_1"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accepted_by_1")
        }
      }

      public var acceptedBy_2: Bool? {
        get {
          return snapshot["accepted_by_2"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accepted_by_2")
        }
      }

      public var cancelled: Bool? {
        get {
          return snapshot["cancelled"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "cancelled")
        }
      }

      public var cancelledId: String? {
        get {
          return snapshot["cancelled_id"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "cancelled_id")
        }
      }

      public var arrived_1: Bool? {
        get {
          return snapshot["arrived_1"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrived_1")
        }
      }

      public var arrived_2: Bool? {
        get {
          return snapshot["arrived_2"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrived_2")
        }
      }

      public var met: Bool? {
        get {
          return snapshot["met"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "met")
        }
      }

      public var feedback_1: String? {
        get {
          return snapshot["feedback_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "feedback_1")
        }
      }

      public var feedback_2: String? {
        get {
          return snapshot["feedback_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "feedback_2")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }
    }
  }
}

public final class ListMatchesQuery: GraphQLQuery {
  public static let operationString =
    "query ListMatches($filter: ModelMatchFilterInput, $limit: Int, $nextToken: String) {\n  listMatches(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      account_id_1\n      account_id_2\n      accepted_by_1\n      accepted_by_2\n      cancelled\n      cancelled_id\n      arrived_1\n      arrived_2\n      met\n      feedback_1\n      feedback_2\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelMatchFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelMatchFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listMatches", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListMatch.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listMatches: ListMatch? = nil) {
      self.init(snapshot: ["__typename": "Query", "listMatches": listMatches.flatMap { $0.snapshot }])
    }

    public var listMatches: ListMatch? {
      get {
        return (snapshot["listMatches"] as? Snapshot).flatMap { ListMatch(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listMatches")
      }
    }

    public struct ListMatch: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelMatchConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelMatchConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Match"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("account_id_1", type: .nonNull(.scalar(String.self))),
          GraphQLField("account_id_2", type: .nonNull(.scalar(String.self))),
          GraphQLField("accepted_by_1", type: .scalar(Bool.self)),
          GraphQLField("accepted_by_2", type: .scalar(Bool.self)),
          GraphQLField("cancelled", type: .scalar(Bool.self)),
          GraphQLField("cancelled_id", type: .scalar(String.self)),
          GraphQLField("arrived_1", type: .scalar(Bool.self)),
          GraphQLField("arrived_2", type: .scalar(Bool.self)),
          GraphQLField("met", type: .scalar(Bool.self)),
          GraphQLField("feedback_1", type: .scalar(String.self)),
          GraphQLField("feedback_2", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, accountId_1: String, accountId_2: String, acceptedBy_1: Bool? = nil, acceptedBy_2: Bool? = nil, cancelled: Bool? = nil, cancelledId: String? = nil, arrived_1: Bool? = nil, arrived_2: Bool? = nil, met: Bool? = nil, feedback_1: String? = nil, feedback_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
          self.init(snapshot: ["__typename": "Match", "id": id, "account_id_1": accountId_1, "account_id_2": accountId_2, "accepted_by_1": acceptedBy_1, "accepted_by_2": acceptedBy_2, "cancelled": cancelled, "cancelled_id": cancelledId, "arrived_1": arrived_1, "arrived_2": arrived_2, "met": met, "feedback_1": feedback_1, "feedback_2": feedback_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var accountId_1: String {
          get {
            return snapshot["account_id_1"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "account_id_1")
          }
        }

        public var accountId_2: String {
          get {
            return snapshot["account_id_2"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "account_id_2")
          }
        }

        public var acceptedBy_1: Bool? {
          get {
            return snapshot["accepted_by_1"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "accepted_by_1")
          }
        }

        public var acceptedBy_2: Bool? {
          get {
            return snapshot["accepted_by_2"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "accepted_by_2")
          }
        }

        public var cancelled: Bool? {
          get {
            return snapshot["cancelled"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "cancelled")
          }
        }

        public var cancelledId: String? {
          get {
            return snapshot["cancelled_id"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "cancelled_id")
          }
        }

        public var arrived_1: Bool? {
          get {
            return snapshot["arrived_1"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "arrived_1")
          }
        }

        public var arrived_2: Bool? {
          get {
            return snapshot["arrived_2"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "arrived_2")
          }
        }

        public var met: Bool? {
          get {
            return snapshot["met"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "met")
          }
        }

        public var feedback_1: String? {
          get {
            return snapshot["feedback_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "feedback_1")
          }
        }

        public var feedback_2: String? {
          get {
            return snapshot["feedback_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "feedback_2")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }
      }
    }
  }
}

public final class SyncMatchesQuery: GraphQLQuery {
  public static let operationString =
    "query SyncMatches($filter: ModelMatchFilterInput, $limit: Int, $nextToken: String, $lastSync: AWSTimestamp) {\n  syncMatches(filter: $filter, limit: $limit, nextToken: $nextToken, lastSync: $lastSync) {\n    __typename\n    items {\n      __typename\n      id\n      account_id_1\n      account_id_2\n      accepted_by_1\n      accepted_by_2\n      cancelled\n      cancelled_id\n      arrived_1\n      arrived_2\n      met\n      feedback_1\n      feedback_2\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelMatchFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var lastSync: Int?

  public init(filter: ModelMatchFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, lastSync: Int? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.lastSync = lastSync
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken, "lastSync": lastSync]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("syncMatches", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "lastSync": GraphQLVariable("lastSync")], type: .object(SyncMatch.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(syncMatches: SyncMatch? = nil) {
      self.init(snapshot: ["__typename": "Query", "syncMatches": syncMatches.flatMap { $0.snapshot }])
    }

    public var syncMatches: SyncMatch? {
      get {
        return (snapshot["syncMatches"] as? Snapshot).flatMap { SyncMatch(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "syncMatches")
      }
    }

    public struct SyncMatch: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelMatchConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelMatchConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?] {
        get {
          return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Match"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("account_id_1", type: .nonNull(.scalar(String.self))),
          GraphQLField("account_id_2", type: .nonNull(.scalar(String.self))),
          GraphQLField("accepted_by_1", type: .scalar(Bool.self)),
          GraphQLField("accepted_by_2", type: .scalar(Bool.self)),
          GraphQLField("cancelled", type: .scalar(Bool.self)),
          GraphQLField("cancelled_id", type: .scalar(String.self)),
          GraphQLField("arrived_1", type: .scalar(Bool.self)),
          GraphQLField("arrived_2", type: .scalar(Bool.self)),
          GraphQLField("met", type: .scalar(Bool.self)),
          GraphQLField("feedback_1", type: .scalar(String.self)),
          GraphQLField("feedback_2", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, accountId_1: String, accountId_2: String, acceptedBy_1: Bool? = nil, acceptedBy_2: Bool? = nil, cancelled: Bool? = nil, cancelledId: String? = nil, arrived_1: Bool? = nil, arrived_2: Bool? = nil, met: Bool? = nil, feedback_1: String? = nil, feedback_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
          self.init(snapshot: ["__typename": "Match", "id": id, "account_id_1": accountId_1, "account_id_2": accountId_2, "accepted_by_1": acceptedBy_1, "accepted_by_2": acceptedBy_2, "cancelled": cancelled, "cancelled_id": cancelledId, "arrived_1": arrived_1, "arrived_2": arrived_2, "met": met, "feedback_1": feedback_1, "feedback_2": feedback_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var accountId_1: String {
          get {
            return snapshot["account_id_1"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "account_id_1")
          }
        }

        public var accountId_2: String {
          get {
            return snapshot["account_id_2"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "account_id_2")
          }
        }

        public var acceptedBy_1: Bool? {
          get {
            return snapshot["accepted_by_1"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "accepted_by_1")
          }
        }

        public var acceptedBy_2: Bool? {
          get {
            return snapshot["accepted_by_2"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "accepted_by_2")
          }
        }

        public var cancelled: Bool? {
          get {
            return snapshot["cancelled"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "cancelled")
          }
        }

        public var cancelledId: String? {
          get {
            return snapshot["cancelled_id"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "cancelled_id")
          }
        }

        public var arrived_1: Bool? {
          get {
            return snapshot["arrived_1"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "arrived_1")
          }
        }

        public var arrived_2: Bool? {
          get {
            return snapshot["arrived_2"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "arrived_2")
          }
        }

        public var met: Bool? {
          get {
            return snapshot["met"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "met")
          }
        }

        public var feedback_1: String? {
          get {
            return snapshot["feedback_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "feedback_1")
          }
        }

        public var feedback_2: String? {
          get {
            return snapshot["feedback_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "feedback_2")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }
      }
    }
  }
}

public final class OnCreateAccountSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateAccount($filter: ModelSubscriptionAccountFilterInput) {\n  onCreateAccount(filter: $filter) {\n    __typename\n    id\n    user_id\n    first_name\n    last_name\n    is_discoverable\n    profile {\n      __typename\n      id\n      birth_date\n      ethnicities\n      sexuality\n      politics\n      about_prompt_1\n      about_prompt_2\n      weekly_prompt_1\n      weekly_prompt_2\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n    }\n    location {\n      __typename\n      Latitude\n      Longitude\n    }\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    accountProfileId\n  }\n}"

  public var filter: ModelSubscriptionAccountFilterInput?

  public init(filter: ModelSubscriptionAccountFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateAccount", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnCreateAccount.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateAccount: OnCreateAccount? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateAccount": onCreateAccount.flatMap { $0.snapshot }])
    }

    public var onCreateAccount: OnCreateAccount? {
      get {
        return (snapshot["onCreateAccount"] as? Snapshot).flatMap { OnCreateAccount(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateAccount")
      }
    }

    public struct OnCreateAccount: GraphQLSelectionSet {
      public static let possibleTypes = ["Account"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("first_name", type: .nonNull(.scalar(String.self))),
        GraphQLField("last_name", type: .nonNull(.scalar(String.self))),
        GraphQLField("is_discoverable", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("profile", type: .object(Profile.selections)),
        GraphQLField("location", type: .object(Location.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("accountProfileId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, firstName: String, lastName: String, isDiscoverable: Bool, profile: Profile? = nil, location: Location? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, accountProfileId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Account", "id": id, "user_id": userId, "first_name": firstName, "last_name": lastName, "is_discoverable": isDiscoverable, "profile": profile.flatMap { $0.snapshot }, "location": location.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "accountProfileId": accountProfileId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["user_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "user_id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["first_name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "first_name")
        }
      }

      public var lastName: String {
        get {
          return snapshot["last_name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "last_name")
        }
      }

      public var isDiscoverable: Bool {
        get {
          return snapshot["is_discoverable"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "is_discoverable")
        }
      }

      public var profile: Profile? {
        get {
          return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "profile")
        }
      }

      public var location: Location? {
        get {
          return (snapshot["location"] as? Snapshot).flatMap { Location(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "location")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var accountProfileId: GraphQLID? {
        get {
          return snapshot["accountProfileId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "accountProfileId")
        }
      }

      public struct Profile: GraphQLSelectionSet {
        public static let possibleTypes = ["Profile"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("ethnicities", type: .list(.scalar(String.self))),
          GraphQLField("sexuality", type: .scalar(String.self)),
          GraphQLField("politics", type: .scalar(String.self)),
          GraphQLField("about_prompt_1", type: .scalar(String.self)),
          GraphQLField("about_prompt_2", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
          self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var birthDate: String {
          get {
            return snapshot["birth_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "birth_date")
          }
        }

        public var ethnicities: [String?]? {
          get {
            return snapshot["ethnicities"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "ethnicities")
          }
        }

        public var sexuality: String? {
          get {
            return snapshot["sexuality"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sexuality")
          }
        }

        public var politics: String? {
          get {
            return snapshot["politics"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "politics")
          }
        }

        public var aboutPrompt_1: String? {
          get {
            return snapshot["about_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_1")
          }
        }

        public var aboutPrompt_2: String? {
          get {
            return snapshot["about_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_2")
          }
        }

        public var weeklyPrompt_1: String? {
          get {
            return snapshot["weekly_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
          }
        }

        public var weeklyPrompt_2: String? {
          get {
            return snapshot["weekly_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }
      }

      public struct Location: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("Latitude", type: .nonNull(.scalar(Double.self))),
          GraphQLField("Longitude", type: .nonNull(.scalar(Double.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(latitude: Double, longitude: Double) {
          self.init(snapshot: ["__typename": "Location", "Latitude": latitude, "Longitude": longitude])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latitude: Double {
          get {
            return snapshot["Latitude"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "Latitude")
          }
        }

        public var longitude: Double {
          get {
            return snapshot["Longitude"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "Longitude")
          }
        }
      }
    }
  }
}

public final class OnUpdateAccountSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateAccount($filter: ModelSubscriptionAccountFilterInput) {\n  onUpdateAccount(filter: $filter) {\n    __typename\n    id\n    user_id\n    first_name\n    last_name\n    is_discoverable\n    profile {\n      __typename\n      id\n      birth_date\n      ethnicities\n      sexuality\n      politics\n      about_prompt_1\n      about_prompt_2\n      weekly_prompt_1\n      weekly_prompt_2\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n    }\n    location {\n      __typename\n      Latitude\n      Longitude\n    }\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    accountProfileId\n  }\n}"

  public var filter: ModelSubscriptionAccountFilterInput?

  public init(filter: ModelSubscriptionAccountFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateAccount", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnUpdateAccount.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateAccount: OnUpdateAccount? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateAccount": onUpdateAccount.flatMap { $0.snapshot }])
    }

    public var onUpdateAccount: OnUpdateAccount? {
      get {
        return (snapshot["onUpdateAccount"] as? Snapshot).flatMap { OnUpdateAccount(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateAccount")
      }
    }

    public struct OnUpdateAccount: GraphQLSelectionSet {
      public static let possibleTypes = ["Account"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("first_name", type: .nonNull(.scalar(String.self))),
        GraphQLField("last_name", type: .nonNull(.scalar(String.self))),
        GraphQLField("is_discoverable", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("profile", type: .object(Profile.selections)),
        GraphQLField("location", type: .object(Location.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("accountProfileId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, firstName: String, lastName: String, isDiscoverable: Bool, profile: Profile? = nil, location: Location? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, accountProfileId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Account", "id": id, "user_id": userId, "first_name": firstName, "last_name": lastName, "is_discoverable": isDiscoverable, "profile": profile.flatMap { $0.snapshot }, "location": location.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "accountProfileId": accountProfileId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["user_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "user_id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["first_name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "first_name")
        }
      }

      public var lastName: String {
        get {
          return snapshot["last_name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "last_name")
        }
      }

      public var isDiscoverable: Bool {
        get {
          return snapshot["is_discoverable"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "is_discoverable")
        }
      }

      public var profile: Profile? {
        get {
          return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "profile")
        }
      }

      public var location: Location? {
        get {
          return (snapshot["location"] as? Snapshot).flatMap { Location(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "location")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var accountProfileId: GraphQLID? {
        get {
          return snapshot["accountProfileId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "accountProfileId")
        }
      }

      public struct Profile: GraphQLSelectionSet {
        public static let possibleTypes = ["Profile"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("ethnicities", type: .list(.scalar(String.self))),
          GraphQLField("sexuality", type: .scalar(String.self)),
          GraphQLField("politics", type: .scalar(String.self)),
          GraphQLField("about_prompt_1", type: .scalar(String.self)),
          GraphQLField("about_prompt_2", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
          self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var birthDate: String {
          get {
            return snapshot["birth_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "birth_date")
          }
        }

        public var ethnicities: [String?]? {
          get {
            return snapshot["ethnicities"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "ethnicities")
          }
        }

        public var sexuality: String? {
          get {
            return snapshot["sexuality"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sexuality")
          }
        }

        public var politics: String? {
          get {
            return snapshot["politics"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "politics")
          }
        }

        public var aboutPrompt_1: String? {
          get {
            return snapshot["about_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_1")
          }
        }

        public var aboutPrompt_2: String? {
          get {
            return snapshot["about_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_2")
          }
        }

        public var weeklyPrompt_1: String? {
          get {
            return snapshot["weekly_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
          }
        }

        public var weeklyPrompt_2: String? {
          get {
            return snapshot["weekly_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }
      }

      public struct Location: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("Latitude", type: .nonNull(.scalar(Double.self))),
          GraphQLField("Longitude", type: .nonNull(.scalar(Double.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(latitude: Double, longitude: Double) {
          self.init(snapshot: ["__typename": "Location", "Latitude": latitude, "Longitude": longitude])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latitude: Double {
          get {
            return snapshot["Latitude"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "Latitude")
          }
        }

        public var longitude: Double {
          get {
            return snapshot["Longitude"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "Longitude")
          }
        }
      }
    }
  }
}

public final class OnDeleteAccountSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteAccount($filter: ModelSubscriptionAccountFilterInput) {\n  onDeleteAccount(filter: $filter) {\n    __typename\n    id\n    user_id\n    first_name\n    last_name\n    is_discoverable\n    profile {\n      __typename\n      id\n      birth_date\n      ethnicities\n      sexuality\n      politics\n      about_prompt_1\n      about_prompt_2\n      weekly_prompt_1\n      weekly_prompt_2\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n    }\n    location {\n      __typename\n      Latitude\n      Longitude\n    }\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    accountProfileId\n  }\n}"

  public var filter: ModelSubscriptionAccountFilterInput?

  public init(filter: ModelSubscriptionAccountFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteAccount", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnDeleteAccount.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteAccount: OnDeleteAccount? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteAccount": onDeleteAccount.flatMap { $0.snapshot }])
    }

    public var onDeleteAccount: OnDeleteAccount? {
      get {
        return (snapshot["onDeleteAccount"] as? Snapshot).flatMap { OnDeleteAccount(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteAccount")
      }
    }

    public struct OnDeleteAccount: GraphQLSelectionSet {
      public static let possibleTypes = ["Account"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user_id", type: .nonNull(.scalar(String.self))),
        GraphQLField("first_name", type: .nonNull(.scalar(String.self))),
        GraphQLField("last_name", type: .nonNull(.scalar(String.self))),
        GraphQLField("is_discoverable", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("profile", type: .object(Profile.selections)),
        GraphQLField("location", type: .object(Location.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("accountProfileId", type: .scalar(GraphQLID.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: String, firstName: String, lastName: String, isDiscoverable: Bool, profile: Profile? = nil, location: Location? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, accountProfileId: GraphQLID? = nil) {
        self.init(snapshot: ["__typename": "Account", "id": id, "user_id": userId, "first_name": firstName, "last_name": lastName, "is_discoverable": isDiscoverable, "profile": profile.flatMap { $0.snapshot }, "location": location.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "accountProfileId": accountProfileId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["user_id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "user_id")
        }
      }

      public var firstName: String {
        get {
          return snapshot["first_name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "first_name")
        }
      }

      public var lastName: String {
        get {
          return snapshot["last_name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "last_name")
        }
      }

      public var isDiscoverable: Bool {
        get {
          return snapshot["is_discoverable"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "is_discoverable")
        }
      }

      public var profile: Profile? {
        get {
          return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "profile")
        }
      }

      public var location: Location? {
        get {
          return (snapshot["location"] as? Snapshot).flatMap { Location(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "location")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var accountProfileId: GraphQLID? {
        get {
          return snapshot["accountProfileId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "accountProfileId")
        }
      }

      public struct Profile: GraphQLSelectionSet {
        public static let possibleTypes = ["Profile"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("ethnicities", type: .list(.scalar(String.self))),
          GraphQLField("sexuality", type: .scalar(String.self)),
          GraphQLField("politics", type: .scalar(String.self)),
          GraphQLField("about_prompt_1", type: .scalar(String.self)),
          GraphQLField("about_prompt_2", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
          GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
          self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var birthDate: String {
          get {
            return snapshot["birth_date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "birth_date")
          }
        }

        public var ethnicities: [String?]? {
          get {
            return snapshot["ethnicities"] as? [String?]
          }
          set {
            snapshot.updateValue(newValue, forKey: "ethnicities")
          }
        }

        public var sexuality: String? {
          get {
            return snapshot["sexuality"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sexuality")
          }
        }

        public var politics: String? {
          get {
            return snapshot["politics"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "politics")
          }
        }

        public var aboutPrompt_1: String? {
          get {
            return snapshot["about_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_1")
          }
        }

        public var aboutPrompt_2: String? {
          get {
            return snapshot["about_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "about_prompt_2")
          }
        }

        public var weeklyPrompt_1: String? {
          get {
            return snapshot["weekly_prompt_1"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
          }
        }

        public var weeklyPrompt_2: String? {
          get {
            return snapshot["weekly_prompt_2"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }
      }

      public struct Location: GraphQLSelectionSet {
        public static let possibleTypes = ["Location"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("Latitude", type: .nonNull(.scalar(Double.self))),
          GraphQLField("Longitude", type: .nonNull(.scalar(Double.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(latitude: Double, longitude: Double) {
          self.init(snapshot: ["__typename": "Location", "Latitude": latitude, "Longitude": longitude])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var latitude: Double {
          get {
            return snapshot["Latitude"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "Latitude")
          }
        }

        public var longitude: Double {
          get {
            return snapshot["Longitude"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "Longitude")
          }
        }
      }
    }
  }
}

public final class OnCreateProfileSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateProfile($filter: ModelSubscriptionProfileFilterInput) {\n  onCreateProfile(filter: $filter) {\n    __typename\n    id\n    birth_date\n    ethnicities\n    sexuality\n    politics\n    about_prompt_1\n    about_prompt_2\n    weekly_prompt_1\n    weekly_prompt_2\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n  }\n}"

  public var filter: ModelSubscriptionProfileFilterInput?

  public init(filter: ModelSubscriptionProfileFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateProfile", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnCreateProfile.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateProfile: OnCreateProfile? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateProfile": onCreateProfile.flatMap { $0.snapshot }])
    }

    public var onCreateProfile: OnCreateProfile? {
      get {
        return (snapshot["onCreateProfile"] as? Snapshot).flatMap { OnCreateProfile(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateProfile")
      }
    }

    public struct OnCreateProfile: GraphQLSelectionSet {
      public static let possibleTypes = ["Profile"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("ethnicities", type: .list(.scalar(String.self))),
        GraphQLField("sexuality", type: .scalar(String.self)),
        GraphQLField("politics", type: .scalar(String.self)),
        GraphQLField("about_prompt_1", type: .scalar(String.self)),
        GraphQLField("about_prompt_2", type: .scalar(String.self)),
        GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
        GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
        self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var birthDate: String {
        get {
          return snapshot["birth_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birth_date")
        }
      }

      public var ethnicities: [String?]? {
        get {
          return snapshot["ethnicities"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "ethnicities")
        }
      }

      public var sexuality: String? {
        get {
          return snapshot["sexuality"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sexuality")
        }
      }

      public var politics: String? {
        get {
          return snapshot["politics"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "politics")
        }
      }

      public var aboutPrompt_1: String? {
        get {
          return snapshot["about_prompt_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "about_prompt_1")
        }
      }

      public var aboutPrompt_2: String? {
        get {
          return snapshot["about_prompt_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "about_prompt_2")
        }
      }

      public var weeklyPrompt_1: String? {
        get {
          return snapshot["weekly_prompt_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
        }
      }

      public var weeklyPrompt_2: String? {
        get {
          return snapshot["weekly_prompt_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }
    }
  }
}

public final class OnUpdateProfileSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateProfile($filter: ModelSubscriptionProfileFilterInput) {\n  onUpdateProfile(filter: $filter) {\n    __typename\n    id\n    birth_date\n    ethnicities\n    sexuality\n    politics\n    about_prompt_1\n    about_prompt_2\n    weekly_prompt_1\n    weekly_prompt_2\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n  }\n}"

  public var filter: ModelSubscriptionProfileFilterInput?

  public init(filter: ModelSubscriptionProfileFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateProfile", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnUpdateProfile.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateProfile: OnUpdateProfile? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateProfile": onUpdateProfile.flatMap { $0.snapshot }])
    }

    public var onUpdateProfile: OnUpdateProfile? {
      get {
        return (snapshot["onUpdateProfile"] as? Snapshot).flatMap { OnUpdateProfile(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateProfile")
      }
    }

    public struct OnUpdateProfile: GraphQLSelectionSet {
      public static let possibleTypes = ["Profile"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("ethnicities", type: .list(.scalar(String.self))),
        GraphQLField("sexuality", type: .scalar(String.self)),
        GraphQLField("politics", type: .scalar(String.self)),
        GraphQLField("about_prompt_1", type: .scalar(String.self)),
        GraphQLField("about_prompt_2", type: .scalar(String.self)),
        GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
        GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
        self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var birthDate: String {
        get {
          return snapshot["birth_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birth_date")
        }
      }

      public var ethnicities: [String?]? {
        get {
          return snapshot["ethnicities"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "ethnicities")
        }
      }

      public var sexuality: String? {
        get {
          return snapshot["sexuality"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sexuality")
        }
      }

      public var politics: String? {
        get {
          return snapshot["politics"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "politics")
        }
      }

      public var aboutPrompt_1: String? {
        get {
          return snapshot["about_prompt_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "about_prompt_1")
        }
      }

      public var aboutPrompt_2: String? {
        get {
          return snapshot["about_prompt_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "about_prompt_2")
        }
      }

      public var weeklyPrompt_1: String? {
        get {
          return snapshot["weekly_prompt_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
        }
      }

      public var weeklyPrompt_2: String? {
        get {
          return snapshot["weekly_prompt_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }
    }
  }
}

public final class OnDeleteProfileSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteProfile($filter: ModelSubscriptionProfileFilterInput) {\n  onDeleteProfile(filter: $filter) {\n    __typename\n    id\n    birth_date\n    ethnicities\n    sexuality\n    politics\n    about_prompt_1\n    about_prompt_2\n    weekly_prompt_1\n    weekly_prompt_2\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n  }\n}"

  public var filter: ModelSubscriptionProfileFilterInput?

  public init(filter: ModelSubscriptionProfileFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteProfile", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnDeleteProfile.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteProfile: OnDeleteProfile? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteProfile": onDeleteProfile.flatMap { $0.snapshot }])
    }

    public var onDeleteProfile: OnDeleteProfile? {
      get {
        return (snapshot["onDeleteProfile"] as? Snapshot).flatMap { OnDeleteProfile(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteProfile")
      }
    }

    public struct OnDeleteProfile: GraphQLSelectionSet {
      public static let possibleTypes = ["Profile"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("birth_date", type: .nonNull(.scalar(String.self))),
        GraphQLField("ethnicities", type: .list(.scalar(String.self))),
        GraphQLField("sexuality", type: .scalar(String.self)),
        GraphQLField("politics", type: .scalar(String.self)),
        GraphQLField("about_prompt_1", type: .scalar(String.self)),
        GraphQLField("about_prompt_2", type: .scalar(String.self)),
        GraphQLField("weekly_prompt_1", type: .scalar(String.self)),
        GraphQLField("weekly_prompt_2", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, birthDate: String, ethnicities: [String?]? = nil, sexuality: String? = nil, politics: String? = nil, aboutPrompt_1: String? = nil, aboutPrompt_2: String? = nil, weeklyPrompt_1: String? = nil, weeklyPrompt_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
        self.init(snapshot: ["__typename": "Profile", "id": id, "birth_date": birthDate, "ethnicities": ethnicities, "sexuality": sexuality, "politics": politics, "about_prompt_1": aboutPrompt_1, "about_prompt_2": aboutPrompt_2, "weekly_prompt_1": weeklyPrompt_1, "weekly_prompt_2": weeklyPrompt_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var birthDate: String {
        get {
          return snapshot["birth_date"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birth_date")
        }
      }

      public var ethnicities: [String?]? {
        get {
          return snapshot["ethnicities"] as? [String?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "ethnicities")
        }
      }

      public var sexuality: String? {
        get {
          return snapshot["sexuality"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sexuality")
        }
      }

      public var politics: String? {
        get {
          return snapshot["politics"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "politics")
        }
      }

      public var aboutPrompt_1: String? {
        get {
          return snapshot["about_prompt_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "about_prompt_1")
        }
      }

      public var aboutPrompt_2: String? {
        get {
          return snapshot["about_prompt_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "about_prompt_2")
        }
      }

      public var weeklyPrompt_1: String? {
        get {
          return snapshot["weekly_prompt_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "weekly_prompt_1")
        }
      }

      public var weeklyPrompt_2: String? {
        get {
          return snapshot["weekly_prompt_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "weekly_prompt_2")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }
    }
  }
}

public final class OnCreateMatchSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateMatch($filter: ModelSubscriptionMatchFilterInput) {\n  onCreateMatch(filter: $filter) {\n    __typename\n    id\n    account_id_1\n    account_id_2\n    accepted_by_1\n    accepted_by_2\n    cancelled\n    cancelled_id\n    arrived_1\n    arrived_2\n    met\n    feedback_1\n    feedback_2\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n  }\n}"

  public var filter: ModelSubscriptionMatchFilterInput?

  public init(filter: ModelSubscriptionMatchFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateMatch", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnCreateMatch.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateMatch: OnCreateMatch? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateMatch": onCreateMatch.flatMap { $0.snapshot }])
    }

    public var onCreateMatch: OnCreateMatch? {
      get {
        return (snapshot["onCreateMatch"] as? Snapshot).flatMap { OnCreateMatch(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateMatch")
      }
    }

    public struct OnCreateMatch: GraphQLSelectionSet {
      public static let possibleTypes = ["Match"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("account_id_1", type: .nonNull(.scalar(String.self))),
        GraphQLField("account_id_2", type: .nonNull(.scalar(String.self))),
        GraphQLField("accepted_by_1", type: .scalar(Bool.self)),
        GraphQLField("accepted_by_2", type: .scalar(Bool.self)),
        GraphQLField("cancelled", type: .scalar(Bool.self)),
        GraphQLField("cancelled_id", type: .scalar(String.self)),
        GraphQLField("arrived_1", type: .scalar(Bool.self)),
        GraphQLField("arrived_2", type: .scalar(Bool.self)),
        GraphQLField("met", type: .scalar(Bool.self)),
        GraphQLField("feedback_1", type: .scalar(String.self)),
        GraphQLField("feedback_2", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, accountId_1: String, accountId_2: String, acceptedBy_1: Bool? = nil, acceptedBy_2: Bool? = nil, cancelled: Bool? = nil, cancelledId: String? = nil, arrived_1: Bool? = nil, arrived_2: Bool? = nil, met: Bool? = nil, feedback_1: String? = nil, feedback_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
        self.init(snapshot: ["__typename": "Match", "id": id, "account_id_1": accountId_1, "account_id_2": accountId_2, "accepted_by_1": acceptedBy_1, "accepted_by_2": acceptedBy_2, "cancelled": cancelled, "cancelled_id": cancelledId, "arrived_1": arrived_1, "arrived_2": arrived_2, "met": met, "feedback_1": feedback_1, "feedback_2": feedback_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var accountId_1: String {
        get {
          return snapshot["account_id_1"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "account_id_1")
        }
      }

      public var accountId_2: String {
        get {
          return snapshot["account_id_2"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "account_id_2")
        }
      }

      public var acceptedBy_1: Bool? {
        get {
          return snapshot["accepted_by_1"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accepted_by_1")
        }
      }

      public var acceptedBy_2: Bool? {
        get {
          return snapshot["accepted_by_2"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accepted_by_2")
        }
      }

      public var cancelled: Bool? {
        get {
          return snapshot["cancelled"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "cancelled")
        }
      }

      public var cancelledId: String? {
        get {
          return snapshot["cancelled_id"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "cancelled_id")
        }
      }

      public var arrived_1: Bool? {
        get {
          return snapshot["arrived_1"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrived_1")
        }
      }

      public var arrived_2: Bool? {
        get {
          return snapshot["arrived_2"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrived_2")
        }
      }

      public var met: Bool? {
        get {
          return snapshot["met"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "met")
        }
      }

      public var feedback_1: String? {
        get {
          return snapshot["feedback_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "feedback_1")
        }
      }

      public var feedback_2: String? {
        get {
          return snapshot["feedback_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "feedback_2")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }
    }
  }
}

public final class OnUpdateMatchSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateMatch($filter: ModelSubscriptionMatchFilterInput) {\n  onUpdateMatch(filter: $filter) {\n    __typename\n    id\n    account_id_1\n    account_id_2\n    accepted_by_1\n    accepted_by_2\n    cancelled\n    cancelled_id\n    arrived_1\n    arrived_2\n    met\n    feedback_1\n    feedback_2\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n  }\n}"

  public var filter: ModelSubscriptionMatchFilterInput?

  public init(filter: ModelSubscriptionMatchFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateMatch", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnUpdateMatch.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateMatch: OnUpdateMatch? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateMatch": onUpdateMatch.flatMap { $0.snapshot }])
    }

    public var onUpdateMatch: OnUpdateMatch? {
      get {
        return (snapshot["onUpdateMatch"] as? Snapshot).flatMap { OnUpdateMatch(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateMatch")
      }
    }

    public struct OnUpdateMatch: GraphQLSelectionSet {
      public static let possibleTypes = ["Match"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("account_id_1", type: .nonNull(.scalar(String.self))),
        GraphQLField("account_id_2", type: .nonNull(.scalar(String.self))),
        GraphQLField("accepted_by_1", type: .scalar(Bool.self)),
        GraphQLField("accepted_by_2", type: .scalar(Bool.self)),
        GraphQLField("cancelled", type: .scalar(Bool.self)),
        GraphQLField("cancelled_id", type: .scalar(String.self)),
        GraphQLField("arrived_1", type: .scalar(Bool.self)),
        GraphQLField("arrived_2", type: .scalar(Bool.self)),
        GraphQLField("met", type: .scalar(Bool.self)),
        GraphQLField("feedback_1", type: .scalar(String.self)),
        GraphQLField("feedback_2", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, accountId_1: String, accountId_2: String, acceptedBy_1: Bool? = nil, acceptedBy_2: Bool? = nil, cancelled: Bool? = nil, cancelledId: String? = nil, arrived_1: Bool? = nil, arrived_2: Bool? = nil, met: Bool? = nil, feedback_1: String? = nil, feedback_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
        self.init(snapshot: ["__typename": "Match", "id": id, "account_id_1": accountId_1, "account_id_2": accountId_2, "accepted_by_1": acceptedBy_1, "accepted_by_2": acceptedBy_2, "cancelled": cancelled, "cancelled_id": cancelledId, "arrived_1": arrived_1, "arrived_2": arrived_2, "met": met, "feedback_1": feedback_1, "feedback_2": feedback_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var accountId_1: String {
        get {
          return snapshot["account_id_1"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "account_id_1")
        }
      }

      public var accountId_2: String {
        get {
          return snapshot["account_id_2"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "account_id_2")
        }
      }

      public var acceptedBy_1: Bool? {
        get {
          return snapshot["accepted_by_1"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accepted_by_1")
        }
      }

      public var acceptedBy_2: Bool? {
        get {
          return snapshot["accepted_by_2"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accepted_by_2")
        }
      }

      public var cancelled: Bool? {
        get {
          return snapshot["cancelled"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "cancelled")
        }
      }

      public var cancelledId: String? {
        get {
          return snapshot["cancelled_id"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "cancelled_id")
        }
      }

      public var arrived_1: Bool? {
        get {
          return snapshot["arrived_1"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrived_1")
        }
      }

      public var arrived_2: Bool? {
        get {
          return snapshot["arrived_2"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrived_2")
        }
      }

      public var met: Bool? {
        get {
          return snapshot["met"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "met")
        }
      }

      public var feedback_1: String? {
        get {
          return snapshot["feedback_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "feedback_1")
        }
      }

      public var feedback_2: String? {
        get {
          return snapshot["feedback_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "feedback_2")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }
    }
  }
}

public final class OnDeleteMatchSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteMatch($filter: ModelSubscriptionMatchFilterInput) {\n  onDeleteMatch(filter: $filter) {\n    __typename\n    id\n    account_id_1\n    account_id_2\n    accepted_by_1\n    accepted_by_2\n    cancelled\n    cancelled_id\n    arrived_1\n    arrived_2\n    met\n    feedback_1\n    feedback_2\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n  }\n}"

  public var filter: ModelSubscriptionMatchFilterInput?

  public init(filter: ModelSubscriptionMatchFilterInput? = nil) {
    self.filter = filter
  }

  public var variables: GraphQLMap? {
    return ["filter": filter]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteMatch", arguments: ["filter": GraphQLVariable("filter")], type: .object(OnDeleteMatch.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteMatch: OnDeleteMatch? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteMatch": onDeleteMatch.flatMap { $0.snapshot }])
    }

    public var onDeleteMatch: OnDeleteMatch? {
      get {
        return (snapshot["onDeleteMatch"] as? Snapshot).flatMap { OnDeleteMatch(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteMatch")
      }
    }

    public struct OnDeleteMatch: GraphQLSelectionSet {
      public static let possibleTypes = ["Match"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("account_id_1", type: .nonNull(.scalar(String.self))),
        GraphQLField("account_id_2", type: .nonNull(.scalar(String.self))),
        GraphQLField("accepted_by_1", type: .scalar(Bool.self)),
        GraphQLField("accepted_by_2", type: .scalar(Bool.self)),
        GraphQLField("cancelled", type: .scalar(Bool.self)),
        GraphQLField("cancelled_id", type: .scalar(String.self)),
        GraphQLField("arrived_1", type: .scalar(Bool.self)),
        GraphQLField("arrived_2", type: .scalar(Bool.self)),
        GraphQLField("met", type: .scalar(Bool.self)),
        GraphQLField("feedback_1", type: .scalar(String.self)),
        GraphQLField("feedback_2", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, accountId_1: String, accountId_2: String, acceptedBy_1: Bool? = nil, acceptedBy_2: Bool? = nil, cancelled: Bool? = nil, cancelledId: String? = nil, arrived_1: Bool? = nil, arrived_2: Bool? = nil, met: Bool? = nil, feedback_1: String? = nil, feedback_2: String? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int) {
        self.init(snapshot: ["__typename": "Match", "id": id, "account_id_1": accountId_1, "account_id_2": accountId_2, "accepted_by_1": acceptedBy_1, "accepted_by_2": acceptedBy_2, "cancelled": cancelled, "cancelled_id": cancelledId, "arrived_1": arrived_1, "arrived_2": arrived_2, "met": met, "feedback_1": feedback_1, "feedback_2": feedback_2, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var accountId_1: String {
        get {
          return snapshot["account_id_1"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "account_id_1")
        }
      }

      public var accountId_2: String {
        get {
          return snapshot["account_id_2"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "account_id_2")
        }
      }

      public var acceptedBy_1: Bool? {
        get {
          return snapshot["accepted_by_1"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accepted_by_1")
        }
      }

      public var acceptedBy_2: Bool? {
        get {
          return snapshot["accepted_by_2"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "accepted_by_2")
        }
      }

      public var cancelled: Bool? {
        get {
          return snapshot["cancelled"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "cancelled")
        }
      }

      public var cancelledId: String? {
        get {
          return snapshot["cancelled_id"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "cancelled_id")
        }
      }

      public var arrived_1: Bool? {
        get {
          return snapshot["arrived_1"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrived_1")
        }
      }

      public var arrived_2: Bool? {
        get {
          return snapshot["arrived_2"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "arrived_2")
        }
      }

      public var met: Bool? {
        get {
          return snapshot["met"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "met")
        }
      }

      public var feedback_1: String? {
        get {
          return snapshot["feedback_1"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "feedback_1")
        }
      }

      public var feedback_2: String? {
        get {
          return snapshot["feedback_2"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "feedback_2")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }
    }
  }
}