//
// Accreditation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Accreditation: Codable {

    public var id: UUID?
    public var name: String?
    public var normalizedName: String?
    public var logo: String?
    public var country: String?
    public var accreditations: [HospitalAccreditation]?

    public init(id: UUID? = nil, name: String? = nil, normalizedName: String? = nil, logo: String? = nil, country: String? = nil, accreditations: [HospitalAccreditation]? = nil) {
        self.id = id
        self.name = name
        self.normalizedName = normalizedName
        self.logo = logo
        self.country = country
        self.accreditations = accreditations
    }

}

