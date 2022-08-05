//
// NotificationsViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NotificationsViewModel: Codable, Hashable {

    public var items: [NotificationViewModel]?
    public var metaData: PagedListMetaData?
    public var unreadCount: Int?

    public init(items: [NotificationViewModel]? = nil, metaData: PagedListMetaData? = nil, unreadCount: Int? = nil) {
        self.items = items
        self.metaData = metaData
        self.unreadCount = unreadCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case items
        case metaData
        case unreadCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(items, forKey: .items)
        try container.encodeIfPresent(metaData, forKey: .metaData)
        try container.encodeIfPresent(unreadCount, forKey: .unreadCount)
    }
}
