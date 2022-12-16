//
// CountryItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CountryItemModel: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var languageCode: String?
    public var name: String?
    public var slug: String?
    public var confirmed: Bool?
    public var logo: String?
    public var localizedUrls: [LocalizedUrlModel]?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, languageCode: String? = nil, name: String? = nil, slug: String? = nil, confirmed: Bool? = nil, logo: String? = nil, localizedUrls: [LocalizedUrlModel]? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.languageCode = languageCode
        self.name = name
        self.slug = slug
        self.confirmed = confirmed
        self.logo = logo
        self.localizedUrls = localizedUrls
        self.auditableEntity = auditableEntity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case languageCode
        case name
        case slug
        case confirmed
        case logo
        case localizedUrls
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
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(localizedUrls, forKey: .localizedUrls)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
    }
}

