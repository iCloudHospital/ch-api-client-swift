//
// SpecialtyItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SpecialtyItemViewModel: Codable {

    public var id: UUID?
    public var name: String?
    public var slug: String?
    public var description: String?
    public var content: String?
    public var specialtyTypeId: UUID?
    public var specialtyTypeName: String?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, name: String? = nil, slug: String? = nil, description: String? = nil, content: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.name = name
        self.slug = slug
        self.description = description
        self.content = content
        self.specialtyTypeId = specialtyTypeId
        self.specialtyTypeName = specialtyTypeName
        self.auditableEntity = auditableEntity
    }

}

