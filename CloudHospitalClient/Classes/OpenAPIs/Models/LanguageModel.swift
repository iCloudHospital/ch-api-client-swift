//
// LanguageModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct LanguageModel: Codable {

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

}

