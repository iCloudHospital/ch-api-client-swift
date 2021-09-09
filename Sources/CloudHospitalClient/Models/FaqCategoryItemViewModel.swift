//
// FaqCategoryItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FaqCategoryItemViewModel: Codable, Hashable {

    public var id: UUID?
    public var parentId: UUID?
    public var name: String?
    public var slug: String?
    public var description: String?
    public var order: Int?
    public var faqs: [FaqItemViewModel]?

    public init(id: UUID? = nil, parentId: UUID? = nil, name: String? = nil, slug: String? = nil, description: String? = nil, order: Int? = nil, faqs: [FaqItemViewModel]? = nil) {
        self.id = id
        self.parentId = parentId
        self.name = name
        self.slug = slug
        self.description = description
        self.order = order
        self.faqs = faqs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case parentId
        case name
        case slug
        case description
        case order
        case faqs
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(parentId, forKey: .parentId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(faqs, forKey: .faqs)
    }
}

