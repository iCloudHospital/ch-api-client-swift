//
// PatientModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PatientModel: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var userName: String?
    public var firstName: String?
    public var lastName: String?
    public var fullName: String?
    public var userType: String?
    public var photo: String?
    public var photoThumbnail: String?
    public var timeZone: String?
    public var auditableEntity: AuditableEntity?
    public var phone: String?
    public var email: String?
    public var gender: Gender?
    public var dateOfBirth: Date?
    public var communicationUserId: String?
    public var languages: [UserLanguageModel]?
    public var locations: [UserLocationModel]?
    public var membership: MembershipModel?

    public init(id: UUID? = nil, userName: String? = nil, firstName: String? = nil, lastName: String? = nil, fullName: String? = nil, userType: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, timeZone: String? = nil, auditableEntity: AuditableEntity? = nil, phone: String? = nil, email: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, communicationUserId: String? = nil, languages: [UserLanguageModel]? = nil, locations: [UserLocationModel]? = nil, membership: MembershipModel? = nil) {
        self.id = id
        self.userName = userName
        self.firstName = firstName
        self.lastName = lastName
        self.fullName = fullName
        self.userType = userType
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.timeZone = timeZone
        self.auditableEntity = auditableEntity
        self.phone = phone
        self.email = email
        self.gender = gender
        self.dateOfBirth = dateOfBirth
        self.communicationUserId = communicationUserId
        self.languages = languages
        self.locations = locations
        self.membership = membership
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case userName
        case firstName
        case lastName
        case fullName
        case userType
        case photo
        case photoThumbnail
        case timeZone
        case auditableEntity
        case phone
        case email
        case gender
        case dateOfBirth
        case communicationUserId
        case languages
        case locations
        case membership
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(fullName, forKey: .fullName)
        try container.encodeIfPresent(userType, forKey: .userType)
        try container.encodeIfPresent(photo, forKey: .photo)
        try container.encodeIfPresent(photoThumbnail, forKey: .photoThumbnail)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(dateOfBirth, forKey: .dateOfBirth)
        try container.encodeIfPresent(communicationUserId, forKey: .communicationUserId)
        try container.encodeIfPresent(languages, forKey: .languages)
        try container.encodeIfPresent(locations, forKey: .locations)
        try container.encodeIfPresent(membership, forKey: .membership)
    }
}

