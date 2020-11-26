//
// SpecialtyTypeCategoriesViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SpecialtyTypeCategoriesViewModel: Codable {

    public var items: [SpecialtyTypeCategoryItemViewModel]?
    public var metaData: PagedListMetaData?

    public init(items: [SpecialtyTypeCategoryItemViewModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}

