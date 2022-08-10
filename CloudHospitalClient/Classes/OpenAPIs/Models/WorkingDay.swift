//
// WorkingDay.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct WorkingDay: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var dayOfWeek: String?
    public var timeFrom: Date?
    public var timeTo: Date?
    public var checkHoliday: Bool?

    public init(id: UUID? = nil, dayOfWeek: String? = nil, timeFrom: Date? = nil, timeTo: Date? = nil, checkHoliday: Bool? = nil) {
        self.id = id
        self.dayOfWeek = dayOfWeek
        self.timeFrom = timeFrom
        self.timeTo = timeTo
        self.checkHoliday = checkHoliday
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case dayOfWeek
        case timeFrom
        case timeTo
        case checkHoliday
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(dayOfWeek, forKey: .dayOfWeek)
        try container.encodeIfPresent(timeFrom, forKey: .timeFrom)
        try container.encodeIfPresent(timeTo, forKey: .timeTo)
        try container.encodeIfPresent(checkHoliday, forKey: .checkHoliday)
    }
}

