//
// ConsultationItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ConsultationItemViewModel: Codable {

    public var id: UUID?
    public var consultationType: ConsultationType?
    public var patientId: UUID?
    public var patientName: String?
    public var communicationUserId: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var hospitalSlug: String?
    public var specialtyId: UUID?
    public var specialtyName: String?
    public var specialtySlug: String?
    public var doctorId: UUID?
    public var doctorName: String?
    public var doctorSlug: String?
    public var dealId: UUID?
    public var dealName: String?
    public var dealSlug: String?
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
    public var confirmedDateStart: Date?
    public var confirmedDateEnd: Date?
    public var callerName: String?
    public var callerId: UUID?
    public var fee: Double?
    public var applicationFee: Double?
    public var timeZone: String?
    public var status: ConsultationStatus?
    public var rejectReason: RejectReason?
    public var isOpen: Bool?
    public var paymentId: UUID?

    public init(id: UUID? = nil, consultationType: ConsultationType? = nil, patientId: UUID? = nil, patientName: String? = nil, communicationUserId: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtySlug: String? = nil, doctorId: UUID? = nil, doctorName: String? = nil, doctorSlug: String? = nil, dealId: UUID? = nil, dealName: String? = nil, dealSlug: String? = nil, language: String? = nil, isAccountHolder: Bool? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, phone: String? = nil, dateOfBirth: Date? = nil, gender: Gender? = nil, comment: String? = nil, timeRange: String? = nil, approximateDateStart: Date? = nil, approximateDateEnd: Date? = nil, confirmedDateStart: Date? = nil, confirmedDateEnd: Date? = nil, callerName: String? = nil, callerId: UUID? = nil, fee: Double? = nil, applicationFee: Double? = nil, timeZone: String? = nil, status: ConsultationStatus? = nil, rejectReason: RejectReason? = nil, isOpen: Bool? = nil, paymentId: UUID? = nil) {
        self.id = id
        self.consultationType = consultationType
        self.patientId = patientId
        self.patientName = patientName
        self.communicationUserId = communicationUserId
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.hospitalSlug = hospitalSlug
        self.specialtyId = specialtyId
        self.specialtyName = specialtyName
        self.specialtySlug = specialtySlug
        self.doctorId = doctorId
        self.doctorName = doctorName
        self.doctorSlug = doctorSlug
        self.dealId = dealId
        self.dealName = dealName
        self.dealSlug = dealSlug
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
        self.confirmedDateStart = confirmedDateStart
        self.confirmedDateEnd = confirmedDateEnd
        self.callerName = callerName
        self.callerId = callerId
        self.fee = fee
        self.applicationFee = applicationFee
        self.timeZone = timeZone
        self.status = status
        self.rejectReason = rejectReason
        self.isOpen = isOpen
        self.paymentId = paymentId
    }

}

