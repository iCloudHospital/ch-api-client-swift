//
// UpdatePatientCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UpdatePatientCommand: Codable {

    public var userName: String?
    public var email: String?
    public var firstName: String?
    public var lastName: String?
    public var phone: String?
    public var photo: String?
    public var photoThumbnail: String?
    public var gender: Gender?
    public var dateOfBirth: Date?
    public var timeZone: String?

    public init(userName: String? = nil, email: String? = nil, firstName: String? = nil, lastName: String? = nil, phone: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, timeZone: String? = nil) {
        self.userName = userName
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.phone = phone
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.gender = gender
        self.dateOfBirth = dateOfBirth
        self.timeZone = timeZone
    }

}

