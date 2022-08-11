//
// UpdateDeviceCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateDeviceCommand: Codable, JSONEncodable, Hashable {

    public var token: String?
    public var tags: [String]?
    public var appAlert: Bool?
    public var eventAlert: Bool?
    public var noticeAlert: Bool?

    public init(token: String? = nil, tags: [String]? = nil, appAlert: Bool? = nil, eventAlert: Bool? = nil, noticeAlert: Bool? = nil) {
        self.token = token
        self.tags = tags
        self.appAlert = appAlert
        self.eventAlert = eventAlert
        self.noticeAlert = noticeAlert
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case token
        case tags
        case appAlert
        case eventAlert
        case noticeAlert
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(token, forKey: .token)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(appAlert, forKey: .appAlert)
        try container.encodeIfPresent(eventAlert, forKey: .eventAlert)
        try container.encodeIfPresent(noticeAlert, forKey: .noticeAlert)
    }
}

