//
// CHManagersViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CHManagersViewModel: Codable {

    public var items: [CHManagerItemViewModel]?
    public var metaData: PagedListMetaData?

    public init(items: [CHManagerItemViewModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}

