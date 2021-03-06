//
// CreateDealPackageCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CreateDealPackageCommand: Codable {

    public var dealId: UUID?
    public var refundPolicy: RefundPolicy?
    public var additionalServices: String?
    public var accomodation: String?
    public var transfer: String?
    public var bonus: String?
    public var price: Double?

    public init(dealId: UUID? = nil, refundPolicy: RefundPolicy? = nil, additionalServices: String? = nil, accomodation: String? = nil, transfer: String? = nil, bonus: String? = nil, price: Double? = nil) {
        self.dealId = dealId
        self.refundPolicy = refundPolicy
        self.additionalServices = additionalServices
        self.accomodation = accomodation
        self.transfer = transfer
        self.bonus = bonus
        self.price = price
    }

}

