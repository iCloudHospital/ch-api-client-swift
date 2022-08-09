//
// UpdateProfileCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateProfileCommand: Codable, JSONEncodable, Hashable {

    public var firstName: String?
    public var lastName: String?
    public var phone: String?
    public var photo: String?
    public var photoThumbnail: String?
    public var gender: Gender?
    public var dateOfBirth: Date?
    public var languages: [UserLanguageModel]?
    public var locations: [UserLocationModel]?

    public init(firstName: String? = nil, lastName: String? = nil, phone: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, languages: [UserLanguageModel]? = nil, locations: [UserLocationModel]? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.phone = phone
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.gender = gender
        self.dateOfBirth = dateOfBirth
        self.languages = languages
        self.locations = locations
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case firstName
        case lastName
        case phone
        case photo
        case photoThumbnail
        case gender
        case dateOfBirth
        case languages
        case locations
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(photo, forKey: .photo)
        try container.encodeIfPresent(photoThumbnail, forKey: .photoThumbnail)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(dateOfBirth, forKey: .dateOfBirth)
        try container.encodeIfPresent(languages, forKey: .languages)
        try container.encodeIfPresent(locations, forKey: .locations)
    }
}

