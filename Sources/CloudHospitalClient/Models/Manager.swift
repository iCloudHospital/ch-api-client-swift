//
// Manager.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Manager: Codable, Hashable {

    public var id: UUID?
    public var userName: String?
    public var email: String?
    public var firstName: String?
    public var lastName: String?
    public var normalizedName: String?
    public var phone: String?
    public var photo: String?
    public var photoThumbnail: String?
    public var gender: Gender?
    public var dateOfBirth: Date?
    public var timeZone: String?
    public var communicationUserId: String?
    public var devices: [Device]?
    public var articles: [Article]?
    public var questionComments: [QuestionComment]?
    public var locations: [UserLocation]?
    public var languages: [UserLanguage]?
    public var auditableEntity: AuditableEntity?
    public var accounts: [Account]?
    public var affiliations: [ManagerAffiliation]?

    public init(id: UUID? = nil, userName: String? = nil, email: String? = nil, firstName: String? = nil, lastName: String? = nil, normalizedName: String? = nil, phone: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, timeZone: String? = nil, communicationUserId: String? = nil, devices: [Device]? = nil, articles: [Article]? = nil, questionComments: [QuestionComment]? = nil, locations: [UserLocation]? = nil, languages: [UserLanguage]? = nil, auditableEntity: AuditableEntity? = nil, accounts: [Account]? = nil, affiliations: [ManagerAffiliation]? = nil) {
        self.id = id
        self.userName = userName
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.normalizedName = normalizedName
        self.phone = phone
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.gender = gender
        self.dateOfBirth = dateOfBirth
        self.timeZone = timeZone
        self.communicationUserId = communicationUserId
        self.devices = devices
        self.articles = articles
        self.questionComments = questionComments
        self.locations = locations
        self.languages = languages
        self.auditableEntity = auditableEntity
        self.accounts = accounts
        self.affiliations = affiliations
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case userName
        case email
        case firstName
        case lastName
        case normalizedName
        case phone
        case photo
        case photoThumbnail
        case gender
        case dateOfBirth
        case timeZone
        case communicationUserId
        case devices
        case articles
        case questionComments
        case locations
        case languages
        case auditableEntity
        case accounts
        case affiliations
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(normalizedName, forKey: .normalizedName)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(photo, forKey: .photo)
        try container.encodeIfPresent(photoThumbnail, forKey: .photoThumbnail)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(dateOfBirth, forKey: .dateOfBirth)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(communicationUserId, forKey: .communicationUserId)
        try container.encodeIfPresent(devices, forKey: .devices)
        try container.encodeIfPresent(articles, forKey: .articles)
        try container.encodeIfPresent(questionComments, forKey: .questionComments)
        try container.encodeIfPresent(locations, forKey: .locations)
        try container.encodeIfPresent(languages, forKey: .languages)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
        try container.encodeIfPresent(accounts, forKey: .accounts)
        try container.encodeIfPresent(affiliations, forKey: .affiliations)
    }
}

