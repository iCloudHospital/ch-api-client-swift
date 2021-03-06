//
// DoctorEducationItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct DoctorEducationItemViewModel: Codable {

    public var id: UUID?
    public var doctorId: UUID?
    public var doctorName: String?
    public var institution: String?
    public var qualification: String?
    public var graduationDate: Date?
    public var graduationYear: Int?
    public var graduationMonth: Int?

    public init(id: UUID? = nil, doctorId: UUID? = nil, doctorName: String? = nil, institution: String? = nil, qualification: String? = nil, graduationDate: Date? = nil, graduationYear: Int? = nil, graduationMonth: Int? = nil) {
        self.id = id
        self.doctorId = doctorId
        self.doctorName = doctorName
        self.institution = institution
        self.qualification = qualification
        self.graduationDate = graduationDate
        self.graduationYear = graduationYear
        self.graduationMonth = graduationMonth
    }

}

