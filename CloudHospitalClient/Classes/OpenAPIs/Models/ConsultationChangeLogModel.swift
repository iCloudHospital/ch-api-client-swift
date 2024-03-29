//
// ConsultationChangeLogModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ConsultationChangeLogModel: Codable, JSONEncodable, Hashable {

    public var status: ConsultationStatus?
    public var actorId: UUID?
    public var createdDate: Date?
    public var actorName: String?

    public init(status: ConsultationStatus? = nil, actorId: UUID? = nil, createdDate: Date? = nil, actorName: String? = nil) {
        self.status = status
        self.actorId = actorId
        self.createdDate = createdDate
        self.actorName = actorName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case actorId
        case createdDate
        case actorName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(actorId, forKey: .actorId)
        try container.encodeIfPresent(createdDate, forKey: .createdDate)
        try container.encodeIfPresent(actorName, forKey: .actorName)
    }
}

