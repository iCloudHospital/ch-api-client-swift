//
// CreateServiceCategoryCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CreateServiceCategoryCommand: Codable {

    public var name: String?
    public var description: String?
    public var services: [UUID]?

    public init(name: String? = nil, description: String? = nil, services: [UUID]? = nil) {
        self.name = name
        self.description = description
        self.services = services
    }

}

