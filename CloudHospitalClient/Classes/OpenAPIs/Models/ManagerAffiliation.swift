//
// ManagerAffiliation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ManagerAffiliation: Codable {

    public var managerId: UUID?
    public var manager: Manager?
    public var hospitalId: UUID?
    public var hospital: Hospital?

    public init(managerId: UUID? = nil, manager: Manager? = nil, hospitalId: UUID? = nil, hospital: Hospital? = nil) {
        self.managerId = managerId
        self.manager = manager
        self.hospitalId = hospitalId
        self.hospital = hospital
    }

}

