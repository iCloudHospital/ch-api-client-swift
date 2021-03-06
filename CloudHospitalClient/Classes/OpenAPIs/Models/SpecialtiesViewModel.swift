//
// SpecialtiesViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SpecialtiesViewModel: Codable {

    public var items: [SpecialtyItemViewModel]?
    public var metaData: PagedListMetaData?

    public init(items: [SpecialtyItemViewModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}

