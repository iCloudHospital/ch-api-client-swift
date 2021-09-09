//
// HospitalSpecialtiesViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct HospitalSpecialtiesViewModel: Codable {

    public var items: [HospitalSpecialtyItemViewModel]?
    public var metaData: PagedListMetaData?

    public init(items: [HospitalSpecialtyItemViewModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}
