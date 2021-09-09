//
// Consultation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Consultation: Codable {

    public var id: UUID?
    public var consultationType: ConsultationType?
    public var patientId: UUID?
    public var patient: Patient?
    public var hospitalId: UUID?
    public var hospital: Hospital?
    public var specialtyId: UUID?
    public var specialty: Specialty?
    public var doctorId: UUID?
    public var doctor: Doctor?
    public var dealId: UUID?
    public var deal: Deal?
    public var language: String?
    public var isAccountHolder: Bool?
    public var firstName: String?
    public var lastName: String?
    public var email: String?
    public var phone: String?
    public var dateOfBirth: Date?
    public var gender: Gender?
    public var comment: String?
    public var approximateDateStart: Date?
    public var approximateDateEnd: Date?
    public var confirmedDateStart: Date?
    public var confirmedDateEnd: Date?
    public var caller: User?
    public var callerId: UUID?
    public var fee: Double?
    public var applicationFee: Double?
    public var status: ConsultationStatus?
    public var rejectReason: RejectReason?
    public var rejectComment: String?
    public var isOpen: Bool?
    public var paymentId: UUID?
    public var payment: Payment?
    public var timeZone: String?
    public var statusChangeLogs: [ChangeLog]?
    public var medias: [Media]?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, consultationType: ConsultationType? = nil, patientId: UUID? = nil, patient: Patient? = nil, hospitalId: UUID? = nil, hospital: Hospital? = nil, specialtyId: UUID? = nil, specialty: Specialty? = nil, doctorId: UUID? = nil, doctor: Doctor? = nil, dealId: UUID? = nil, deal: Deal? = nil, language: String? = nil, isAccountHolder: Bool? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, phone: String? = nil, dateOfBirth: Date? = nil, gender: Gender? = nil, comment: String? = nil, approximateDateStart: Date? = nil, approximateDateEnd: Date? = nil, confirmedDateStart: Date? = nil, confirmedDateEnd: Date? = nil, caller: User? = nil, callerId: UUID? = nil, fee: Double? = nil, applicationFee: Double? = nil, status: ConsultationStatus? = nil, rejectReason: RejectReason? = nil, rejectComment: String? = nil, isOpen: Bool? = nil, paymentId: UUID? = nil, payment: Payment? = nil, timeZone: String? = nil, statusChangeLogs: [ChangeLog]? = nil, medias: [Media]? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.consultationType = consultationType
        self.patientId = patientId
        self.patient = patient
        self.hospitalId = hospitalId
        self.hospital = hospital
        self.specialtyId = specialtyId
        self.specialty = specialty
        self.doctorId = doctorId
        self.doctor = doctor
        self.dealId = dealId
        self.deal = deal
        self.language = language
        self.isAccountHolder = isAccountHolder
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.phone = phone
        self.dateOfBirth = dateOfBirth
        self.gender = gender
        self.comment = comment
        self.approximateDateStart = approximateDateStart
        self.approximateDateEnd = approximateDateEnd
        self.confirmedDateStart = confirmedDateStart
        self.confirmedDateEnd = confirmedDateEnd
        self.caller = caller
        self.callerId = callerId
        self.fee = fee
        self.applicationFee = applicationFee
        self.status = status
        self.rejectReason = rejectReason
        self.rejectComment = rejectComment
        self.isOpen = isOpen
        self.paymentId = paymentId
        self.payment = payment
        self.timeZone = timeZone
        self.statusChangeLogs = statusChangeLogs
        self.medias = medias
        self.auditableEntity = auditableEntity
    }

}
