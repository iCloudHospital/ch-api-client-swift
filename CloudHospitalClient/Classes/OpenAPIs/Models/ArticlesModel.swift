//
// ArticlesModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ArticlesModel: Codable {

    public var items: [ArticleItemModel]?
    public var metaData: PagedListMetaData?

    public init(items: [ArticleItemModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}

