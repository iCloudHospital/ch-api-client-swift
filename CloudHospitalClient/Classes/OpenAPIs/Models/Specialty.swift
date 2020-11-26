//
// Specialty.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Specialty: Codable {

    public var id: UUID?
    public var name: String?
    public var normalizedName: String?
    public var slug: String?
    public var description: String?
    public var content: String?
    public var specialtyTypeId: UUID?
    public var specialtyType: SpecialtyType?
    public var hospitalSpecialties: [HospitalSpecialty]?
    public var doctorSpecialties: [DoctorSpecialty]?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, name: String? = nil, normalizedName: String? = nil, slug: String? = nil, description: String? = nil, content: String? = nil, specialtyTypeId: UUID? = nil, specialtyType: SpecialtyType? = nil, hospitalSpecialties: [HospitalSpecialty]? = nil, doctorSpecialties: [DoctorSpecialty]? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.name = name
        self.normalizedName = normalizedName
        self.slug = slug
        self.description = description
        self.content = content
        self.specialtyTypeId = specialtyTypeId
        self.specialtyType = specialtyType
        self.hospitalSpecialties = hospitalSpecialties
        self.doctorSpecialties = doctorSpecialties
        self.auditableEntity = auditableEntity
    }

}

