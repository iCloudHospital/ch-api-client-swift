//
// FaqCategoryBreadCrumbViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct FaqCategoryBreadCrumbViewModel: Codable {

    public var id: UUID?
    public var name: String?
    public var slug: String?
    public var parentId: UUID?

    public init(id: UUID? = nil, name: String? = nil, slug: String? = nil, parentId: UUID? = nil) {
        self.id = id
        self.name = name
        self.slug = slug
        self.parentId = parentId
    }

}
