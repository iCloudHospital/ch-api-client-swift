//
// HospitalSpecialtyItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct HospitalSpecialtyItemViewModel: Codable, Hashable {

    public var hospitalId: UUID?
    public var hospitalName: String?
    public var hospitalSlug: String?
    public var specialtyId: UUID?
    public var specialtyName: String?
    public var specialtyTypeId: UUID?
    public var specialtyTypeName: String?
    public var order: Int?
    public var auditableEntity: AuditableEntity?
    public var marketingType: MarketingType?

    public init(hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, order: Int? = nil, auditableEntity: AuditableEntity? = nil, marketingType: MarketingType? = nil) {
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.hospitalSlug = hospitalSlug
        self.specialtyId = specialtyId
        self.specialtyName = specialtyName
        self.specialtyTypeId = specialtyTypeId
        self.specialtyTypeName = specialtyTypeName
        self.order = order
        self.auditableEntity = auditableEntity
        self.marketingType = marketingType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hospitalId
        case hospitalName
        case hospitalSlug
        case specialtyId
        case specialtyName
        case specialtyTypeId
        case specialtyTypeName
        case order
        case auditableEntity
        case marketingType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(hospitalId, forKey: .hospitalId)
        try container.encodeIfPresent(hospitalName, forKey: .hospitalName)
        try container.encodeIfPresent(hospitalSlug, forKey: .hospitalSlug)
        try container.encodeIfPresent(specialtyId, forKey: .specialtyId)
        try container.encodeIfPresent(specialtyName, forKey: .specialtyName)
        try container.encodeIfPresent(specialtyTypeId, forKey: .specialtyTypeId)
        try container.encodeIfPresent(specialtyTypeName, forKey: .specialtyTypeName)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
        try container.encodeIfPresent(marketingType, forKey: .marketingType)
    }
}

