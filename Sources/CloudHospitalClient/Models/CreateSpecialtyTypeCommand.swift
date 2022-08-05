//
// CreateSpecialtyTypeCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateSpecialtyTypeCommand: Codable, Hashable {

    public var name: String?
    public var description: String?
    public var content: String?
    public var marketingType: MarketingType?

    public init(name: String? = nil, description: String? = nil, content: String? = nil, marketingType: MarketingType? = nil) {
        self.name = name
        self.description = description
        self.content = content
        self.marketingType = marketingType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case content
        case marketingType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(marketingType, forKey: .marketingType)
    }
}
