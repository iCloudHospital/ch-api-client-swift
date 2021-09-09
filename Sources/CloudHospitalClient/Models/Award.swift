//
// Award.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Award: Codable, Hashable {

    public var id: UUID?
    public var name: String?
    public var image: String?
    public var date: Date?

    public init(id: UUID? = nil, name: String? = nil, image: String? = nil, date: Date? = nil) {
        self.id = id
        self.name = name
        self.image = image
        self.date = date
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case image
        case date
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(date, forKey: .date)
    }
}

