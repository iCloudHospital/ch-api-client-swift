//
// Deal.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Deal: Codable {

    public var id: UUID?
    public var name: String?
    public var normalizedName: String?
    public var slug: String?
    public var description: String?
    public var hospitalId: UUID?
    public var hospital: Hospital?
    public var marketingType: MarketingType?
    public var photo: String?
    public var photoThumbnail: String?
    public var dealPackages: [DealPackage]?
    public var dealServices: [DealService]?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, name: String? = nil, normalizedName: String? = nil, slug: String? = nil, description: String? = nil, hospitalId: UUID? = nil, hospital: Hospital? = nil, marketingType: MarketingType? = nil, photo: String? = nil, photoThumbnail: String? = nil, dealPackages: [DealPackage]? = nil, dealServices: [DealService]? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.name = name
        self.normalizedName = normalizedName
        self.slug = slug
        self.description = description
        self.hospitalId = hospitalId
        self.hospital = hospital
        self.marketingType = marketingType
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.dealPackages = dealPackages
        self.dealServices = dealServices
        self.auditableEntity = auditableEntity
    }

}

