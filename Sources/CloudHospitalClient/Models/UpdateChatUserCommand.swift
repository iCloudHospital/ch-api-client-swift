//
// UpdateChatUserCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateChatUserCommand: Codable, Hashable {

    public var nickname: String?
    public var profileUrl: String?
    public var issueAccessToken: Bool?
    public var discoveryKeys: [String]?

    public init(nickname: String? = nil, profileUrl: String? = nil, issueAccessToken: Bool? = nil, discoveryKeys: [String]? = nil) {
        self.nickname = nickname
        self.profileUrl = profileUrl
        self.issueAccessToken = issueAccessToken
        self.discoveryKeys = discoveryKeys
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nickname
        case profileUrl
        case issueAccessToken
        case discoveryKeys
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(nickname, forKey: .nickname)
        try container.encodeIfPresent(profileUrl, forKey: .profileUrl)
        try container.encodeIfPresent(issueAccessToken, forKey: .issueAccessToken)
        try container.encodeIfPresent(discoveryKeys, forKey: .discoveryKeys)
    }
}
