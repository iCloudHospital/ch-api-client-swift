//
// Youtube.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Youtube: Codable {

    public var id: UUID?
    public var title: String?
    public var normalizedTitle: String?
    public var slug: String?
    public var description: String?
    public var url: String?
    public var youtubeTags: [YoutubeTag]?
    public var marketingType: MarketingType?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, title: String? = nil, normalizedTitle: String? = nil, slug: String? = nil, description: String? = nil, url: String? = nil, youtubeTags: [YoutubeTag]? = nil, marketingType: MarketingType? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.title = title
        self.normalizedTitle = normalizedTitle
        self.slug = slug
        self.description = description
        self.url = url
        self.youtubeTags = youtubeTags
        self.marketingType = marketingType
        self.auditableEntity = auditableEntity
    }

}

