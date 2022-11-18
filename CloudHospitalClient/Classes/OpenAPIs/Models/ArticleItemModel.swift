//
// ArticleItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ArticleItemModel: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var languageCode: String?
    public var name: String?
    public var slug: String?
    public var description: String?
    public var confirmed: Bool?
    public var marketingType: MarketingType?
    public var userId: UUID?
    public var userName: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var hospitalSlug: String?
    public var hospitalLogo: String?
    public var youtubeUrl: String?
    public var photo: String?
    public var photoThumbnail: String?
    public var background: String?
    public var backgroundThumbnail: String?
    public var articleTags: [ArticleTagItemModel]?
    public var medias: [MediaModel]?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, languageCode: String? = nil, name: String? = nil, slug: String? = nil, description: String? = nil, confirmed: Bool? = nil, marketingType: MarketingType? = nil, userId: UUID? = nil, userName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, hospitalLogo: String? = nil, youtubeUrl: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, background: String? = nil, backgroundThumbnail: String? = nil, articleTags: [ArticleTagItemModel]? = nil, medias: [MediaModel]? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.languageCode = languageCode
        self.name = name
        self.slug = slug
        self.description = description
        self.confirmed = confirmed
        self.marketingType = marketingType
        self.userId = userId
        self.userName = userName
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.hospitalSlug = hospitalSlug
        self.hospitalLogo = hospitalLogo
        self.youtubeUrl = youtubeUrl
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.background = background
        self.backgroundThumbnail = backgroundThumbnail
        self.articleTags = articleTags
        self.medias = medias
        self.auditableEntity = auditableEntity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case languageCode
        case name
        case slug
        case description
        case confirmed
        case marketingType
        case userId
        case userName
        case hospitalId
        case hospitalName
        case hospitalSlug
        case hospitalLogo
        case youtubeUrl
        case photo
        case photoThumbnail
        case background
        case backgroundThumbnail
        case articleTags
        case medias
        case auditableEntity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(languageCode, forKey: .languageCode)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(confirmed, forKey: .confirmed)
        try container.encodeIfPresent(marketingType, forKey: .marketingType)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(hospitalId, forKey: .hospitalId)
        try container.encodeIfPresent(hospitalName, forKey: .hospitalName)
        try container.encodeIfPresent(hospitalSlug, forKey: .hospitalSlug)
        try container.encodeIfPresent(hospitalLogo, forKey: .hospitalLogo)
        try container.encodeIfPresent(youtubeUrl, forKey: .youtubeUrl)
        try container.encodeIfPresent(photo, forKey: .photo)
        try container.encodeIfPresent(photoThumbnail, forKey: .photoThumbnail)
        try container.encodeIfPresent(background, forKey: .background)
        try container.encodeIfPresent(backgroundThumbnail, forKey: .backgroundThumbnail)
        try container.encodeIfPresent(articleTags, forKey: .articleTags)
        try container.encodeIfPresent(medias, forKey: .medias)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
    }
}

