//
// YoutubeTag.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct YoutubeTag: Codable {

    public var youtubeId: UUID?
    public var youtube: Youtube?
    public var tagId: String?
    public var tag: Tag?
    public var order: Int?

    public init(youtubeId: UUID? = nil, youtube: Youtube? = nil, tagId: String? = nil, tag: Tag? = nil, order: Int? = nil) {
        self.youtubeId = youtubeId
        self.youtube = youtube
        self.tagId = tagId
        self.tag = tag
        self.order = order
    }

}

