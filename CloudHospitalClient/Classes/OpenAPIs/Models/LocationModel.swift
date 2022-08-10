//
// LocationModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct LocationModel: Codable {

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

}

