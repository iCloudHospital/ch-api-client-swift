//
// LanguageItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LanguageItemViewModel: Codable, Hashable {

    public var id: UUID?
    public var code: String?
    public var name: String?
    public var description: String?
    public var published: Bool?
    public var order: Int?

    public init(id: UUID? = nil, code: String? = nil, name: String? = nil, description: String? = nil, published: Bool? = nil, order: Int? = nil) {
        self.id = id
        self.code = code
        self.name = name
        self.description = description
        self.published = published
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case code
        case name
        case description
        case published
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(published, forKey: .published)
        try container.encodeIfPresent(order, forKey: .order)
    }
}

