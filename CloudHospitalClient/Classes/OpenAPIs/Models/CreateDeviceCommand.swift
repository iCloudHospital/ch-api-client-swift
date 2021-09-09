//
// CreateDeviceCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CreateDeviceCommand: Codable {

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

}
