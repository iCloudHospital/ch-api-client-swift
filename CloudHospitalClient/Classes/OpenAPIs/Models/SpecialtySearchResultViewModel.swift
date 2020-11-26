//
// SpecialtySearchResultViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SpecialtySearchResultViewModel: Codable {

    public var items: [SpecialtySearchViewModel]?
    public var metaData: SearchMetaData?

    public init(items: [SpecialtySearchViewModel]? = nil, metaData: SearchMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}

