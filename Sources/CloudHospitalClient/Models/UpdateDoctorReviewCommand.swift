//
// UpdateDoctorReviewCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateDoctorReviewCommand: Codable, Hashable {

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

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case body
        case recommended
        case reviewCategory
        case rate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(body, forKey: .body)
        try container.encodeIfPresent(recommended, forKey: .recommended)
        try container.encodeIfPresent(reviewCategory, forKey: .reviewCategory)
        try container.encodeIfPresent(rate, forKey: .rate)
    }
}
