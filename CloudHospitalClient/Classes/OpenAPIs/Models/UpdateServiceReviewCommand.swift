//
// UpdateServiceReviewCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateServiceReviewCommand: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var slug: String?
    public var description: String?
    public var content: String?
    public var languageCode: String?
    public var recommended: Bool?
    public var rate: Int?
    public var confirmed: Bool?

    public init(name: String? = nil, slug: String? = nil, description: String? = nil, content: String? = nil, languageCode: String? = nil, recommended: Bool? = nil, rate: Int? = nil, confirmed: Bool? = nil) {
        self.name = name
        self.slug = slug
        self.description = description
        self.content = content
        self.languageCode = languageCode
        self.recommended = recommended
        self.rate = rate
        self.confirmed = confirmed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case slug
        case description
        case content
        case languageCode
        case recommended
        case rate
        case confirmed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(languageCode, forKey: .languageCode)
        try container.encodeIfPresent(recommended, forKey: .recommended)
        try container.encodeIfPresent(rate, forKey: .rate)
        try container.encodeIfPresent(confirmed, forKey: .confirmed)
    }
}

