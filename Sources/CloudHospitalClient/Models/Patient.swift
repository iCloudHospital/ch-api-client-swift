//
// Patient.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Patient: Codable, Hashable {

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
        case contact
        case contactNumber
        case nationality
        case currentPlanId
        case healthProfile
        case questions
        case bookings
        case consultations
        case payments
        case customers
        case doctorReviews
        case hospitalReviews
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
        try container.encodeIfPresent(contact, forKey: .contact)
        try container.encodeIfPresent(contactNumber, forKey: .contactNumber)
        try container.encodeIfPresent(nationality, forKey: .nationality)
        try container.encodeIfPresent(currentPlanId, forKey: .currentPlanId)
        try container.encodeIfPresent(healthProfile, forKey: .healthProfile)
        try container.encodeIfPresent(questions, forKey: .questions)
        try container.encodeIfPresent(bookings, forKey: .bookings)
        try container.encodeIfPresent(consultations, forKey: .consultations)
        try container.encodeIfPresent(payments, forKey: .payments)
        try container.encodeIfPresent(customers, forKey: .customers)
        try container.encodeIfPresent(doctorReviews, forKey: .doctorReviews)
        try container.encodeIfPresent(hospitalReviews, forKey: .hospitalReviews)
    }
}

