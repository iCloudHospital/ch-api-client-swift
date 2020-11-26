//
// ApproveBookingCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ApproveBookingCommand: Codable {

    public var confirmedDateStart: Date?
    public var confirmedDateEnd: Date?

    public init(confirmedDateStart: Date? = nil, confirmedDateEnd: Date? = nil) {
        self.confirmedDateStart = confirmedDateStart
        self.confirmedDateEnd = confirmedDateEnd
    }

}

