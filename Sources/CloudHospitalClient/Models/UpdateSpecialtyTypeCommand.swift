//
// UpdateSpecialtyTypeCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateSpecialtyTypeCommand: Codable, Hashable {

    public var name: String?
    public var slug: String?
    public var description: String?
    public var marketingType: MarketingType?
    public var specialtyCount: Int?
    public var hospitalSpecialtyCount: Int?
    public var serviceCount: Int?
    public var created: Date?
    public var content: String?

    public init(name: String? = nil, slug: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, specialtyCount: Int? = nil, hospitalSpecialtyCount: Int? = nil, serviceCount: Int? = nil, created: Date? = nil, content: String? = nil) {
        self.name = name
        self.slug = slug
        self.description = description
        self.marketingType = marketingType
        self.specialtyCount = specialtyCount
        self.hospitalSpecialtyCount = hospitalSpecialtyCount
        self.serviceCount = serviceCount
        self.created = created
        self.content = content
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case slug
        case description
        case marketingType
        case specialtyCount
        case hospitalSpecialtyCount
        case serviceCount
        case created
        case content
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(marketingType, forKey: .marketingType)
        try container.encodeIfPresent(specialtyCount, forKey: .specialtyCount)
        try container.encodeIfPresent(hospitalSpecialtyCount, forKey: .hospitalSpecialtyCount)
        try container.encodeIfPresent(serviceCount, forKey: .serviceCount)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(content, forKey: .content)
    }
}

