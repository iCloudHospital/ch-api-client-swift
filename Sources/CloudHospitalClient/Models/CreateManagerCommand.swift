//
// CreateManagerCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateManagerCommand: Codable, Hashable {

    public var firstName: String?
    public var lastName: String?
    public var phone: String?
    public var photo: String?
    public var photoThumbnail: String?
    public var gender: Gender?
    public var dateOfBirth: Date?
    public var medias: [MediaViewModel]?
    public var languages: [UserLanguageViewModel]?
    public var locations: [UserLocationViewModel]?
    public var userName: String?
    public var email: String?
    public var hospitalId: UUID?

    public init(firstName: String? = nil, lastName: String? = nil, phone: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, medias: [MediaViewModel]? = nil, languages: [UserLanguageViewModel]? = nil, locations: [UserLocationViewModel]? = nil, userName: String? = nil, email: String? = nil, hospitalId: UUID? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.phone = phone
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.gender = gender
        self.dateOfBirth = dateOfBirth
        self.medias = medias
        self.languages = languages
        self.locations = locations
        self.userName = userName
        self.email = email
        self.hospitalId = hospitalId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case firstName
        case lastName
        case phone
        case photo
        case photoThumbnail
        case gender
        case dateOfBirth
        case medias
        case languages
        case locations
        case userName
        case email
        case hospitalId
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
        try container.encodeIfPresent(medias, forKey: .medias)
        try container.encodeIfPresent(languages, forKey: .languages)
        try container.encodeIfPresent(locations, forKey: .locations)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(hospitalId, forKey: .hospitalId)
    }
}
