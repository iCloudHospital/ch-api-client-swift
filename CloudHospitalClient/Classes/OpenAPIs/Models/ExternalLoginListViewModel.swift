//
// ExternalLoginListViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ExternalLoginListViewModel: Codable, JSONEncodable, Hashable {

    public var currentLogins: [UserLoginInfo]?
    public var otherLogins: [OtherLoginInfo]?
    public var canRemoveCurrentLogin: Bool?

    public init(currentLogins: [UserLoginInfo]? = nil, otherLogins: [OtherLoginInfo]? = nil, canRemoveCurrentLogin: Bool? = nil) {
        self.currentLogins = currentLogins
        self.otherLogins = otherLogins
        self.canRemoveCurrentLogin = canRemoveCurrentLogin
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currentLogins
        case otherLogins
        case canRemoveCurrentLogin
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currentLogins, forKey: .currentLogins)
        try container.encodeIfPresent(otherLogins, forKey: .otherLogins)
        try container.encodeIfPresent(canRemoveCurrentLogin, forKey: .canRemoveCurrentLogin)
    }
}

