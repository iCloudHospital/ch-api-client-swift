//
// CreateServiceCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateServiceCommand: Codable, Hashable {

    public var name: String?
    public var description: String?
    public var minPrice: Double?
    public var maxPrice: Double?
    public var priceReuqest: Bool?
    public var procedure: Procedure?

    public init(name: String? = nil, description: String? = nil, minPrice: Double? = nil, maxPrice: Double? = nil, priceReuqest: Bool? = nil, procedure: Procedure? = nil) {
        self.name = name
        self.description = description
        self.minPrice = minPrice
        self.maxPrice = maxPrice
        self.priceReuqest = priceReuqest
        self.procedure = procedure
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case minPrice
        case maxPrice
        case priceReuqest
        case procedure
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(minPrice, forKey: .minPrice)
        try container.encodeIfPresent(maxPrice, forKey: .maxPrice)
        try container.encodeIfPresent(priceReuqest, forKey: .priceReuqest)
        try container.encodeIfPresent(procedure, forKey: .procedure)
    }
}

