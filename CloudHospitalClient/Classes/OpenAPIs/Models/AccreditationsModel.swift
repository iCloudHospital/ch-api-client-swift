//
// AccreditationsModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct AccreditationsModel: Codable {

    public var items: [AccreditationItemModel]?
    public var metaData: PagedListMetaData?

    public init(items: [AccreditationItemModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}

