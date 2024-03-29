//
// DealModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DealModel: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var languageCode: String?
    public var name: String?
    public var slug: String?
    public var description: String?
    public var confirmed: Bool?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var hospitalSlug: String?
    public var marketingType: MarketingType?
    public var photo: String?
    public var photoThumbnail: String?
    public var lowestPrice: Double?
    public var dealServicesCount: Int?
    public var order: Int?
    public var auditableEntity: AuditableEntity?
    public var overview: String?
    public var content: String?
    public var localizedUrls: [LocalizedUrlModel]?
    public var serviceDuration: Int?

    public init(id: UUID? = nil, languageCode: String? = nil, name: String? = nil, slug: String? = nil, description: String? = nil, confirmed: Bool? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, marketingType: MarketingType? = nil, photo: String? = nil, photoThumbnail: String? = nil, lowestPrice: Double? = nil, dealServicesCount: Int? = nil, order: Int? = nil, auditableEntity: AuditableEntity? = nil, overview: String? = nil, content: String? = nil, localizedUrls: [LocalizedUrlModel]? = nil, serviceDuration: Int? = nil) {
        self.id = id
        self.languageCode = languageCode
        self.name = name
        self.slug = slug
        self.description = description
        self.confirmed = confirmed
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.hospitalSlug = hospitalSlug
        self.marketingType = marketingType
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.lowestPrice = lowestPrice
        self.dealServicesCount = dealServicesCount
        self.order = order
        self.auditableEntity = auditableEntity
        self.overview = overview
        self.content = content
        self.localizedUrls = localizedUrls
        self.serviceDuration = serviceDuration
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case languageCode
        case name
        case slug
        case description
        case confirmed
        case hospitalId
        case hospitalName
        case hospitalSlug
        case marketingType
        case photo
        case photoThumbnail
        case lowestPrice
        case dealServicesCount
        case order
        case auditableEntity
        case overview
        case content
        case localizedUrls
        case serviceDuration
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(languageCode, forKey: .languageCode)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(confirmed, forKey: .confirmed)
        try container.encodeIfPresent(hospitalId, forKey: .hospitalId)
        try container.encodeIfPresent(hospitalName, forKey: .hospitalName)
        try container.encodeIfPresent(hospitalSlug, forKey: .hospitalSlug)
        try container.encodeIfPresent(marketingType, forKey: .marketingType)
        try container.encodeIfPresent(photo, forKey: .photo)
        try container.encodeIfPresent(photoThumbnail, forKey: .photoThumbnail)
        try container.encodeIfPresent(lowestPrice, forKey: .lowestPrice)
        try container.encodeIfPresent(dealServicesCount, forKey: .dealServicesCount)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
        try container.encodeIfPresent(overview, forKey: .overview)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(localizedUrls, forKey: .localizedUrls)
        try container.encodeIfPresent(serviceDuration, forKey: .serviceDuration)
    }
}

