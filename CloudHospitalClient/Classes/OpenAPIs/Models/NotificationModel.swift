//
// NotificationModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NotificationModel: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var notificationCode: NotificationCode?
    public var notificationTargetId: UUID?
    public var senderId: UUID?
    public var senderName: String?
    public var receiverId: UUID?
    public var receiverName: String?
    public var message: String?
    public var createdAt: Date?
    public var isChecked: Bool?
    public var isDeleted: Bool?

    public init(id: UUID? = nil, notificationCode: NotificationCode? = nil, notificationTargetId: UUID? = nil, senderId: UUID? = nil, senderName: String? = nil, receiverId: UUID? = nil, receiverName: String? = nil, message: String? = nil, createdAt: Date? = nil, isChecked: Bool? = nil, isDeleted: Bool? = nil) {
        self.id = id
        self.notificationCode = notificationCode
        self.notificationTargetId = notificationTargetId
        self.senderId = senderId
        self.senderName = senderName
        self.receiverId = receiverId
        self.receiverName = receiverName
        self.message = message
        self.createdAt = createdAt
        self.isChecked = isChecked
        self.isDeleted = isDeleted
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case notificationCode
        case notificationTargetId
        case senderId
        case senderName
        case receiverId
        case receiverName
        case message
        case createdAt
        case isChecked
        case isDeleted
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(notificationCode, forKey: .notificationCode)
        try container.encodeIfPresent(notificationTargetId, forKey: .notificationTargetId)
        try container.encodeIfPresent(senderId, forKey: .senderId)
        try container.encodeIfPresent(senderName, forKey: .senderName)
        try container.encodeIfPresent(receiverId, forKey: .receiverId)
        try container.encodeIfPresent(receiverName, forKey: .receiverName)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(isChecked, forKey: .isChecked)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
    }
}

