//
// FaqCategoriesModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct FaqCategoriesModel: Codable {

    public var items: [FaqCategoryItemModel]?
    public var metaData: PagedListMetaData?

    public init(items: [FaqCategoryItemModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}

