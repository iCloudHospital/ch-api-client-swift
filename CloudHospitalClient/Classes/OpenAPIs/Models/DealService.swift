//
// DealService.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct DealService: Codable {

    public var dealId: UUID?
    public var deal: Deal?
    public var serviceId: UUID?
    public var service: Service?
    public var order: Int?

    public init(dealId: UUID? = nil, deal: Deal? = nil, serviceId: UUID? = nil, service: Service? = nil, order: Int? = nil) {
        self.dealId = dealId
        self.deal = deal
        self.serviceId = serviceId
        self.service = service
        self.order = order
    }

}

