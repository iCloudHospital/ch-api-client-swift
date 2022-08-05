//
// CheckNotificationsCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CheckNotificationsCommand: Codable, Hashable {

    public var notificationId: UUID?
    public var isDelete: Bool?

    public init(notificationId: UUID? = nil, isDelete: Bool? = nil) {
        self.notificationId = notificationId
        self.isDelete = isDelete
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case notificationId
        case isDelete
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(notificationId, forKey: .notificationId)
        try container.encodeIfPresent(isDelete, forKey: .isDelete)
    }
}
