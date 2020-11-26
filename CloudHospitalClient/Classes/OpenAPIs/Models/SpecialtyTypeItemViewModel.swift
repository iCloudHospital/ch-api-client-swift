//
// SpecialtyTypeItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SpecialtyTypeItemViewModel: Codable {

    public var id: UUID?
    public var name: String?
    public var slug: String?
    public var description: String?
    public var content: String?
    public var marketingType: MarketingType?
    public var specialtyCount: Int?
    public var hospitalSpecialtyCount: Int?
    public var serviceCount: Int?
    public var created: Date?

    public init(id: UUID? = nil, name: String? = nil, slug: String? = nil, description: String? = nil, content: String? = nil, marketingType: MarketingType? = nil, specialtyCount: Int? = nil, hospitalSpecialtyCount: Int? = nil, serviceCount: Int? = nil, created: Date? = nil) {
        self.id = id
        self.name = name
        self.slug = slug
        self.description = description
        self.content = content
        self.marketingType = marketingType
        self.specialtyCount = specialtyCount
        self.hospitalSpecialtyCount = hospitalSpecialtyCount
        self.serviceCount = serviceCount
        self.created = created
    }

}

