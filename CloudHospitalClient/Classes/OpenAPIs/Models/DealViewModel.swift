//
// DealViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct DealViewModel: Codable {

    public var id: UUID?
    public var name: String?
    public var normalizedName: String?
    public var slug: String?
    public var description: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var hospitalSlug: String?
    public var marketingType: MarketingType?
    public var photo: String?
    public var photoThumbnail: String?
    public var dealPackages: [DealPackageItemViewModel]?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, name: String? = nil, normalizedName: String? = nil, slug: String? = nil, description: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, marketingType: MarketingType? = nil, photo: String? = nil, photoThumbnail: String? = nil, dealPackages: [DealPackageItemViewModel]? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.name = name
        self.normalizedName = normalizedName
        self.slug = slug
        self.description = description
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.hospitalSlug = hospitalSlug
        self.marketingType = marketingType
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.dealPackages = dealPackages
        self.auditableEntity = auditableEntity
    }

}

