//
// SpecialtyItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SpecialtyItemModel: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var languageCode: String?
    public var name: String?
    public var slug: String?
    public var confirmed: Bool?
    public var photo: String?
    public var photoThumbnail: String?
    public var background: String?
    public var backgroundThumbnail: String?
    public var specialtyTypeId: UUID?
    public var specialtyTypeName: String?
    public var marketingType: MarketingType?
    public var medias: [MediaModel]?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, languageCode: String? = nil, name: String? = nil, slug: String? = nil, confirmed: Bool? = nil, photo: String? = nil, photoThumbnail: String? = nil, background: String? = nil, backgroundThumbnail: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, marketingType: MarketingType? = nil, medias: [MediaModel]? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.languageCode = languageCode
        self.name = name
        self.slug = slug
        self.confirmed = confirmed
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.background = background
        self.backgroundThumbnail = backgroundThumbnail
        self.specialtyTypeId = specialtyTypeId
        self.specialtyTypeName = specialtyTypeName
        self.marketingType = marketingType
        self.medias = medias
        self.auditableEntity = auditableEntity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case languageCode
        case name
        case slug
        case confirmed
        case photo
        case photoThumbnail
        case background
        case backgroundThumbnail
        case specialtyTypeId
        case specialtyTypeName
        case marketingType
        case medias
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
        try container.encodeIfPresent(photo, forKey: .photo)
        try container.encodeIfPresent(photoThumbnail, forKey: .photoThumbnail)
        try container.encodeIfPresent(background, forKey: .background)
        try container.encodeIfPresent(backgroundThumbnail, forKey: .backgroundThumbnail)
        try container.encodeIfPresent(specialtyTypeId, forKey: .specialtyTypeId)
        try container.encodeIfPresent(specialtyTypeName, forKey: .specialtyTypeName)
        try container.encodeIfPresent(marketingType, forKey: .marketingType)
        try container.encodeIfPresent(medias, forKey: .medias)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
    }
}

