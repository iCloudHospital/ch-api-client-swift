//
// ServiceCategoryItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ServiceCategoryItemModel: Codable {

    public var id: UUID?
    public var name: String?
    public var normalizedName: String?
    public var description: String?
    public var order: Int?
    public var serviceCount: Int?

    public init(id: UUID? = nil, name: String? = nil, normalizedName: String? = nil, description: String? = nil, order: Int? = nil, serviceCount: Int? = nil) {
        self.id = id
        self.name = name
        self.normalizedName = normalizedName
        self.description = description
        self.order = order
        self.serviceCount = serviceCount
    }

}

