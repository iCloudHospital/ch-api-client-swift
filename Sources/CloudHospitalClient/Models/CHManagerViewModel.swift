//
// CHManagerViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CHManagerViewModel: Codable, Hashable {

    public var id: UUID?
    public var userName: String?
    public var firstName: String?
    public var lastName: String?
    public var fullname: String?
    public var phone: String?
    public var email: String?
    public var photo: String?
    public var photoThumbnail: String?
    public var gender: Gender?
    public var dateOfBirth: Date?
    public var timeZone: String?
    public var communicationUserId: String?
    public var auditableEntity: AuditableEntity?
    public var userType: String?
    public var languages: [UserLanguageViewModel]?
    public var locations: [UserLocationViewModel]?

    public init(id: UUID? = nil, userName: String? = nil, firstName: String? = nil, lastName: String? = nil, fullname: String? = nil, phone: String? = nil, email: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, timeZone: String? = nil, communicationUserId: String? = nil, auditableEntity: AuditableEntity? = nil, userType: String? = nil, languages: [UserLanguageViewModel]? = nil, locations: [UserLocationViewModel]? = nil) {
        self.id = id
        self.userName = userName
        self.firstName = firstName
        self.lastName = lastName
        self.fullname = fullname
        self.phone = phone
        self.email = email
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.gender = gender
        self.dateOfBirth = dateOfBirth
        self.timeZone = timeZone
        self.communicationUserId = communicationUserId
        self.auditableEntity = auditableEntity
        self.userType = userType
        self.languages = languages
        self.locations = locations
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case userName
        case firstName
        case lastName
        case fullname
        case phone
        case email
        case photo
        case photoThumbnail
        case gender
        case dateOfBirth
        case timeZone
        case communicationUserId
        case auditableEntity
        case userType
        case languages
        case locations
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(fullname, forKey: .fullname)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(photo, forKey: .photo)
        try container.encodeIfPresent(photoThumbnail, forKey: .photoThumbnail)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(dateOfBirth, forKey: .dateOfBirth)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(communicationUserId, forKey: .communicationUserId)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
        try container.encodeIfPresent(userType, forKey: .userType)
        try container.encodeIfPresent(languages, forKey: .languages)
        try container.encodeIfPresent(locations, forKey: .locations)
    }
}
