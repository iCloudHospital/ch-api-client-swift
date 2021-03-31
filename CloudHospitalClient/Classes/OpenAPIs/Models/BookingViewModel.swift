//
// BookingViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct BookingViewModel: Codable {

    public var id: UUID?
    public var patientId: UUID?
    public var patientName: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var hospitalSlug: String?
    public var dealId: UUID?
    public var dealName: String?
    public var dealSlug: String?
    public var dealPackageId: UUID?
    public var refundPolicy: RefundPolicy?
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
    public var timeZone: String?
    public var status: BookingStatus?
    public var rejectReason: RejectReason?
    public var rejectComment: String?
    public var isOpen: Bool?

    public init(id: UUID? = nil, patientId: UUID? = nil, patientName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, dealId: UUID? = nil, dealName: String? = nil, dealSlug: String? = nil, dealPackageId: UUID? = nil, refundPolicy: RefundPolicy? = nil, quantity: Int? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, phone: String? = nil, dateOfBirth: Date? = nil, gender: Gender? = nil, comment: String? = nil, approximateDateStart: Date? = nil, approximateDateEnd: Date? = nil, confirmedDateStart: Date? = nil, confirmedDateEnd: Date? = nil, fee: Double? = nil, applicationFee: Double? = nil, timeZone: String? = nil, status: BookingStatus? = nil, rejectReason: RejectReason? = nil, rejectComment: String? = nil, isOpen: Bool? = nil) {
        self.id = id
        self.patientId = patientId
        self.patientName = patientName
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.hospitalSlug = hospitalSlug
        self.dealId = dealId
        self.dealName = dealName
        self.dealSlug = dealSlug
        self.dealPackageId = dealPackageId
        self.refundPolicy = refundPolicy
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
        self.timeZone = timeZone
        self.status = status
        self.rejectReason = rejectReason
        self.rejectComment = rejectComment
        self.isOpen = isOpen
    }

}

