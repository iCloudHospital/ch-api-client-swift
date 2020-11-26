//
// UpdateConsultationCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UpdateConsultationCommand: Codable {

    public var specialtyId: UUID?
    public var doctorId: UUID?
    public var language: String?
    public var isAccountHolder: Bool?
    public var firstName: String?
    public var lastName: String?
    public var email: String?
    public var phone: String?
    public var dateOfBirth: Date?
    public var gender: Gender?
    public var comment: String?
    public var timeRange: String?
    public var approximateDateStart: Date?
    public var approximateDateEnd: Date?
    public var timeZone: String?

    public init(specialtyId: UUID? = nil, doctorId: UUID? = nil, language: String? = nil, isAccountHolder: Bool? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, phone: String? = nil, dateOfBirth: Date? = nil, gender: Gender? = nil, comment: String? = nil, timeRange: String? = nil, approximateDateStart: Date? = nil, approximateDateEnd: Date? = nil, timeZone: String? = nil) {
        self.specialtyId = specialtyId
        self.doctorId = doctorId
        self.language = language
        self.isAccountHolder = isAccountHolder
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.phone = phone
        self.dateOfBirth = dateOfBirth
        self.gender = gender
        self.comment = comment
        self.timeRange = timeRange
        self.approximateDateStart = approximateDateStart
        self.approximateDateEnd = approximateDateEnd
        self.timeZone = timeZone
    }

}

