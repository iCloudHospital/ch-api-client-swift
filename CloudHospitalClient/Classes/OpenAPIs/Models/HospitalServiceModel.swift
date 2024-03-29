//
// HospitalServiceModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct HospitalServiceModel: Codable, JSONEncodable, Hashable {

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

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case languageCode
        case name
        case slug
        case confirmed
        case hospitalSpecialtyName
        case hospitalSpecialtySlug
        case hospitalSpecialtyId
        case procedure
        case minPrice
        case maxPrice
        case priceReuqest
        case order
        case photo
        case photoThumbnail
        case auditableEntity
        case description
        case overview
        case content
        case hospitalId
        case hospitalName
        case hospitalSlug
        case specialtyName
        case serviceCategoryId
        case serviceCategoryName
        case customStyle
        case localizedUrls
        case medias
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(languageCode, forKey: .languageCode)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(confirmed, forKey: .confirmed)
        try container.encodeIfPresent(hospitalSpecialtyName, forKey: .hospitalSpecialtyName)
        try container.encodeIfPresent(hospitalSpecialtySlug, forKey: .hospitalSpecialtySlug)
        try container.encodeIfPresent(hospitalSpecialtyId, forKey: .hospitalSpecialtyId)
        try container.encodeIfPresent(procedure, forKey: .procedure)
        try container.encodeIfPresent(minPrice, forKey: .minPrice)
        try container.encodeIfPresent(maxPrice, forKey: .maxPrice)
        try container.encodeIfPresent(priceReuqest, forKey: .priceReuqest)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(photo, forKey: .photo)
        try container.encodeIfPresent(photoThumbnail, forKey: .photoThumbnail)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(overview, forKey: .overview)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(hospitalId, forKey: .hospitalId)
        try container.encodeIfPresent(hospitalName, forKey: .hospitalName)
        try container.encodeIfPresent(hospitalSlug, forKey: .hospitalSlug)
        try container.encodeIfPresent(specialtyName, forKey: .specialtyName)
        try container.encodeIfPresent(serviceCategoryId, forKey: .serviceCategoryId)
        try container.encodeIfPresent(serviceCategoryName, forKey: .serviceCategoryName)
        try container.encodeIfPresent(customStyle, forKey: .customStyle)
        try container.encodeIfPresent(localizedUrls, forKey: .localizedUrls)
        try container.encodeIfPresent(medias, forKey: .medias)
    }
}

