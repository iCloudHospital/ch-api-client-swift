//
// CreateDealPackageCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateDealPackageCommand: Codable, Hashable {

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

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dealId
        case refundPolicy
        case additionalServices
        case accomodation
        case transfer
        case bonus
        case price
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dealId, forKey: .dealId)
        try container.encodeIfPresent(refundPolicy, forKey: .refundPolicy)
        try container.encodeIfPresent(additionalServices, forKey: .additionalServices)
        try container.encodeIfPresent(accomodation, forKey: .accomodation)
        try container.encodeIfPresent(transfer, forKey: .transfer)
        try container.encodeIfPresent(bonus, forKey: .bonus)
        try container.encodeIfPresent(price, forKey: .price)
    }
}

