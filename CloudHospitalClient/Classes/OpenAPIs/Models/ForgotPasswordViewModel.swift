//
// ForgotPasswordViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ForgotPasswordViewModel: Codable, JSONEncodable, Hashable {

    public var policy: LoginResolutionPolicy
    public var email: String?
    public var username: String?

    public init(policy: LoginResolutionPolicy, email: String? = nil, username: String? = nil) {
        self.policy = policy
        self.email = email
        self.username = username
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case policy
        case email
        case username
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(policy, forKey: .policy)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(username, forKey: .username)
    }
}

