//
// SpecialtySearchViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SpecialtySearchViewModel: Codable {

    public var specialtyId: String?
    public var specialtyName: String?
    public var slug: String?
    public var description: String?
    public var content: String?
    public var specialtyTypeId: String?
    public var specialtyTypeName: String?
    public var specialtyTypeCategoryId: String?
    public var specialtyTypeCategoryName: String?
    public var marketingType: Int?
    public var order: Int?
    public var hospitals: [HospitalSearchItemViewModel]?

    public init(specialtyId: String? = nil, specialtyName: String? = nil, slug: String? = nil, description: String? = nil, content: String? = nil, specialtyTypeId: String? = nil, specialtyTypeName: String? = nil, specialtyTypeCategoryId: String? = nil, specialtyTypeCategoryName: String? = nil, marketingType: Int? = nil, order: Int? = nil, hospitals: [HospitalSearchItemViewModel]? = nil) {
        self.specialtyId = specialtyId
        self.specialtyName = specialtyName
        self.slug = slug
        self.description = description
        self.content = content
        self.specialtyTypeId = specialtyTypeId
        self.specialtyTypeName = specialtyTypeName
        self.specialtyTypeCategoryId = specialtyTypeCategoryId
        self.specialtyTypeCategoryName = specialtyTypeCategoryName
        self.marketingType = marketingType
        self.order = order
        self.hospitals = hospitals
    }

}

