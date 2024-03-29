//
// DoctorSimpleItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DoctorSimpleItemModel: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var firstName: String?
    public var lastName: String?
    public var fullname: String?

    public init(id: UUID? = nil, firstName: String? = nil, lastName: String? = nil, fullname: String? = nil) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.fullname = fullname
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case firstName
        case lastName
        case fullname
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(fullname, forKey: .fullname)
    }
}

