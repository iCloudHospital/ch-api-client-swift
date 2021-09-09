//
// Booking.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Booking: Codable, Hashable {

    public var id: UUID?
    public var patientId: UUID?
    public var patient: Patient?
    public var hospitalId: UUID?
    public var hospital: Hospital?
    public var dealPackageId: UUID?
    public var dealPackage: DealPackage?
    public var quantity: Int?
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
    public var fee: Double?
    public var applicationFee: Double?
    public var status: BookingStatus?
    public var rejectReason: RejectReason?
    public var rejectComment: String?
    public var isOpen: Bool?
    public var paymentId: UUID?
    public var payment: Payment?
    public var timeZone: String?
    public var statusChangeLogs: [ChangeLog]?
    public var medias: [Media]?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, patientId: UUID? = nil, patient: Patient? = nil, hospitalId: UUID? = nil, hospital: Hospital? = nil, dealPackageId: UUID? = nil, dealPackage: DealPackage? = nil, quantity: Int? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, phone: String? = nil, dateOfBirth: Date? = nil, gender: Gender? = nil, comment: String? = nil, approximateDateStart: Date? = nil, approximateDateEnd: Date? = nil, confirmedDateStart: Date? = nil, confirmedDateEnd: Date? = nil, fee: Double? = nil, applicationFee: Double? = nil, status: BookingStatus? = nil, rejectReason: RejectReason? = nil, rejectComment: String? = nil, isOpen: Bool? = nil, paymentId: UUID? = nil, payment: Payment? = nil, timeZone: String? = nil, statusChangeLogs: [ChangeLog]? = nil, medias: [Media]? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.patientId = patientId
        self.patient = patient
        self.hospitalId = hospitalId
        self.hospital = hospital
        self.dealPackageId = dealPackageId
        self.dealPackage = dealPackage
        self.quantity = quantity
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

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case patientId
        case patient
        case hospitalId
        case hospital
        case dealPackageId
        case dealPackage
        case quantity
        case firstName
        case lastName
        case email
        case phone
        case dateOfBirth
        case gender
        case comment
        case approximateDateStart
        case approximateDateEnd
        case confirmedDateStart
        case confirmedDateEnd
        case fee
        case applicationFee
        case status
        case rejectReason
        case rejectComment
        case isOpen
        case paymentId
        case payment
        case timeZone
        case statusChangeLogs
        case medias
        case auditableEntity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(patientId, forKey: .patientId)
        try container.encodeIfPresent(patient, forKey: .patient)
        try container.encodeIfPresent(hospitalId, forKey: .hospitalId)
        try container.encodeIfPresent(hospital, forKey: .hospital)
        try container.encodeIfPresent(dealPackageId, forKey: .dealPackageId)
        try container.encodeIfPresent(dealPackage, forKey: .dealPackage)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(dateOfBirth, forKey: .dateOfBirth)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(approximateDateStart, forKey: .approximateDateStart)
        try container.encodeIfPresent(approximateDateEnd, forKey: .approximateDateEnd)
        try container.encodeIfPresent(confirmedDateStart, forKey: .confirmedDateStart)
        try container.encodeIfPresent(confirmedDateEnd, forKey: .confirmedDateEnd)
        try container.encodeIfPresent(fee, forKey: .fee)
        try container.encodeIfPresent(applicationFee, forKey: .applicationFee)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(rejectReason, forKey: .rejectReason)
        try container.encodeIfPresent(rejectComment, forKey: .rejectComment)
        try container.encodeIfPresent(isOpen, forKey: .isOpen)
        try container.encodeIfPresent(paymentId, forKey: .paymentId)
        try container.encodeIfPresent(payment, forKey: .payment)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(statusChangeLogs, forKey: .statusChangeLogs)
        try container.encodeIfPresent(medias, forKey: .medias)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
    }
}

