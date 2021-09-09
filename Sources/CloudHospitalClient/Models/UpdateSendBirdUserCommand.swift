//
// UpdateSendBirdUserCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateSendBirdUserCommand: Codable, Hashable {

    public var nickname: String?
    public var profileUrl: String?

    public init(nickname: String? = nil, profileUrl: String? = nil) {
        self.nickname = nickname
        self.profileUrl = profileUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nickname
        case profileUrl = "profile_url"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(nickname, forKey: .nickname)
        try container.encodeIfPresent(profileUrl, forKey: .profileUrl)
    }
}

