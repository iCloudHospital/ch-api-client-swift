//
// CreateBookingCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateBookingCommand: Codable, JSONEncodable, Hashable {

    public var hospitalId: UUID?
    public var dealPackageId: UUID?
    public var quantity: Int?
    public var firstName: String?
    public var lastName: String?
    public var email: String?
    public var phone: String?
    public var dateOfBirth: Date?
    public var gender: Gender?
    public var approximateDateStart: Date?
    public var approximateDateEnd: Date?
    public var comment: String?
    public var timeZone: String?
    public var isExternal: Bool?

    public init(hospitalId: UUID? = nil, dealPackageId: UUID? = nil, quantity: Int? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, phone: String? = nil, dateOfBirth: Date? = nil, gender: Gender? = nil, approximateDateStart: Date? = nil, approximateDateEnd: Date? = nil, comment: String? = nil, timeZone: String? = nil, isExternal: Bool? = nil) {
        self.hospitalId = hospitalId
        self.dealPackageId = dealPackageId
        self.quantity = quantity
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.phone = phone
        self.dateOfBirth = dateOfBirth
        self.gender = gender
        self.approximateDateStart = approximateDateStart
        self.approximateDateEnd = approximateDateEnd
        self.comment = comment
        self.timeZone = timeZone
        self.isExternal = isExternal
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hospitalId
        case dealPackageId
        case quantity
        case firstName
        case lastName
        case email
        case phone
        case dateOfBirth
        case gender
        case approximateDateStart
        case approximateDateEnd
        case comment
        case timeZone
        case isExternal
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(hospitalId, forKey: .hospitalId)
        try container.encodeIfPresent(dealPackageId, forKey: .dealPackageId)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(dateOfBirth, forKey: .dateOfBirth)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(approximateDateStart, forKey: .approximateDateStart)
        try container.encodeIfPresent(approximateDateEnd, forKey: .approximateDateEnd)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(isExternal, forKey: .isExternal)
    }
}

