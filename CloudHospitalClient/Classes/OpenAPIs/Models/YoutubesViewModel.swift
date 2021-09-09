//
// YoutubesViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct YoutubesViewModel: Codable {

    public var items: [YoutubeItemViewModel]?
    public var metaData: PagedListMetaData?

    public init(items: [YoutubeItemViewModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}
