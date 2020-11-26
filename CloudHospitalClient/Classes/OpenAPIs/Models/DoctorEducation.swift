//
// DoctorEducation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct DoctorEducation: Codable {

    public var id: UUID?
    public var doctorId: UUID?
    public var doctor: Doctor?
    public var institution: String?
    public var normalizedInstitution: String?
    public var qualification: String?
    public var normalizedQualification: String?
    public var graduationDate: Date?

    public init(id: UUID? = nil, doctorId: UUID? = nil, doctor: Doctor? = nil, institution: String? = nil, normalizedInstitution: String? = nil, qualification: String? = nil, normalizedQualification: String? = nil, graduationDate: Date? = nil) {
        self.id = id
        self.doctorId = doctorId
        self.doctor = doctor
        self.institution = institution
        self.normalizedInstitution = normalizedInstitution
        self.qualification = qualification
        self.normalizedQualification = normalizedQualification
        self.graduationDate = graduationDate
    }

}

