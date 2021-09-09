//
// UpdateDealPackageCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateDealPackageCommand: Codable, Hashable {

    public var dealName: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var refundPolicy: RefundPolicy?
    public var additionalServices: String?
    public var accomodation: String?
    public var transfer: String?
    public var bonus: String?
    public var price: Double?
    public var auditableEntity: AuditableEntity?

    public init(dealName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, refundPolicy: RefundPolicy? = nil, additionalServices: String? = nil, accomodation: String? = nil, transfer: String? = nil, bonus: String? = nil, price: Double? = nil, auditableEntity: AuditableEntity? = nil) {
        self.dealName = dealName
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.refundPolicy = refundPolicy
        self.additionalServices = additionalServices
        self.accomodation = accomodation
        self.transfer = transfer
        self.bonus = bonus
        self.price = price
        self.auditableEntity = auditableEntity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dealName
        case hospitalId
        case hospitalName
        case refundPolicy
        case additionalServices
        case accomodation
        case transfer
        case bonus
        case price
        case auditableEntity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dealName, forKey: .dealName)
        try container.encodeIfPresent(hospitalId, forKey: .hospitalId)
        try container.encodeIfPresent(hospitalName, forKey: .hospitalName)
        try container.encodeIfPresent(refundPolicy, forKey: .refundPolicy)
        try container.encodeIfPresent(additionalServices, forKey: .additionalServices)
        try container.encodeIfPresent(accomodation, forKey: .accomodation)
        try container.encodeIfPresent(transfer, forKey: .transfer)
        try container.encodeIfPresent(bonus, forKey: .bonus)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
    }
}

