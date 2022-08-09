//
// ConsultationsModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ConsultationsModel: Codable {

    public var items: [ConsultationItemModel]?
    public var metaData: PagedListMetaData?

    public init(items: [ConsultationItemModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

}

