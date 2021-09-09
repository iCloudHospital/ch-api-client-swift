//
// CreateDeviceCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateDeviceCommand: Codable, Hashable {

    public var id: UUID?
    public var token: String?
    public var platform: Platform?
    public var tags: [String]?
    public var appAlert: Bool?
    public var eventAlert: Bool?
    public var noticeAlert: Bool?

    public init(id: UUID? = nil, token: String? = nil, platform: Platform? = nil, tags: [String]? = nil, appAlert: Bool? = nil, eventAlert: Bool? = nil, noticeAlert: Bool? = nil) {
        self.id = id
        self.token = token
        self.platform = platform
        self.tags = tags
        self.appAlert = appAlert
        self.eventAlert = eventAlert
        self.noticeAlert = noticeAlert
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case token
        case platform
        case tags
        case appAlert
        case eventAlert
        case noticeAlert
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(token, forKey: .token)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(appAlert, forKey: .appAlert)
        try container.encodeIfPresent(eventAlert, forKey: .eventAlert)
        try container.encodeIfPresent(noticeAlert, forKey: .noticeAlert)
    }
}

