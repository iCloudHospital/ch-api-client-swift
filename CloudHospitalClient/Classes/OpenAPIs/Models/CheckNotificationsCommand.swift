//
// CheckNotificationsCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CheckNotificationsCommand: Codable {

    public var notificationId: UUID?
    public var isDelete: Bool?

    public init(notificationId: UUID? = nil, isDelete: Bool? = nil) {
        self.notificationId = notificationId
        self.isDelete = isDelete
    }

}

