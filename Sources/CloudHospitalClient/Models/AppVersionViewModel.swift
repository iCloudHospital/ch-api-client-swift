//
// AppVersionViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppVersionViewModel: Codable, Hashable {

    public var platform: Platform?
    public var latestVersion: String?
    public var minimumVersion: String?
    public var committedDate: Date?

    public init(platform: Platform? = nil, latestVersion: String? = nil, minimumVersion: String? = nil, committedDate: Date? = nil) {
        self.platform = platform
        self.latestVersion = latestVersion
        self.minimumVersion = minimumVersion
        self.committedDate = committedDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case platform
        case latestVersion
        case minimumVersion
        case committedDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(latestVersion, forKey: .latestVersion)
        try container.encodeIfPresent(minimumVersion, forKey: .minimumVersion)
        try container.encodeIfPresent(committedDate, forKey: .committedDate)
    }
}

