//
// ContributorModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ContributorModel: Codable, Hashable {

    public var id: UUID?
    public var languageCode: String?
    public var name: String?
    public var slug: String?
    public var confirmed: Bool?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var hospitalSlug: String?
    public var hospitalWebsiteUrl: String?
    public var email: String?
    public var photo: String?
    public var photoThumbnail: String?
    public var order: Int?
    public var auditableEntity: AuditableEntity?
    public var description: String?
    public var overview: String?
    public var content: String?
    public var snsHandles: [SnsHandle]?
    public var localizedUrls: [LocalizedUrlModel]?

    public init(id: UUID? = nil, languageCode: String? = nil, name: String? = nil, slug: String? = nil, confirmed: Bool? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, hospitalWebsiteUrl: String? = nil, email: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, order: Int? = nil, auditableEntity: AuditableEntity? = nil, description: String? = nil, overview: String? = nil, content: String? = nil, snsHandles: [SnsHandle]? = nil, localizedUrls: [LocalizedUrlModel]? = nil) {
        self.id = id
        self.languageCode = languageCode
        self.name = name
        self.slug = slug
        self.confirmed = confirmed
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.hospitalSlug = hospitalSlug
        self.hospitalWebsiteUrl = hospitalWebsiteUrl
        self.email = email
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.order = order
        self.auditableEntity = auditableEntity
        self.description = description
        self.overview = overview
        self.content = content
        self.snsHandles = snsHandles
        self.localizedUrls = localizedUrls
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case languageCode
        case name
        case slug
        case confirmed
        case hospitalId
        case hospitalName
        case hospitalSlug
        case hospitalWebsiteUrl
        case email
        case photo
        case photoThumbnail
        case order
        case auditableEntity
        case description
        case overview
        case content
        case snsHandles
        case localizedUrls
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(languageCode, forKey: .languageCode)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(confirmed, forKey: .confirmed)
        try container.encodeIfPresent(hospitalId, forKey: .hospitalId)
        try container.encodeIfPresent(hospitalName, forKey: .hospitalName)
        try container.encodeIfPresent(hospitalSlug, forKey: .hospitalSlug)
        try container.encodeIfPresent(hospitalWebsiteUrl, forKey: .hospitalWebsiteUrl)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(photo, forKey: .photo)
        try container.encodeIfPresent(photoThumbnail, forKey: .photoThumbnail)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(overview, forKey: .overview)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(snsHandles, forKey: .snsHandles)
        try container.encodeIfPresent(localizedUrls, forKey: .localizedUrls)
    }
}

