//
// ConfirmEmailCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ConfirmEmailCommand: Codable, Hashable {

    public var code: String?

    public init(code: String? = nil) {
        self.code = code
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(code, forKey: .code)
    }
}

