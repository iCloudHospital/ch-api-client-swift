//
// EquipmentViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct EquipmentViewModel: Codable {

    public var id: UUID?
    public var name: String?
    public var description: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var medias: [MediaViewModel]?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, name: String? = nil, description: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, medias: [MediaViewModel]? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.medias = medias
        self.auditableEntity = auditableEntity
    }

}
