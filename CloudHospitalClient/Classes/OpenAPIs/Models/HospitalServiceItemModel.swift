//
// HospitalServiceItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct HospitalServiceItemModel: Codable, JSONEncodable, Hashable {

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

    public init(id: UUID? = nil, languageCode: String? = nil, name: String? = nil, slug: String? = nil, confirmed: Bool? = nil, hospitalSpecialtyName: String? = nil, hospitalSpecialtySlug: String? = nil, hospitalSpecialtyId: UUID? = nil, procedure: Procedure? = nil, minPrice: Double? = nil, maxPrice: Double? = nil, priceReuqest: Bool? = nil, order: Int? = nil, photo: String? = nil, photoThumbnail: String? = nil, auditableEntity: AuditableEntity? = nil) {
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
    }
}

