//
// ChangeLog.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ChangeLog: Codable {

    public var id: UUID?
    public var status: Int?
    public var actorId: UUID?
    public var createdDate: Date?

    public init(id: UUID? = nil, status: Int? = nil, actorId: UUID? = nil, createdDate: Date? = nil) {
        self.id = id
        self.status = status
        self.actorId = actorId
        self.createdDate = createdDate
    }

}
