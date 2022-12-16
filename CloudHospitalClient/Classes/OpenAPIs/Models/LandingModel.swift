//
// LandingModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LandingModel: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var languageCode: String?
    public var name: String?
    public var slug: String?
    public var confirmed: Bool?
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
    public var customStyle: String?
    public var localizedUrls: [LocalizedUrlModel]?
    public var medias: [MediaModel]?

    public init(id: UUID? = nil, languageCode: String? = nil, name: String? = nil, slug: String? = nil, confirmed: Bool? = nil, order: Int? = nil, photo: String? = nil, photoThumbnail: String? = nil, auditableEntity: AuditableEntity? = nil, description: String? = nil, overview: String? = nil, content: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, customStyle: String? = nil, localizedUrls: [LocalizedUrlModel]? = nil, medias: [MediaModel]? = nil) {
        self.id = id
        self.languageCode = languageCode
        self.name = name
        self.slug = slug
        self.confirmed = confirmed
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
        try container.encodeIfPresent(customStyle, forKey: .customStyle)
        try container.encodeIfPresent(localizedUrls, forKey: .localizedUrls)
        try container.encodeIfPresent(medias, forKey: .medias)
    }
}
