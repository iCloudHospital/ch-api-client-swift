//
// PatientsViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct PatientsViewModel: Codable {

    public var items: [PatientItemViewModel]?
    public var metaData: PagedListMetaData?

    public init(items: [PatientItemViewModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}

