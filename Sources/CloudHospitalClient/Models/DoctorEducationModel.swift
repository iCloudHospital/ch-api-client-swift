//
// DoctorEducationModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DoctorEducationModel: Codable, Hashable {

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

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case doctorId
        case doctorName
        case institution
        case qualification
        case graduationDate
        case graduationYear
        case graduationMonth
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(doctorId, forKey: .doctorId)
        try container.encodeIfPresent(doctorName, forKey: .doctorName)
        try container.encodeIfPresent(institution, forKey: .institution)
        try container.encodeIfPresent(qualification, forKey: .qualification)
        try container.encodeIfPresent(graduationDate, forKey: .graduationDate)
        try container.encodeIfPresent(graduationYear, forKey: .graduationYear)
        try container.encodeIfPresent(graduationMonth, forKey: .graduationMonth)
    }
}

