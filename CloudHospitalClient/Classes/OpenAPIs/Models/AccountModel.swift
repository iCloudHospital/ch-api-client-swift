//
// AccountModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif


public struct AccountModel: Codable, JSONEncodable, Hashable {
    public var id: String
    public var userName: String
    public var hasPassword: Bool
    public var email: String
    public var emailConfirmed: Bool
    public var phoneNumber: String?
    public var phoneNumberConfirmed, twoFactorEnabled: Bool
    public var lockoutEnd: String?
    public var lockoutEnabled: Bool
    public var accessFailedCount: Int

    public init(id: String, userName: String, hasPassword: Bool, email: String, emailConfirmed: Bool, phoneNumber: String?, phoneNumberConfirmed: Bool, twoFactorEnabled: Bool, lockoutEnd: String?, lockoutEnabled: Bool, accessFailedCount: Int
    ) {
        self.id = id
        self.userName = userName
        self.hasPassword = hasPassword
        self.email = email
        self.emailConfirmed = emailConfirmed
        self.phoneNumber = phoneNumber
        self.phoneNumberConfirmed = phoneNumberConfirmed
        self.twoFactorEnabled = twoFactorEnabled
        self.lockoutEnd = lockoutEnd
        self.lockoutEnabled = lockoutEnabled
        self.accessFailedCount = accessFailedCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case userName
        case hasPassword
        case email
        case emailConfirmed
        case phoneNumber
        case phoneNumberConfirmed
        case twoFactorEnabled
        case lockoutEnd
        case lockoutEnabled
        case accessFailedCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(userName, forKey: .userName)
        try container.encode(hasPassword, forKey: .hasPassword)
        try container.encode(email, forKey: .email)
        try container.encode(emailConfirmed, forKey: .emailConfirmed)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encode(phoneNumberConfirmed, forKey: .phoneNumberConfirmed)
        try container.encode(twoFactorEnabled, forKey: .twoFactorEnabled)
        try container.encodeIfPresent(lockoutEnd, forKey: .lockoutEnd)
        try container.encode(lockoutEnabled, forKey: .lockoutEnabled)
        try container.encode(accessFailedCount, forKey: .accessFailedCount)
    }
}
