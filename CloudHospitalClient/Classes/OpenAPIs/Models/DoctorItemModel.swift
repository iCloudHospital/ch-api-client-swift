//
// DoctorItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct DoctorItemModel: Codable {

    public var id: UUID?
    public var firstName: String?
    public var lastName: String?
    public var fullName: String?
    public var userType: String?
    public var photo: String?
    public var photoThumbnail: String?
    public var timeZone: String?

    public init(id: UUID? = nil, firstName: String? = nil, lastName: String? = nil, fullName: String? = nil, userType: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, timeZone: String? = nil) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.fullName = fullName
        self.userType = userType
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.timeZone = timeZone
    }

}

