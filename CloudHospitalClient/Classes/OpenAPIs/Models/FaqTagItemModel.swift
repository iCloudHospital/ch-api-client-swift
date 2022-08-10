//
// FaqTagItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FaqTagItemModel: Codable, JSONEncodable, Hashable {

    public var faqId: UUID?
    public var tagId: String?
    public var order: Int?

    public init(faqId: UUID? = nil, tagId: String? = nil, order: Int? = nil) {
        self.faqId = faqId
        self.tagId = tagId
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case faqId
        case tagId
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(faqId, forKey: .faqId)
        try container.encodeIfPresent(tagId, forKey: .tagId)
        try container.encodeIfPresent(order, forKey: .order)
    }
}

