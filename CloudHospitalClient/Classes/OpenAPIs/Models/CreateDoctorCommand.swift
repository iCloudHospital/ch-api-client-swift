//
// CreateDoctorCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CreateDoctorCommand: Codable {

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
    public var consultationEnabled: Bool?
    public var consultationFee: Double?
    public var educations: [DoctorEducationViewModel]?
    public var portfolios: [DoctorPortfolioViewModel]?
    public var specialties: [DoctorSpecialtyViewModel]?
    public var certificates: [DoctorCertificateViewModel]?
    public var awards: [AwardViewModel]?

    public init(firstName: String? = nil, lastName: String? = nil, phone: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, medias: [MediaViewModel]? = nil, languages: [UserLanguageViewModel]? = nil, locations: [UserLocationViewModel]? = nil, userName: String? = nil, email: String? = nil, hospitalId: UUID? = nil, consultationEnabled: Bool? = nil, consultationFee: Double? = nil, educations: [DoctorEducationViewModel]? = nil, portfolios: [DoctorPortfolioViewModel]? = nil, specialties: [DoctorSpecialtyViewModel]? = nil, certificates: [DoctorCertificateViewModel]? = nil, awards: [AwardViewModel]? = nil) {
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
        self.consultationEnabled = consultationEnabled
        self.consultationFee = consultationFee
        self.educations = educations
        self.portfolios = portfolios
        self.specialties = specialties
        self.certificates = certificates
        self.awards = awards
    }

}

