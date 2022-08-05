//
// HospitalAffiliationViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct HospitalAffiliationViewModel: Codable, Hashable {

    public var hospitalId: UUID?
    public var hospitalName: String?
    public var hospitalSlug: String?
    public var countryId: UUID?
    public var countryName: String?
    public var stateName: String?
    public var cityName: String?

    public init(hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, countryId: UUID? = nil, countryName: String? = nil, stateName: String? = nil, cityName: String? = nil) {
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.hospitalSlug = hospitalSlug
        self.countryId = countryId
        self.countryName = countryName
        self.stateName = stateName
        self.cityName = cityName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hospitalId
        case hospitalName
        case hospitalSlug
        case countryId
        case countryName
        case stateName
        case cityName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(hospitalId, forKey: .hospitalId)
        try container.encodeIfPresent(hospitalName, forKey: .hospitalName)
        try container.encodeIfPresent(hospitalSlug, forKey: .hospitalSlug)
        try container.encodeIfPresent(countryId, forKey: .countryId)
        try container.encodeIfPresent(countryName, forKey: .countryName)
        try container.encodeIfPresent(stateName, forKey: .stateName)
        try container.encodeIfPresent(cityName, forKey: .cityName)
    }
}
