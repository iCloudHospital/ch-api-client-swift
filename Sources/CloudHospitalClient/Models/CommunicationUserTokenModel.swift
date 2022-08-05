//
// CommunicationUserTokenModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CommunicationUserTokenModel: Codable, Hashable {

    public var token: String?
    public var expiresOn: Date?
    public var communicationUserId: String?
    public var gateway: String?

    public init(token: String? = nil, expiresOn: Date? = nil, communicationUserId: String? = nil, gateway: String? = nil) {
        self.token = token
        self.expiresOn = expiresOn
        self.communicationUserId = communicationUserId
        self.gateway = gateway
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case token
        case expiresOn
        case communicationUserId
        case gateway
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(token, forKey: .token)
        try container.encodeIfPresent(expiresOn, forKey: .expiresOn)
        try container.encodeIfPresent(communicationUserId, forKey: .communicationUserId)
        try container.encodeIfPresent(gateway, forKey: .gateway)
    }
}
