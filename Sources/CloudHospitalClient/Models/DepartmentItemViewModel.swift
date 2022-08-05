//
// DepartmentItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DepartmentItemViewModel: Codable, Hashable {

    public var id: UUID?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var name: String?
    public var additionalInfo: String?

    public init(id: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, name: String? = nil, additionalInfo: String? = nil) {
        self.id = id
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.name = name
        self.additionalInfo = additionalInfo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case hospitalId
        case hospitalName
        case name
        case additionalInfo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(hospitalId, forKey: .hospitalId)
        try container.encodeIfPresent(hospitalName, forKey: .hospitalName)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(additionalInfo, forKey: .additionalInfo)
    }
}
