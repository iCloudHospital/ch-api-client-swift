//
// DoctorReview.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct DoctorReview: Codable {

    public var patientId: UUID?
    public var patient: Patient?
    public var doctorId: UUID?
    public var doctor: Doctor?
    public var body: String?
    public var recommended: Bool?
    public var reviewCategory: ReviewCategory?
    public var rate: Int?

    public init(patientId: UUID? = nil, patient: Patient? = nil, doctorId: UUID? = nil, doctor: Doctor? = nil, body: String? = nil, recommended: Bool? = nil, reviewCategory: ReviewCategory? = nil, rate: Int? = nil) {
        self.patientId = patientId
        self.patient = patient
        self.doctorId = doctorId
        self.doctor = doctor
        self.body = body
        self.recommended = recommended
        self.reviewCategory = reviewCategory
        self.rate = rate
    }

}
