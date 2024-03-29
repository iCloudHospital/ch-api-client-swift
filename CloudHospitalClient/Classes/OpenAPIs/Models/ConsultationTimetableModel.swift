//
// ConsultationTimetableModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ConsultationTimetableModel: Codable, JSONEncodable, Hashable {

    public var hospitalTimeZone: String?
    public var timeZone: String?
    public var today: Date?
    public var days: [ConsultationTimetableDateModel]?

    public init(hospitalTimeZone: String? = nil, timeZone: String? = nil, today: Date? = nil, days: [ConsultationTimetableDateModel]? = nil) {
        self.hospitalTimeZone = hospitalTimeZone
        self.timeZone = timeZone
        self.today = today
        self.days = days
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hospitalTimeZone
        case timeZone
        case today
        case days
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(hospitalTimeZone, forKey: .hospitalTimeZone)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(today, forKey: .today)
        try container.encodeIfPresent(days, forKey: .days)
    }
}

