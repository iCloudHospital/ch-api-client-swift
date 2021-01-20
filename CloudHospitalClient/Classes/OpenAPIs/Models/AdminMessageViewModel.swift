//
// AdminMessageViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct AdminMessageViewModel: Codable {

    public var messageId: Int?
    public var type: String?
    public var customType: String?
    public var channelUrl: String?
    public var mentionType: String?
    public var mentionedUsers: [Any]?
    public var isRemoved: Bool?
    public var message: String?
    public var data: String?
    public var createdAt: Int64?
    public var updatedAt: Int?

    public init(messageId: Int? = nil, type: String? = nil, customType: String? = nil, channelUrl: String? = nil, mentionType: String? = nil, mentionedUsers: [Any]? = nil, isRemoved: Bool? = nil, message: String? = nil, data: String? = nil, createdAt: Int64? = nil, updatedAt: Int? = nil) {
        self.messageId = messageId
        self.type = type
        self.customType = customType
        self.channelUrl = channelUrl
        self.mentionType = mentionType
        self.mentionedUsers = mentionedUsers
        self.isRemoved = isRemoved
        self.message = message
        self.data = data
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case messageId = "message_id"
        case type
        case customType = "custom_type"
        case channelUrl = "channel_url"
        case mentionType = "mention_type"
        case mentionedUsers = "mentioned_users"
        case isRemoved = "is_removed"
        case message
        case data
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

}

