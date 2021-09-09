//
// CreateSpecialtyTypeCategoryCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CreateSpecialtyTypeCategoryCommand: Codable {

    public var name: String?
    public var description: String?
    public var specialtyTypes: [UUID]?

    public init(name: String? = nil, description: String? = nil, specialtyTypes: [UUID]? = nil) {
        self.name = name
        self.description = description
        self.specialtyTypes = specialtyTypes
    }

}
