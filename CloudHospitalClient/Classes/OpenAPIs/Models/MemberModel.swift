//
// MemberModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MemberModel: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var email: String?
    public var firstName: String?
    public var lastName: String?
    public var fullName: String?
    public var gender: Gender?
    public var dateOfBirth: Date?

    public init(id: UUID? = nil, email: String? = nil, firstName: String? = nil, lastName: String? = nil, fullName: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil) {
        self.id = id
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.fullName = fullName
        self.gender = gender
        self.dateOfBirth = dateOfBirth
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case email
        case firstName
        case lastName
        case fullName
        case gender
        case dateOfBirth
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(fullName, forKey: .fullName)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(dateOfBirth, forKey: .dateOfBirth)
    }
}

