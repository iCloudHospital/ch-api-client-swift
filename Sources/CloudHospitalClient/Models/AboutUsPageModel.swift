//
// AboutUsPageModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AboutUsPageModel: Codable, Hashable {

    public var id: UUID?
    public var languageCode: String?
    public var name: String?
    public var slug: String?
    public var confirmed: Bool?
    public var auditableEntity: AuditableEntity?
    public var description: String?
    public var overview: String?
    public var content: String?
    public var customStyle: String?
    public var background: String?
    public var backgroundThumbnail: String?
    public var localizedUrls: [LocalizedUrlModel]?
    public var medias: [MediaModel]?

    public init(id: UUID? = nil, languageCode: String? = nil, name: String? = nil, slug: String? = nil, confirmed: Bool? = nil, auditableEntity: AuditableEntity? = nil, description: String? = nil, overview: String? = nil, content: String? = nil, customStyle: String? = nil, background: String? = nil, backgroundThumbnail: String? = nil, localizedUrls: [LocalizedUrlModel]? = nil, medias: [MediaModel]? = nil) {
        self.id = id
        self.languageCode = languageCode
        self.name = name
        self.slug = slug
        self.confirmed = confirmed
        self.auditableEntity = auditableEntity
        self.description = description
        self.overview = overview
        self.content = content
        self.customStyle = customStyle
        self.background = background
        self.backgroundThumbnail = backgroundThumbnail
        self.localizedUrls = localizedUrls
        self.medias = medias
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case languageCode
        case name
        case slug
        case confirmed
        case auditableEntity
        case description
        case overview
        case content
        case customStyle
        case background
        case backgroundThumbnail
        case localizedUrls
        case medias
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(languageCode, forKey: .languageCode)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(confirmed, forKey: .confirmed)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(overview, forKey: .overview)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(customStyle, forKey: .customStyle)
        try container.encodeIfPresent(background, forKey: .background)
        try container.encodeIfPresent(backgroundThumbnail, forKey: .backgroundThumbnail)
        try container.encodeIfPresent(localizedUrls, forKey: .localizedUrls)
        try container.encodeIfPresent(medias, forKey: .medias)
    }
}

