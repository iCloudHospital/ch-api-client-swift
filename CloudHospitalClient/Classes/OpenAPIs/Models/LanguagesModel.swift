//
// LanguagesModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LanguagesModel: Codable, JSONEncodable, Hashable {

    public var items: [LanguageItemModel]?
    public var metaData: PagedListMetaData?

    public init(items: [LanguageItemModel]? = nil, metaData: PagedListMetaData? = nil) {
        self.items = items
        self.metaData = metaData
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case items
        case metaData
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(items, forKey: .items)
        try container.encodeIfPresent(metaData, forKey: .metaData)
    }
}

