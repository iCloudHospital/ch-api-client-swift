//
// UpdateDoctorReviewCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UpdateDoctorReviewCommand: Codable {

    public var body: String?
    public var recommended: Bool?
    public var reviewCategory: ReviewCategory?
    public var rate: Int?

    public init(body: String? = nil, recommended: Bool? = nil, reviewCategory: ReviewCategory? = nil, rate: Int? = nil) {
        self.body = body
        self.recommended = recommended
        self.reviewCategory = reviewCategory
        self.rate = rate
    }

}

