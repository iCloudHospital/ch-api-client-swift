//
// FaqCategoryViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct FaqCategoryViewModel: Codable {

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

}

