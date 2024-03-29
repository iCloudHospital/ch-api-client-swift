//
// FacebookUserDataDeletionResponseModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FacebookUserDataDeletionResponseModel: Codable, JSONEncodable, Hashable {

    public var userId: String?
    public var isLockout: Bool?
    public var provider: String?
    public var providerKey: String?

    public init(userId: String? = nil, isLockout: Bool? = nil, provider: String? = nil, providerKey: String? = nil) {
        self.userId = userId
        self.isLockout = isLockout
        self.provider = provider
        self.providerKey = providerKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userId
        case isLockout
        case provider
        case providerKey
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(isLockout, forKey: .isLockout)
        try container.encodeIfPresent(provider, forKey: .provider)
        try container.encodeIfPresent(providerKey, forKey: .providerKey)
    }
}

