//
// BookingsViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct BookingsViewModel: Codable {

    public var items: [BookingItemViewModel]?
    public var metaData: PagedListMetaData?

    public init(items: [BookingItemViewModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}

