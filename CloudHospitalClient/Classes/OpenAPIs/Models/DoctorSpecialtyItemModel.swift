//
// DoctorSpecialtyItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DoctorSpecialtyItemModel: Codable, JSONEncodable, Hashable {

    public var languageCode: String?
    public var specialtyId: UUID?
    public var specialtyName: String?
    public var specialtySlug: String?
    public var order: Int?

    public init(languageCode: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtySlug: String? = nil, order: Int? = nil) {
        self.languageCode = languageCode
        self.specialtyId = specialtyId
        self.specialtyName = specialtyName
        self.specialtySlug = specialtySlug
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case languageCode
        case specialtyId
        case specialtyName
        case specialtySlug
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(languageCode, forKey: .languageCode)
        try container.encodeIfPresent(specialtyId, forKey: .specialtyId)
        try container.encodeIfPresent(specialtyName, forKey: .specialtyName)
        try container.encodeIfPresent(specialtySlug, forKey: .specialtySlug)
        try container.encodeIfPresent(order, forKey: .order)
    }
}

