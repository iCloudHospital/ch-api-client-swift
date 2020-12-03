//
// UpdateCountryCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UpdateCountryCommand: Codable {

    public var name: String?
    public var description: String?
    public var content: String?
    public var medias: [MediaViewModel]?

    public init(name: String? = nil, description: String? = nil, content: String? = nil, medias: [MediaViewModel]? = nil) {
        self.name = name
        self.description = description
        self.content = content
        self.medias = medias
    }

}

