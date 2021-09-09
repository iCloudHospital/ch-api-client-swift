//
// CountriesViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CountriesViewModel: Codable {

    public var items: [CountryItemViewModel]?
    public var metaData: PagedListMetaData?

    public init(items: [CountryItemViewModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}
