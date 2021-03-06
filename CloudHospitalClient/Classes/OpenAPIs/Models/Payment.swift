//
// Payment.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Payment: Codable {

    public var id: UUID?
    public var paymentMethod: PaymentMethod?
    public var patientId: UUID?
    public var patient: Patient?
    public var customerId: String?
    public var customer: Customer?
    public var chargeId: String?
    public var refundId: String?
    public var chargeStatus: ChargeStatus?
    public var refundStatus: RefundStatus?
    public var paymentStatus: PaymentStatus?
    public var isFullPayment: Bool?
    public var currency: String?
    public var fee: Double?
    public var applicationFee: Double?
    public var cardBrand: String?
    public var cardLast4Digits: String?
    public var chargeStatusChangeLogs: [ChangeLog]?
    public var refundStatusChangeLogs: [ChangeLog]?
    public var paymentStatusChangeLogs: [ChangeLog]?

    public init(id: UUID? = nil, paymentMethod: PaymentMethod? = nil, patientId: UUID? = nil, patient: Patient? = nil, customerId: String? = nil, customer: Customer? = nil, chargeId: String? = nil, refundId: String? = nil, chargeStatus: ChargeStatus? = nil, refundStatus: RefundStatus? = nil, paymentStatus: PaymentStatus? = nil, isFullPayment: Bool? = nil, currency: String? = nil, fee: Double? = nil, applicationFee: Double? = nil, cardBrand: String? = nil, cardLast4Digits: String? = nil, chargeStatusChangeLogs: [ChangeLog]? = nil, refundStatusChangeLogs: [ChangeLog]? = nil, paymentStatusChangeLogs: [ChangeLog]? = nil) {
        self.id = id
        self.paymentMethod = paymentMethod
        self.patientId = patientId
        self.patient = patient
        self.customerId = customerId
        self.customer = customer
        self.chargeId = chargeId
        self.refundId = refundId
        self.chargeStatus = chargeStatus
        self.refundStatus = refundStatus
        self.paymentStatus = paymentStatus
        self.isFullPayment = isFullPayment
        self.currency = currency
        self.fee = fee
        self.applicationFee = applicationFee
        self.cardBrand = cardBrand
        self.cardLast4Digits = cardLast4Digits
        self.chargeStatusChangeLogs = chargeStatusChangeLogs
        self.refundStatusChangeLogs = refundStatusChangeLogs
        self.paymentStatusChangeLogs = paymentStatusChangeLogs
    }

}

