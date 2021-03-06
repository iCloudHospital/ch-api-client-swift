//
// UpdateSpecialtyTypeCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UpdateSpecialtyTypeCommand: Codable {

    public var name: String?
    public var slug: String?
    public var description: String?
    public var marketingType: MarketingType?
    public var specialtyCount: Int?
    public var hospitalSpecialtyCount: Int?
    public var serviceCount: Int?
    public var created: Date?
    public var content: String?

    public init(name: String? = nil, slug: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, specialtyCount: Int? = nil, hospitalSpecialtyCount: Int? = nil, serviceCount: Int? = nil, created: Date? = nil, content: String? = nil) {
        self.name = name
        self.slug = slug
        self.description = description
        self.marketingType = marketingType
        self.specialtyCount = specialtyCount
        self.hospitalSpecialtyCount = hospitalSpecialtyCount
        self.serviceCount = serviceCount
        self.created = created
        self.content = content
    }

}

