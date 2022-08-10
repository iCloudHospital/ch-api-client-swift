//
// LanguagesModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct LanguagesModel: Codable {

    public var items: [LanguageItemModel]?
    public var metaData: PagedListMetaData?

    public init(items: [LanguageItemModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}

