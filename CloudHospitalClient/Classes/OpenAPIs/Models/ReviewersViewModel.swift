//
// ReviewersViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ReviewersViewModel: Codable {

    public var items: [ReviewerItemViewModel]?
    public var metaData: PagedListMetaData?

    public init(items: [ReviewerItemViewModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}

