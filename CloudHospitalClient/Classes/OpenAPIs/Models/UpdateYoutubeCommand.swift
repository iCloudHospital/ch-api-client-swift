//
// UpdateYoutubeCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UpdateYoutubeCommand: Codable {

    public var title: String?
    public var slug: String?
    public var description: String?
    public var url: String?
    public var youtubeTags: [YoutubeTagItemViewModel]?
    public var marketingType: MarketingType?

    public init(title: String? = nil, slug: String? = nil, description: String? = nil, url: String? = nil, youtubeTags: [YoutubeTagItemViewModel]? = nil, marketingType: MarketingType? = nil) {
        self.title = title
        self.slug = slug
        self.description = description
        self.url = url
        self.youtubeTags = youtubeTags
        self.marketingType = marketingType
    }

}

