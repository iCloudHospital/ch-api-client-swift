//
// AccreditationItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AccreditationItemModel: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var name: String?
    public var logo: String?
    public var country: String?

    public init(id: UUID? = nil, name: String? = nil, logo: String? = nil, country: String? = nil) {
        self.id = id
        self.name = name
        self.logo = logo
        self.country = country
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case logo
        case country
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(country, forKey: .country)
    }
}

