//
// SpecialtyTypeSearchViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SpecialtyTypeSearchViewModel: Codable {

    public var specialtyTypeId: String?
    public var specialtyTypeName: String?
    public var slug: String?
    public var description: String?
    public var content: String?
    public var specialtyTypeCategoryId: String?
    public var specialtyTypeCategoryName: String?
    public var marketingType: Int?
    public var order: Int?
    public var hospitals: [HospitalSearchItemViewModel]?

    public init(specialtyTypeId: String? = nil, specialtyTypeName: String? = nil, slug: String? = nil, description: String? = nil, content: String? = nil, specialtyTypeCategoryId: String? = nil, specialtyTypeCategoryName: String? = nil, marketingType: Int? = nil, order: Int? = nil, hospitals: [HospitalSearchItemViewModel]? = nil) {
        self.specialtyTypeId = specialtyTypeId
        self.specialtyTypeName = specialtyTypeName
        self.slug = slug
        self.description = description
        self.content = content
        self.specialtyTypeCategoryId = specialtyTypeCategoryId
        self.specialtyTypeCategoryName = specialtyTypeCategoryName
        self.marketingType = marketingType
        self.order = order
        self.hospitals = hospitals
    }

}

