//
// PlanHospitalItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct PlanHospitalItemModel: Codable {

    public var planId: UUID?
    public var planName: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var order: Int?

    public init(planId: UUID? = nil, planName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, order: Int? = nil) {
        self.planId = planId
        self.planName = planName
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.order = order
    }

}

