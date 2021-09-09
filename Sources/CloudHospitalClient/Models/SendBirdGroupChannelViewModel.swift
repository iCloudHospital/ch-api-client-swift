//
// SendBirdGroupChannelViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SendBirdGroupChannelViewModel: Codable, Hashable {

    public var name: String?
    public var channelUrl: String?
    public var coverUrl: String?
    public var customType: String?
    public var unreadMessageCount: Int?
    public var data: String?
    public var isDistinct: Bool?
    public var isPublic: Bool?
    public var isSuper: Bool?
    public var isEphemeral: Bool?
    public var isAccessCodeRequired: Bool?
    public var hiddenState: String?
    public var memberCount: Int?
    public var joinedMemberCount: Int?
    public var members: [SendBirdGroupChannelMember]?
    public var operators: [SendBirdGroupChannelrOperator]?
    public var maxLengthMessage: Int?
    public var lastMessage: AdminMessageViewModel?
    public var createdAt: Int?
    public var freeze: Bool?

    public init(name: String? = nil, channelUrl: String? = nil, coverUrl: String? = nil, customType: String? = nil, unreadMessageCount: Int? = nil, data: String? = nil, isDistinct: Bool? = nil, isPublic: Bool? = nil, isSuper: Bool? = nil, isEphemeral: Bool? = nil, isAccessCodeRequired: Bool? = nil, hiddenState: String? = nil, memberCount: Int? = nil, joinedMemberCount: Int? = nil, members: [SendBirdGroupChannelMember]? = nil, operators: [SendBirdGroupChannelrOperator]? = nil, maxLengthMessage: Int? = nil, lastMessage: AdminMessageViewModel? = nil, createdAt: Int? = nil, freeze: Bool? = nil) {
        self.name = name
        self.channelUrl = channelUrl
        self.coverUrl = coverUrl
        self.customType = customType
        self.unreadMessageCount = unreadMessageCount
        self.data = data
        self.isDistinct = isDistinct
        self.isPublic = isPublic
        self.isSuper = isSuper
        self.isEphemeral = isEphemeral
        self.isAccessCodeRequired = isAccessCodeRequired
        self.hiddenState = hiddenState
        self.memberCount = memberCount
        self.joinedMemberCount = joinedMemberCount
        self.members = members
        self.operators = operators
        self.maxLengthMessage = maxLengthMessage
        self.lastMessage = lastMessage
        self.createdAt = createdAt
        self.freeze = freeze
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case channelUrl = "channel_url"
        case coverUrl = "cover_url"
        case customType = "custom_type"
        case unreadMessageCount = "unread_message_count"
        case data
        case isDistinct = "is_distinct"
        case isPublic = "is_public"
        case isSuper = "is_super"
        case isEphemeral = "is_ephemeral"
        case isAccessCodeRequired = "is_access_code_required"
        case hiddenState = "hidden_state"
        case memberCount = "member_count"
        case joinedMemberCount = "joined_member_count"
        case members
        case operators
        case maxLengthMessage = "max_length_message"
        case lastMessage = "last_message"
        case createdAt = "created_at"
        case freeze
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(channelUrl, forKey: .channelUrl)
        try container.encodeIfPresent(coverUrl, forKey: .coverUrl)
        try container.encodeIfPresent(customType, forKey: .customType)
        try container.encodeIfPresent(unreadMessageCount, forKey: .unreadMessageCount)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(isDistinct, forKey: .isDistinct)
        try container.encodeIfPresent(isPublic, forKey: .isPublic)
        try container.encodeIfPresent(isSuper, forKey: .isSuper)
        try container.encodeIfPresent(isEphemeral, forKey: .isEphemeral)
        try container.encodeIfPresent(isAccessCodeRequired, forKey: .isAccessCodeRequired)
        try container.encodeIfPresent(hiddenState, forKey: .hiddenState)
        try container.encodeIfPresent(memberCount, forKey: .memberCount)
        try container.encodeIfPresent(joinedMemberCount, forKey: .joinedMemberCount)
        try container.encodeIfPresent(members, forKey: .members)
        try container.encodeIfPresent(operators, forKey: .operators)
        try container.encodeIfPresent(maxLengthMessage, forKey: .maxLengthMessage)
        try container.encodeIfPresent(lastMessage, forKey: .lastMessage)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(freeze, forKey: .freeze)
    }
}

