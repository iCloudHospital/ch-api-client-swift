//
// UpdateDealCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UpdateDealCommand: Codable {

    public var id: UUID?
    public var name: String?
    public var normalizedName: String?
    public var slug: String?
    public var description: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var hospitalSlug: String?
    public var hospitalLocationCountry: String?
    public var hospitalLocationState: String?
    public var hospitalConsultationEnabled: Bool?
    public var marketingType: MarketingType?
    public var dealPackages: [DealPackageItemViewModel]?
    public var dealServices: [DealServiceItemViewModel]?
    public var auditableEntity: AuditableEntity?
    public var photo: String?
    public var photoThumbnail: String?

    public init(id: UUID? = nil, name: String? = nil, normalizedName: String? = nil, slug: String? = nil, description: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, hospitalLocationCountry: String? = nil, hospitalLocationState: String? = nil, hospitalConsultationEnabled: Bool? = nil, marketingType: MarketingType? = nil, dealPackages: [DealPackageItemViewModel]? = nil, dealServices: [DealServiceItemViewModel]? = nil, auditableEntity: AuditableEntity? = nil, photo: String? = nil, photoThumbnail: String? = nil) {
        self.id = id
        self.name = name
        self.normalizedName = normalizedName
        self.slug = slug
        self.description = description
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.hospitalSlug = hospitalSlug
        self.hospitalLocationCountry = hospitalLocationCountry
        self.hospitalLocationState = hospitalLocationState
        self.hospitalConsultationEnabled = hospitalConsultationEnabled
        self.marketingType = marketingType
        self.dealPackages = dealPackages
        self.dealServices = dealServices
        self.auditableEntity = auditableEntity
        self.photo = photo
        self.photoThumbnail = photoThumbnail
    }

}

