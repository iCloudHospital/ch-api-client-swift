//
// HospitalEvaluation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct HospitalEvaluation: Codable {

    public var id: UUID?
    public var hospitalId: UUID?
    public var hospital: Hospital?
    public var name: String?
    public var stars: Int?
    public var description: String?
    public var referenceUrl: String?

    public init(id: UUID? = nil, hospitalId: UUID? = nil, hospital: Hospital? = nil, name: String? = nil, stars: Int? = nil, description: String? = nil, referenceUrl: String? = nil) {
        self.id = id
        self.hospitalId = hospitalId
        self.hospital = hospital
        self.name = name
        self.stars = stars
        self.description = description
        self.referenceUrl = referenceUrl
    }

}

