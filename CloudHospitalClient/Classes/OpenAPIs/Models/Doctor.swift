//
// Doctor.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Doctor: Codable {

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
    public var slug: String?
    public var startPracticeDate: Date?
    public var overview: String?
    public var consultationEnabled: Bool?
    public var consultationFee: Double?
    public var doctorReviews: [DoctorReview]?
    public var doctorEducations: [DoctorEducation]?
    public var doctorPortfolios: [DoctorPortfolio]?
    public var doctorSpecialties: [DoctorSpecialty]?
    public var doctorCertificates: [DoctorCertificate]?
    public var doctorAffiliations: [DoctorAffiliation]?
    public var awards: [Award]?
    public var medias: [Media]?

    public init(id: UUID? = nil, userName: String? = nil, email: String? = nil, firstName: String? = nil, lastName: String? = nil, normalizedName: String? = nil, phone: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, timeZone: String? = nil, communicationUserId: String? = nil, devices: [Device]? = nil, articles: [Article]? = nil, questionComments: [QuestionComment]? = nil, locations: [UserLocation]? = nil, languages: [UserLanguage]? = nil, auditableEntity: AuditableEntity? = nil, slug: String? = nil, startPracticeDate: Date? = nil, overview: String? = nil, consultationEnabled: Bool? = nil, consultationFee: Double? = nil, doctorReviews: [DoctorReview]? = nil, doctorEducations: [DoctorEducation]? = nil, doctorPortfolios: [DoctorPortfolio]? = nil, doctorSpecialties: [DoctorSpecialty]? = nil, doctorCertificates: [DoctorCertificate]? = nil, doctorAffiliations: [DoctorAffiliation]? = nil, awards: [Award]? = nil, medias: [Media]? = nil) {
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
        self.slug = slug
        self.startPracticeDate = startPracticeDate
        self.overview = overview
        self.consultationEnabled = consultationEnabled
        self.consultationFee = consultationFee
        self.doctorReviews = doctorReviews
        self.doctorEducations = doctorEducations
        self.doctorPortfolios = doctorPortfolios
        self.doctorSpecialties = doctorSpecialties
        self.doctorCertificates = doctorCertificates
        self.doctorAffiliations = doctorAffiliations
        self.awards = awards
        self.medias = medias
    }

}

