//
// DoctorViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct DoctorViewModel: Codable {

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
    public var slug: String?
    public var startPracticeDate: Date?
    public var yearOfExperience: Double?
    public var overview: String?
    public var consultationEnabled: Bool?
    public var consultationFee: Double?
    public var doctorReviews: [DoctorReviewItemViewModel]?
    public var doctorEducations: [DoctorEducationItemViewModel]?
    public var doctorPortfolios: [DoctorPortfolioItemViewModel]?
    public var doctorSpecialties: [DoctorSpecialtyItemViewModel]?
    public var doctorCertificates: [DoctorCertificateItemViewModel]?
    public var doctorAffiliations: [HospitalAffiliationViewModel]?
    public var articles: [Article]?
    public var awards: [AwardViewModel]?
    public var medias: [MediaViewModel]?

    public init(id: UUID? = nil, userName: String? = nil, firstName: String? = nil, lastName: String? = nil, fullname: String? = nil, phone: String? = nil, email: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, timeZone: String? = nil, communicationUserId: String? = nil, auditableEntity: AuditableEntity? = nil, userType: String? = nil, languages: [UserLanguageViewModel]? = nil, locations: [UserLocationViewModel]? = nil, slug: String? = nil, startPracticeDate: Date? = nil, yearOfExperience: Double? = nil, overview: String? = nil, consultationEnabled: Bool? = nil, consultationFee: Double? = nil, doctorReviews: [DoctorReviewItemViewModel]? = nil, doctorEducations: [DoctorEducationItemViewModel]? = nil, doctorPortfolios: [DoctorPortfolioItemViewModel]? = nil, doctorSpecialties: [DoctorSpecialtyItemViewModel]? = nil, doctorCertificates: [DoctorCertificateItemViewModel]? = nil, doctorAffiliations: [HospitalAffiliationViewModel]? = nil, articles: [Article]? = nil, awards: [AwardViewModel]? = nil, medias: [MediaViewModel]? = nil) {
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
        self.slug = slug
        self.startPracticeDate = startPracticeDate
        self.yearOfExperience = yearOfExperience
        self.overview = overview
        self.consultationEnabled = consultationEnabled
        self.consultationFee = consultationFee
        self.doctorReviews = doctorReviews
        self.doctorEducations = doctorEducations
        self.doctorPortfolios = doctorPortfolios
        self.doctorSpecialties = doctorSpecialties
        self.doctorCertificates = doctorCertificates
        self.doctorAffiliations = doctorAffiliations
        self.articles = articles
        self.awards = awards
        self.medias = medias
    }

}

