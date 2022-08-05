//
// SnsHandleViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SnsHandleViewModel: Codable, Hashable {

    public var snsType: SnsType?
    public var handle: String?

    public init(snsType: SnsType? = nil, handle: String? = nil) {
        self.snsType = snsType
        self.handle = handle
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case snsType
        case handle
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(snsType, forKey: .snsType)
        try container.encodeIfPresent(handle, forKey: .handle)
    }
}
