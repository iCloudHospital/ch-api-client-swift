//
// DoctorSpecialtyViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct DoctorSpecialtyViewModel: Codable {

    public var specialtyId: UUID?
    public var specialtyName: String?
    public var specialtyTypeId: UUID?
    public var specialtyTypeName: String?
    public var order: Int?
    public var doctorId: UUID?
    public var doctorName: String?

    public init(specialtyId: UUID? = nil, specialtyName: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, order: Int? = nil, doctorId: UUID? = nil, doctorName: String? = nil) {
        self.specialtyId = specialtyId
        self.specialtyName = specialtyName
        self.specialtyTypeId = specialtyTypeId
        self.specialtyTypeName = specialtyTypeName
        self.order = order
        self.doctorId = doctorId
        self.doctorName = doctorName
    }

}

