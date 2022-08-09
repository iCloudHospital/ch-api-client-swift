//
// HospitalServiceModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct HospitalServiceModel: Codable {

    public var id: UUID?
    public var languageCode: String?
    public var name: String?
    public var slug: String?
    public var confirmed: Bool?
    public var hospitalSpecialtyName: String?
    public var hospitalSpecialtySlug: String?
    public var hospitalSpecialtyId: UUID?
    public var procedure: Procedure?
    public var minPrice: Double?
    public var maxPrice: Double?
    public var priceReuqest: Bool?
    public var order: Int?
    public var photo: String?
    public var photoThumbnail: String?
    public var auditableEntity: AuditableEntity?
    public var description: String?
    public var overview: String?
    public var content: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var hospitalSlug: String?
    public var specialtyName: String?
    public var serviceCategoryId: UUID?
    public var serviceCategoryName: String?
    public var customStyle: String?
    public var localizedUrls: [LocalizedUrlModel]?
    public var medias: [MediaModel]?

    public init(id: UUID? = nil, languageCode: String? = nil, name: String? = nil, slug: String? = nil, confirmed: Bool? = nil, hospitalSpecialtyName: String? = nil, hospitalSpecialtySlug: String? = nil, hospitalSpecialtyId: UUID? = nil, procedure: Procedure? = nil, minPrice: Double? = nil, maxPrice: Double? = nil, priceReuqest: Bool? = nil, order: Int? = nil, photo: String? = nil, photoThumbnail: String? = nil, auditableEntity: AuditableEntity? = nil, description: String? = nil, overview: String? = nil, content: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, specialtyName: String? = nil, serviceCategoryId: UUID? = nil, serviceCategoryName: String? = nil, customStyle: String? = nil, localizedUrls: [LocalizedUrlModel]? = nil, medias: [MediaModel]? = nil) {
        self.id = id
        self.languageCode = languageCode
        self.name = name
        self.slug = slug
        self.confirmed = confirmed
        self.hospitalSpecialtyName = hospitalSpecialtyName
        self.hospitalSpecialtySlug = hospitalSpecialtySlug
        self.hospitalSpecialtyId = hospitalSpecialtyId
        self.procedure = procedure
        self.minPrice = minPrice
        self.maxPrice = maxPrice
        self.priceReuqest = priceReuqest
        self.order = order
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.auditableEntity = auditableEntity
        self.description = description
        self.overview = overview
        self.content = content
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.hospitalSlug = hospitalSlug
        self.specialtyName = specialtyName
        self.serviceCategoryId = serviceCategoryId
        self.serviceCategoryName = serviceCategoryName
        self.customStyle = customStyle
        self.localizedUrls = localizedUrls
        self.medias = medias
    }

}

