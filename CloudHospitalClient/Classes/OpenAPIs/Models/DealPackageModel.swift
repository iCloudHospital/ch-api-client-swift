//
// DealPackageModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct DealPackageModel: Codable {

    public var id: UUID?
    public var languageCode: String?
    public var dealId: UUID?
    public var dealName: String?
    public var dealSlug: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var hospitalSlug: String?
    public var refundPolicy: RefundPolicy?
    public var bonus: String?
    public var price: Double?
    public var auditableEntity: AuditableEntity?
    public var additionalServices: String?
    public var accomodation: String?
    public var transfer: String?

    public init(id: UUID? = nil, languageCode: String? = nil, dealId: UUID? = nil, dealName: String? = nil, dealSlug: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, refundPolicy: RefundPolicy? = nil, bonus: String? = nil, price: Double? = nil, auditableEntity: AuditableEntity? = nil, additionalServices: String? = nil, accomodation: String? = nil, transfer: String? = nil) {
        self.id = id
        self.languageCode = languageCode
        self.dealId = dealId
        self.dealName = dealName
        self.dealSlug = dealSlug
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.hospitalSlug = hospitalSlug
        self.refundPolicy = refundPolicy
        self.bonus = bonus
        self.price = price
        self.auditableEntity = auditableEntity
        self.additionalServices = additionalServices
        self.accomodation = accomodation
        self.transfer = transfer
    }

}

