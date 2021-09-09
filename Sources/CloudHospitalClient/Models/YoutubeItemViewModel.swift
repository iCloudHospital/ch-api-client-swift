//
// YoutubeItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct YoutubeItemViewModel: Codable, Hashable {

    public var id: UUID?
    public var title: String?
    public var slug: String?
    public var description: String?
    public var url: String?
    public var youtubeTags: [YoutubeTagItemViewModel]?
    public var marketingType: MarketingType?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, title: String? = nil, slug: String? = nil, description: String? = nil, url: String? = nil, youtubeTags: [YoutubeTagItemViewModel]? = nil, marketingType: MarketingType? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.title = title
        self.slug = slug
        self.description = description
        self.url = url
        self.youtubeTags = youtubeTags
        self.marketingType = marketingType
        self.auditableEntity = auditableEntity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case slug
        case description
        case url
        case youtubeTags
        case marketingType
        case auditableEntity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(youtubeTags, forKey: .youtubeTags)
        try container.encodeIfPresent(marketingType, forKey: .marketingType)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
    }
}

