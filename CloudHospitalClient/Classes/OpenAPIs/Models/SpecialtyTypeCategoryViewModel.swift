//
// SpecialtyTypeCategoryViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SpecialtyTypeCategoryViewModel: Codable {

    public var id: UUID?
    public var name: String?
    public var description: String?
    public var order: Int?
    public var specialtyTypeCount: Int?
    public var specialtyTypes: [SpecialtyTypeItemViewModel]?

    public init(id: UUID? = nil, name: String? = nil, description: String? = nil, order: Int? = nil, specialtyTypeCount: Int? = nil, specialtyTypes: [SpecialtyTypeItemViewModel]? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.order = order
        self.specialtyTypeCount = specialtyTypeCount
        self.specialtyTypes = specialtyTypes
    }

}
