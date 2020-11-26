//
// Country.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Country: Codable {

    public var id: UUID?
    public var name: String?
    public var normalizedName: String?
    public var slug: String?
    public var description: String?
    public var hospitals: [Hospital]?
    public var medias: [Media]?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, name: String? = nil, normalizedName: String? = nil, slug: String? = nil, description: String? = nil, hospitals: [Hospital]? = nil, medias: [Media]? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.name = name
        self.normalizedName = normalizedName
        self.slug = slug
        self.description = description
        self.hospitals = hospitals
        self.medias = medias
        self.auditableEntity = auditableEntity
    }

}

