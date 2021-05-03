//
// Metadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Metadata: Codable {

    public var location: String?
    public var marriage: String?
    public var hasSomeone: String?

    public init(location: String? = nil, marriage: String? = nil, hasSomeone: String? = nil) {
        self.location = location
        self.marriage = marriage
        self.hasSomeone = hasSomeone
    }

}
