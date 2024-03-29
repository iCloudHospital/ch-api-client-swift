//
// Gender.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum Gender: String, Codable, CaseIterable {
    case notSpecified = "NotSpecified"
    case male = "Male"
    case female = "Female"
    case nonBinary = "NonBinary"
    case preferNotToSay = "PreferNotToSay"
}
