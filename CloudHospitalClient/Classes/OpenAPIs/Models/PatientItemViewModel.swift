//
// PatientItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct PatientItemViewModel: Codable {

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

    public init(id: UUID? = nil, userName: String? = nil, firstName: String? = nil, lastName: String? = nil, fullname: String? = nil, phone: String? = nil, email: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, timeZone: String? = nil, communicationUserId: String? = nil, auditableEntity: AuditableEntity? = nil) {
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
    }

}

