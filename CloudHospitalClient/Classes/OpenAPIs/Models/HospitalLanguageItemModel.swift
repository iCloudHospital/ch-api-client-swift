//
// HospitalLanguageItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct HospitalLanguageItemModel: Codable, JSONEncodable, Hashable {

    public var code: String?
    public var name: String?

    public init(code: String? = nil, name: String? = nil) {
        self.code = code
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(name, forKey: .name)
    }
}

