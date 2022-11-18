//
// ConsultationTimetableTimeSlotModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ConsultationTimetableTimeSlotModel: Codable, JSONEncodable, Hashable {

    public var startTime: Date?
    public var endTime: Date?
    public var status: ConsultationTimetableStatus?
    public var isOverrided: Bool?
    public var isBooked: Bool?
    public var isAvailable: Bool?

    public init(startTime: Date? = nil, endTime: Date? = nil, status: ConsultationTimetableStatus? = nil, isOverrided: Bool? = nil, isBooked: Bool? = nil, isAvailable: Bool? = nil) {
        self.startTime = startTime
        self.endTime = endTime
        self.status = status
        self.isOverrided = isOverrided
        self.isBooked = isBooked
        self.isAvailable = isAvailable
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case startTime
        case endTime
        case status
        case isOverrided
        case isBooked
        case isAvailable
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(startTime, forKey: .startTime)
        try container.encodeIfPresent(endTime, forKey: .endTime)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(isOverrided, forKey: .isOverrided)
        try container.encodeIfPresent(isBooked, forKey: .isBooked)
        try container.encodeIfPresent(isAvailable, forKey: .isAvailable)
    }
}

