//
// Patient.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Patient: Codable {

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
    public var contact: String?
    public var contactNumber: String?
    public var nationality: String?
    public var currentPlanId: UUID?
    public var healthProfile: HealthProfile?
    public var questions: [Question]?
    public var bookings: [Booking]?
    public var consultations: [Consultation]?
    public var payments: [Payment]?
    public var customers: [Customer]?
    public var doctorReviews: [DoctorReview]?
    public var hospitalReviews: [HospitalReview]?

    public init(id: UUID? = nil, userName: String? = nil, email: String? = nil, firstName: String? = nil, lastName: String? = nil, normalizedName: String? = nil, phone: String? = nil, photo: String? = nil, photoThumbnail: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, timeZone: String? = nil, communicationUserId: String? = nil, devices: [Device]? = nil, articles: [Article]? = nil, questionComments: [QuestionComment]? = nil, locations: [UserLocation]? = nil, languages: [UserLanguage]? = nil, auditableEntity: AuditableEntity? = nil, contact: String? = nil, contactNumber: String? = nil, nationality: String? = nil, currentPlanId: UUID? = nil, healthProfile: HealthProfile? = nil, questions: [Question]? = nil, bookings: [Booking]? = nil, consultations: [Consultation]? = nil, payments: [Payment]? = nil, customers: [Customer]? = nil, doctorReviews: [DoctorReview]? = nil, hospitalReviews: [HospitalReview]? = nil) {
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
        self.contact = contact
        self.contactNumber = contactNumber
        self.nationality = nationality
        self.currentPlanId = currentPlanId
        self.healthProfile = healthProfile
        self.questions = questions
        self.bookings = bookings
        self.consultations = consultations
        self.payments = payments
        self.customers = customers
        self.doctorReviews = doctorReviews
        self.hospitalReviews = hospitalReviews
    }

}
