//
// DoctorReviewItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct DoctorReviewItemViewModel: Codable {

    public var patientId: UUID?
    public var patientName: String?
    public var doctorId: UUID?
    public var doctorName: String?
    public var body: String?
    public var recommended: Bool?
    public var reviewCategory: ReviewCategory?
    public var rate: Int?

    public init(patientId: UUID? = nil, patientName: String? = nil, doctorId: UUID? = nil, doctorName: String? = nil, body: String? = nil, recommended: Bool? = nil, reviewCategory: ReviewCategory? = nil, rate: Int? = nil) {
        self.patientId = patientId
        self.patientName = patientName
        self.doctorId = doctorId
        self.doctorName = doctorName
        self.body = body
        self.recommended = recommended
        self.reviewCategory = reviewCategory
        self.rate = rate
    }

}

