//
// UpdateServiceCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UpdateServiceCommand: Codable {

    public var name: String?
    public var slug: String?
    public var description: String?
    public var content: String?
    public var hospitalName: String?
    public var specialtyTypeId: UUID?
    public var specialtyTypeName: String?
    public var specialtyName: String?
    public var marketingType: MarketingType?
    public var procedure: Procedure?
    public var minPrice: Double?
    public var maxPrice: Double?
    public var priceReuqest: Bool?
    public var order: Int?
    public var auditableEntity: AuditableEntity?

    public init(name: String? = nil, slug: String? = nil, description: String? = nil, content: String? = nil, hospitalName: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, specialtyName: String? = nil, marketingType: MarketingType? = nil, procedure: Procedure? = nil, minPrice: Double? = nil, maxPrice: Double? = nil, priceReuqest: Bool? = nil, order: Int? = nil, auditableEntity: AuditableEntity? = nil) {
        self.name = name
        self.slug = slug
        self.description = description
        self.content = content
        self.hospitalName = hospitalName
        self.specialtyTypeId = specialtyTypeId
        self.specialtyTypeName = specialtyTypeName
        self.specialtyName = specialtyName
        self.marketingType = marketingType
        self.procedure = procedure
        self.minPrice = minPrice
        self.maxPrice = maxPrice
        self.priceReuqest = priceReuqest
        self.order = order
        self.auditableEntity = auditableEntity
    }

}

