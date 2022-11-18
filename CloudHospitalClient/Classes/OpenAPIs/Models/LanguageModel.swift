//
// LanguageModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LanguageModel: Codable, JSONEncodable, Hashable {

    public var code: String?
    public var name: String?
    public var localizedName: String?
    public var description: String?
    public var published: Bool?
    public var order: Int?

    public init(code: String? = nil, name: String? = nil, localizedName: String? = nil, description: String? = nil, published: Bool? = nil, order: Int? = nil) {
        self.code = code
        self.name = name
        self.localizedName = localizedName
        self.description = description
        self.published = published
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case name
        case localizedName
        case description
        case published
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(localizedName, forKey: .localizedName)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(published, forKey: .published)
        try container.encodeIfPresent(order, forKey: .order)
    }
}

