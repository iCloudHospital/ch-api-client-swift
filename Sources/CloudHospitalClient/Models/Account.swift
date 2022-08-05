//
// Account.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Account: Codable, Hashable {

    public var id: String?
    public var vendor: VendorType?
    public var auditableEntity: AuditableEntity?

    public init(id: String? = nil, vendor: VendorType? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.vendor = vendor
        self.auditableEntity = auditableEntity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case vendor
        case auditableEntity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(vendor, forKey: .vendor)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
    }
}
