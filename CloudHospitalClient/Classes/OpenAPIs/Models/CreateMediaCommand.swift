//
// CreateMediaCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateMediaCommand: Codable, JSONEncodable, Hashable {

    public var mediaType: MediaType?
    public var url: String?
    public var thumbnailUrl: String?
    public var description: String?
    public var order: Int?

    public init(mediaType: MediaType? = nil, url: String? = nil, thumbnailUrl: String? = nil, description: String? = nil, order: Int? = nil) {
        self.mediaType = mediaType
        self.url = url
        self.thumbnailUrl = thumbnailUrl
        self.description = description
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mediaType
        case url
        case thumbnailUrl
        case description
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(mediaType, forKey: .mediaType)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(thumbnailUrl, forKey: .thumbnailUrl)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(order, forKey: .order)
    }
}
