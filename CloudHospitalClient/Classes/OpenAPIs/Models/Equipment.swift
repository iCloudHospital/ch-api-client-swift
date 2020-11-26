//
// Equipment.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Equipment: Codable {

    public var id: UUID?
    public var name: String?
    public var normalizedName: String?
    public var description: String?
    public var hospitalId: UUID?
    public var hospital: Hospital?
    public var medias: [Media]?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, name: String? = nil, normalizedName: String? = nil, description: String? = nil, hospitalId: UUID? = nil, hospital: Hospital? = nil, medias: [Media]? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.name = name
        self.normalizedName = normalizedName
        self.description = description
        self.hospitalId = hospitalId
        self.hospital = hospital
        self.medias = medias
        self.auditableEntity = auditableEntity
    }

}

