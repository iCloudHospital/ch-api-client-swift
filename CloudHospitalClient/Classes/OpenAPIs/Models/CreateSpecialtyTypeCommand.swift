//
// CreateSpecialtyTypeCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CreateSpecialtyTypeCommand: Codable {

    public var name: String?
    public var description: String?
    public var content: String?
    public var marketingType: MarketingType?

    public init(name: String? = nil, description: String? = nil, content: String? = nil, marketingType: MarketingType? = nil) {
        self.name = name
        self.description = description
        self.content = content
        self.marketingType = marketingType
    }

}

