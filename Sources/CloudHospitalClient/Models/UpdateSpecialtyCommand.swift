//
// UpdateSpecialtyCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateSpecialtyCommand: Codable, Hashable {

    public var name: String?
    public var slug: String?
    public var description: String?
    public var specialtyTypeId: UUID?
    public var specialtyTypeName: String?
    public var auditableEntity: AuditableEntity?
    public var content: String?

    public init(name: String? = nil, slug: String? = nil, description: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, auditableEntity: AuditableEntity? = nil, content: String? = nil) {
        self.name = name
        self.slug = slug
        self.description = description
        self.specialtyTypeId = specialtyTypeId
        self.specialtyTypeName = specialtyTypeName
        self.auditableEntity = auditableEntity
        self.content = content
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case slug
        case description
        case specialtyTypeId
        case specialtyTypeName
        case auditableEntity
        case content
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(specialtyTypeId, forKey: .specialtyTypeId)
        try container.encodeIfPresent(specialtyTypeName, forKey: .specialtyTypeName)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
        try container.encodeIfPresent(content, forKey: .content)
    }
}
