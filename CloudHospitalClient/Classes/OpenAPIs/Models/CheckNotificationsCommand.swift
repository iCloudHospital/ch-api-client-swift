//
// CheckNotificationsCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CheckNotificationsCommand: Codable {

    public var notificationId: UUID?
    public var delete: Bool?

    public init(notificationId: UUID? = nil, delete: Bool? = nil) {
        self.notificationId = notificationId
        self.delete = delete
    }

}
