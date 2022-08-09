//
// ConsultationModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ConsultationModel: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var languageCode: String?
    public var consultationType: ConsultationType?
    public var patientId: UUID?
    public var patientName: String?
    public var patientPhoto: String?
    public var firstName: String?
    public var lastName: String?
    public var email: String?
    public var phone: String?
    public var dateOfBirth: Date?
    public var gender: Gender?
    public var comment: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var hospitalSlug: String?
    public var hospitalTimeZone: String?
    public var doctorId: UUID?
    public var doctorName: String?
    public var doctorSlug: String?
    public var dealId: UUID?
    public var dealName: String?
    public var dealSlug: String?
    public var language: String?
    public var isAccountHolder: Bool?
    public var timeRange: String?
    public var approximateDateStart: Date?
    public var approximateDateEnd: Date?
    public var confirmedDateStart: Date?
    public var confirmedDateEnd: Date?
    public var fee: Double?
    public var applicationFee: Double?
    public var timeZone: String?
    public var requestDate: Date?
    public var domain: String?
    public var status: ConsultationStatus?
    public var rejectReason: RejectReason?
    public var isOpen: Bool?
    public var paymentId: UUID?
    public var paymentEnabled: Bool?
    public var completionRate: Int?
    public var isExternal: Bool?
    public var statusChangeLogs: [ConsultationChangeLogModel]?

    public init(id: UUID? = nil, languageCode: String? = nil, consultationType: ConsultationType? = nil, patientId: UUID? = nil, patientName: String? = nil, patientPhoto: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, phone: String? = nil, dateOfBirth: Date? = nil, gender: Gender? = nil, comment: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, hospitalTimeZone: String? = nil, doctorId: UUID? = nil, doctorName: String? = nil, doctorSlug: String? = nil, dealId: UUID? = nil, dealName: String? = nil, dealSlug: String? = nil, language: String? = nil, isAccountHolder: Bool? = nil, timeRange: String? = nil, approximateDateStart: Date? = nil, approximateDateEnd: Date? = nil, confirmedDateStart: Date? = nil, confirmedDateEnd: Date? = nil, fee: Double? = nil, applicationFee: Double? = nil, timeZone: String? = nil, requestDate: Date? = nil, domain: String? = nil, status: ConsultationStatus? = nil, rejectReason: RejectReason? = nil, isOpen: Bool? = nil, paymentId: UUID? = nil, paymentEnabled: Bool? = nil, completionRate: Int? = nil, isExternal: Bool? = nil, statusChangeLogs: [ConsultationChangeLogModel]? = nil) {
        self.id = id
        self.languageCode = languageCode
        self.consultationType = consultationType
        self.patientId = patientId
        self.patientName = patientName
        self.patientPhoto = patientPhoto
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.phone = phone
        self.dateOfBirth = dateOfBirth
        self.gender = gender
        self.comment = comment
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.hospitalSlug = hospitalSlug
        self.hospitalTimeZone = hospitalTimeZone
        self.doctorId = doctorId
        self.doctorName = doctorName
        self.doctorSlug = doctorSlug
        self.dealId = dealId
        self.dealName = dealName
        self.dealSlug = dealSlug
        self.language = language
        self.isAccountHolder = isAccountHolder
        self.timeRange = timeRange
        self.approximateDateStart = approximateDateStart
        self.approximateDateEnd = approximateDateEnd
        self.confirmedDateStart = confirmedDateStart
        self.confirmedDateEnd = confirmedDateEnd
        self.fee = fee
        self.applicationFee = applicationFee
        self.timeZone = timeZone
        self.requestDate = requestDate
        self.domain = domain
        self.status = status
        self.rejectReason = rejectReason
        self.isOpen = isOpen
        self.paymentId = paymentId
        self.paymentEnabled = paymentEnabled
        self.completionRate = completionRate
        self.isExternal = isExternal
        self.statusChangeLogs = statusChangeLogs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case languageCode
        case consultationType
        case patientId
        case patientName
        case patientPhoto
        case firstName
        case lastName
        case email
        case phone
        case dateOfBirth
        case gender
        case comment
        case hospitalId
        case hospitalName
        case hospitalSlug
        case hospitalTimeZone
        case doctorId
        case doctorName
        case doctorSlug
        case dealId
        case dealName
        case dealSlug
        case language
        case isAccountHolder
        case timeRange
        case approximateDateStart
        case approximateDateEnd
        case confirmedDateStart
        case confirmedDateEnd
        case fee
        case applicationFee
        case timeZone
        case requestDate
        case domain
        case status
        case rejectReason
        case isOpen
        case paymentId
        case paymentEnabled
        case completionRate
        case isExternal
        case statusChangeLogs
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(languageCode, forKey: .languageCode)
        try container.encodeIfPresent(consultationType, forKey: .consultationType)
        try container.encodeIfPresent(patientId, forKey: .patientId)
        try container.encodeIfPresent(patientName, forKey: .patientName)
        try container.encodeIfPresent(patientPhoto, forKey: .patientPhoto)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(dateOfBirth, forKey: .dateOfBirth)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(hospitalId, forKey: .hospitalId)
        try container.encodeIfPresent(hospitalName, forKey: .hospitalName)
        try container.encodeIfPresent(hospitalSlug, forKey: .hospitalSlug)
        try container.encodeIfPresent(hospitalTimeZone, forKey: .hospitalTimeZone)
        try container.encodeIfPresent(doctorId, forKey: .doctorId)
        try container.encodeIfPresent(doctorName, forKey: .doctorName)
        try container.encodeIfPresent(doctorSlug, forKey: .doctorSlug)
        try container.encodeIfPresent(dealId, forKey: .dealId)
        try container.encodeIfPresent(dealName, forKey: .dealName)
        try container.encodeIfPresent(dealSlug, forKey: .dealSlug)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(isAccountHolder, forKey: .isAccountHolder)
        try container.encodeIfPresent(timeRange, forKey: .timeRange)
        try container.encodeIfPresent(approximateDateStart, forKey: .approximateDateStart)
        try container.encodeIfPresent(approximateDateEnd, forKey: .approximateDateEnd)
        try container.encodeIfPresent(confirmedDateStart, forKey: .confirmedDateStart)
        try container.encodeIfPresent(confirmedDateEnd, forKey: .confirmedDateEnd)
        try container.encodeIfPresent(fee, forKey: .fee)
        try container.encodeIfPresent(applicationFee, forKey: .applicationFee)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(requestDate, forKey: .requestDate)
        try container.encodeIfPresent(domain, forKey: .domain)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(rejectReason, forKey: .rejectReason)
        try container.encodeIfPresent(isOpen, forKey: .isOpen)
        try container.encodeIfPresent(paymentId, forKey: .paymentId)
        try container.encodeIfPresent(paymentEnabled, forKey: .paymentEnabled)
        try container.encodeIfPresent(completionRate, forKey: .completionRate)
        try container.encodeIfPresent(isExternal, forKey: .isExternal)
        try container.encodeIfPresent(statusChangeLogs, forKey: .statusChangeLogs)
    }
}

