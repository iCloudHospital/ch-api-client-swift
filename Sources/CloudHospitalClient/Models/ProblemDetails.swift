//
// ProblemDetails.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProblemDetails: Codable, Hashable {

    public var type: String?
    public var title: String?
    public var status: Int?
    public var detail: String?
    public var instance: String?

    public init(type: String? = nil, title: String? = nil, status: Int? = nil, detail: String? = nil, instance: String? = nil) {
        self.type = type
        self.title = title
        self.status = status
        self.detail = detail
        self.instance = instance
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case title
        case status
        case detail
        case instance
    }

    public var additionalProperties: [String: AnyCodable] = [:]

    public subscript(key: String) -> AnyCodable? {
        get {
            if let value = additionalProperties[key] {
                return value
            }
            return nil
        }

        set {
            additionalProperties[key] = newValue
        }
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(detail, forKey: .detail)
        try container.encodeIfPresent(instance, forKey: .instance)
        var additionalPropertiesContainer = encoder.container(keyedBy: String.self)
        try additionalPropertiesContainer.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        type = try container.decodeIfPresent(String.self, forKey: .type)
        title = try container.decodeIfPresent(String.self, forKey: .title)
        status = try container.decodeIfPresent(Int.self, forKey: .status)
        detail = try container.decodeIfPresent(String.self, forKey: .detail)
        instance = try container.decodeIfPresent(String.self, forKey: .instance)
        var nonAdditionalPropertyKeys = Set<String>()
        nonAdditionalPropertyKeys.insert("type")
        nonAdditionalPropertyKeys.insert("title")
        nonAdditionalPropertyKeys.insert("status")
        nonAdditionalPropertyKeys.insert("detail")
        nonAdditionalPropertyKeys.insert("instance")
        let additionalPropertiesContainer = try decoder.container(keyedBy: String.self)
        additionalProperties = try additionalPropertiesContainer.decodeMap(AnyCodable.self, excludedKeys: nonAdditionalPropertyKeys)
    }
}

