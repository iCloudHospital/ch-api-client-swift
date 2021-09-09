//
// ServiceViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ServiceViewModel: Codable {

    public var id: UUID?
    public var name: String?
    public var slug: String?
    public var description: String?
    public var content: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var specialtyTypeId: UUID?
    public var specialtyTypeName: String?
    public var specialtyId: UUID?
    public var specialtyName: String?
    public var marketingType: MarketingType?
    public var procedure: Procedure?
    public var minPrice: Double?
    public var maxPrice: Double?
    public var priceReuqest: Bool?
    public var order: Int?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, name: String? = nil, slug: String? = nil, description: String? = nil, content: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, marketingType: MarketingType? = nil, procedure: Procedure? = nil, minPrice: Double? = nil, maxPrice: Double? = nil, priceReuqest: Bool? = nil, order: Int? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.name = name
        self.slug = slug
        self.description = description
        self.content = content
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.specialtyTypeId = specialtyTypeId
        self.specialtyTypeName = specialtyTypeName
        self.specialtyId = specialtyId
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
