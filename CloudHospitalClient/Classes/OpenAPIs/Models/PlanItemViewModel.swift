//
// PlanItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct PlanItemViewModel: Codable {

    public var id: UUID?
    public var name: String?
    public var memberLimit: Int?
    public var unitPrice: Double?
    public var interval: RecurringInterval?
    public var order: Int?

    public init(id: UUID? = nil, name: String? = nil, memberLimit: Int? = nil, unitPrice: Double? = nil, interval: RecurringInterval? = nil, order: Int? = nil) {
        self.id = id
        self.name = name
        self.memberLimit = memberLimit
        self.unitPrice = unitPrice
        self.interval = interval
        self.order = order
    }

}
