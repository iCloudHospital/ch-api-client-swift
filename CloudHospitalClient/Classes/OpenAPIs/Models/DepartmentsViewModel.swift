//
// DepartmentsViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct DepartmentsViewModel: Codable {

    public var items: [DepartmentItemViewModel]?
    public var metaData: PagedListMetaData?

    public init(items: [DepartmentItemViewModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}

