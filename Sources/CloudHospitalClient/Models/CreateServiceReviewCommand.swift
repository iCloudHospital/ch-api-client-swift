//
// CreateServiceReviewCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateServiceReviewCommand: Codable, Hashable {

    public var serviceId: UUID?
    public var patientId: UUID?
    public var name: String?
    public var description: String?
    public var content: String?
    public var recommended: Bool?
    public var rate: Int?
    public var reviewType: ReviewType?

    public init(serviceId: UUID? = nil, patientId: UUID? = nil, name: String? = nil, description: String? = nil, content: String? = nil, recommended: Bool? = nil, rate: Int? = nil, reviewType: ReviewType? = nil) {
        self.serviceId = serviceId
        self.patientId = patientId
        self.name = name
        self.description = description
        self.content = content
        self.recommended = recommended
        self.rate = rate
        self.reviewType = reviewType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case serviceId
        case patientId
        case name
        case description
        case content
        case recommended
        case rate
        case reviewType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(serviceId, forKey: .serviceId)
        try container.encodeIfPresent(patientId, forKey: .patientId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(recommended, forKey: .recommended)
        try container.encodeIfPresent(rate, forKey: .rate)
        try container.encodeIfPresent(reviewType, forKey: .reviewType)
    }
}

