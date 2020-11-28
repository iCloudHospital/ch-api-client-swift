//
// DoctorSpecialty.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct DoctorSpecialty: Codable {

    public var doctorId: UUID?
    public var doctor: Doctor?
    public var specialtyId: UUID?
    public var specialty: Specialty?
    public var order: Int?

    public init(doctorId: UUID? = nil, doctor: Doctor? = nil, specialtyId: UUID? = nil, specialty: Specialty? = nil, order: Int? = nil) {
        self.doctorId = doctorId
        self.doctor = doctor
        self.specialtyId = specialtyId
        self.specialty = specialty
        self.order = order
    }

}

