//
// MediaViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct MediaViewModel: Codable {

    public var id: UUID?
    public var mediaType: MediaType?
    public var url: String?
    public var thumbnailUrl: String?
    public var description: String?
    public var order: Int?

    public init(id: UUID? = nil, mediaType: MediaType? = nil, url: String? = nil, thumbnailUrl: String? = nil, description: String? = nil, order: Int? = nil) {
        self.id = id
        self.mediaType = mediaType
        self.url = url
        self.thumbnailUrl = thumbnailUrl
        self.description = description
        self.order = order
    }

}

