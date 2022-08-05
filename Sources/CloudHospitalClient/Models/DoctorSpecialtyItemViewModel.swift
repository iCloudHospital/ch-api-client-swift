//
// DoctorSpecialtyItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DoctorSpecialtyItemViewModel: Codable, Hashable {

    public var specialtyId: UUID?
    public var specialtyName: String?
    public var specialtySlug: String?
    public var specialtyTypeId: UUID?
    public var specialtyTypeName: String?
    public var order: Int?

    public init(specialtyId: UUID? = nil, specialtyName: String? = nil, specialtySlug: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, order: Int? = nil) {
        self.specialtyId = specialtyId
        self.specialtyName = specialtyName
        self.specialtySlug = specialtySlug
        self.specialtyTypeId = specialtyTypeId
        self.specialtyTypeName = specialtyTypeName
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case specialtyId
        case specialtyName
        case specialtySlug
        case specialtyTypeId
        case specialtyTypeName
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(specialtyId, forKey: .specialtyId)
        try container.encodeIfPresent(specialtyName, forKey: .specialtyName)
        try container.encodeIfPresent(specialtySlug, forKey: .specialtySlug)
        try container.encodeIfPresent(specialtyTypeId, forKey: .specialtyTypeId)
        try container.encodeIfPresent(specialtyTypeName, forKey: .specialtyTypeName)
        try container.encodeIfPresent(order, forKey: .order)
    }
}
