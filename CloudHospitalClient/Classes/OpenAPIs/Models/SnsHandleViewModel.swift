//
// SnsHandleViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SnsHandleViewModel: Codable {

    public var snsType: SnsType?
    public var handle: String?

    public init(snsType: SnsType? = nil, handle: String? = nil) {
        self.snsType = snsType
        self.handle = handle
    }

}

