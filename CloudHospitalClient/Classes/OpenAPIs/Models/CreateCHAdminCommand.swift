//
// CreateCHAdminCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CreateCHAdminCommand: Codable {

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

    public init(firstName: String? = nil, lastName: String? = nil, phone: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, medias: [MediaViewModel]? = nil, languages: [UserLanguageViewModel]? = nil, locations: [UserLocationViewModel]? = nil) {
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
    }

}

