//
// LocationViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LocationViewModel: Codable, Hashable {

    public var latitude: Double?
    public var longitude: Double?
    public var country: String?
    public var state: String?
    public var county: String?
    public var city: String?
    public var zipCode: String?
    public var address: String?

    public init(latitude: Double? = nil, longitude: Double? = nil, country: String? = nil, state: String? = nil, county: String? = nil, city: String? = nil, zipCode: String? = nil, address: String? = nil) {
        self.latitude = latitude
        self.longitude = longitude
        self.country = country
        self.state = state
        self.county = county
        self.city = city
        self.zipCode = zipCode
        self.address = address
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case latitude
        case longitude
        case country
        case state
        case county
        case city
        case zipCode
        case address
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(latitude, forKey: .latitude)
        try container.encodeIfPresent(longitude, forKey: .longitude)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(county, forKey: .county)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(zipCode, forKey: .zipCode)
        try container.encodeIfPresent(address, forKey: .address)
    }
}

