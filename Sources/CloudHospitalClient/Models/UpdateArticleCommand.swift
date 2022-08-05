//
// UpdateArticleCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateArticleCommand: Codable, Hashable {

    public var title: String?
    public var slug: String?
    public var description: String?
    public var body: String?
    public var status: ArticleStatus?
    public var marketingType: MarketingType?
    public var hospitalSlug: String?
    public var youtubeUrl: String?
    public var articleTags: [ArticleTagItemViewModel]?
    public var articleSources: [ArticleSourceItemViewModel]?
    public var articleContributors: [ArticleContributorItemViewModel]?
    public var medias: [MediaViewModel]?

    public init(title: String? = nil, slug: String? = nil, description: String? = nil, body: String? = nil, status: ArticleStatus? = nil, marketingType: MarketingType? = nil, hospitalSlug: String? = nil, youtubeUrl: String? = nil, articleTags: [ArticleTagItemViewModel]? = nil, articleSources: [ArticleSourceItemViewModel]? = nil, articleContributors: [ArticleContributorItemViewModel]? = nil, medias: [MediaViewModel]? = nil) {
        self.title = title
        self.slug = slug
        self.description = description
        self.body = body
        self.status = status
        self.marketingType = marketingType
        self.hospitalSlug = hospitalSlug
        self.youtubeUrl = youtubeUrl
        self.articleTags = articleTags
        self.articleSources = articleSources
        self.articleContributors = articleContributors
        self.medias = medias
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case slug
        case description
        case body
        case status
        case marketingType
        case hospitalSlug
        case youtubeUrl
        case articleTags
        case articleSources
        case articleContributors
        case medias
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(body, forKey: .body)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(marketingType, forKey: .marketingType)
        try container.encodeIfPresent(hospitalSlug, forKey: .hospitalSlug)
        try container.encodeIfPresent(youtubeUrl, forKey: .youtubeUrl)
        try container.encodeIfPresent(articleTags, forKey: .articleTags)
        try container.encodeIfPresent(articleSources, forKey: .articleSources)
        try container.encodeIfPresent(articleContributors, forKey: .articleContributors)
        try container.encodeIfPresent(medias, forKey: .medias)
    }
}
