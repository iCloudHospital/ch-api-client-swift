//
// ArticleItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ArticleItemViewModel: Codable, Hashable {

    public var id: UUID?
    public var title: String?
    public var slug: String?
    public var description: String?
    public var body: String?
    public var status: ArticleStatus?
    public var marketingType: MarketingType?
    public var userId: UUID?
    public var userName: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var hospitalSlug: String?
    public var youtubeUrl: String?
    public var articleTags: [ArticleTagItemViewModel]?
    public var articleSources: [ArticleSourceItemViewModel]?
    public var articleContributors: [ArticleContributorItemViewModel]?
    public var medias: [MediaViewModel]?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, title: String? = nil, slug: String? = nil, description: String? = nil, body: String? = nil, status: ArticleStatus? = nil, marketingType: MarketingType? = nil, userId: UUID? = nil, userName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, youtubeUrl: String? = nil, articleTags: [ArticleTagItemViewModel]? = nil, articleSources: [ArticleSourceItemViewModel]? = nil, articleContributors: [ArticleContributorItemViewModel]? = nil, medias: [MediaViewModel]? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.title = title
        self.slug = slug
        self.description = description
        self.body = body
        self.status = status
        self.marketingType = marketingType
        self.userId = userId
        self.userName = userName
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.hospitalSlug = hospitalSlug
        self.youtubeUrl = youtubeUrl
        self.articleTags = articleTags
        self.articleSources = articleSources
        self.articleContributors = articleContributors
        self.medias = medias
        self.auditableEntity = auditableEntity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case slug
        case description
        case body
        case status
        case marketingType
        case userId
        case userName
        case hospitalId
        case hospitalName
        case hospitalSlug
        case youtubeUrl
        case articleTags
        case articleSources
        case articleContributors
        case medias
        case auditableEntity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(body, forKey: .body)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(marketingType, forKey: .marketingType)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(hospitalId, forKey: .hospitalId)
        try container.encodeIfPresent(hospitalName, forKey: .hospitalName)
        try container.encodeIfPresent(hospitalSlug, forKey: .hospitalSlug)
        try container.encodeIfPresent(youtubeUrl, forKey: .youtubeUrl)
        try container.encodeIfPresent(articleTags, forKey: .articleTags)
        try container.encodeIfPresent(articleSources, forKey: .articleSources)
        try container.encodeIfPresent(articleContributors, forKey: .articleContributors)
        try container.encodeIfPresent(medias, forKey: .medias)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
    }
}

