//
// CountryItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CountryItemModel: Codable {

    public var id: UUID?
    public var languageCode: String?
    public var name: String?
    public var slug: String?
    public var confirmed: Bool?
    public var logo: String?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, languageCode: String? = nil, name: String? = nil, slug: String? = nil, confirmed: Bool? = nil, logo: String? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.languageCode = languageCode
        self.name = name
        self.slug = slug
        self.confirmed = confirmed
        self.logo = logo
        self.auditableEntity = auditableEntity
    }

}

