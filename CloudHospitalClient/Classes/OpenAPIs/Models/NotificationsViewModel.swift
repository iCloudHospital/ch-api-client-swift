//
// NotificationsViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct NotificationsViewModel: Codable {

    public var items: [NotificationViewModel]?
    public var metaData: PagedListMetaData?
    public var unreadCount: Int?

    public init(items: [NotificationViewModel]? = nil, metaData: PagedListMetaData? = nil, unreadCount: Int? = nil) {
        self.items = items
        self.metaData = metaData
        self.unreadCount = unreadCount
    }

}

