//
// CreateDeviceLoginCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateDeviceLoginCommand: Codable, JSONEncodable, Hashable {

    public var version: String?
    public var location: LocationModel?

    public init(version: String? = nil, location: LocationModel? = nil) {
        self.version = version
        self.location = location
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case version
        case location
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(location, forKey: .location)
    }
}

