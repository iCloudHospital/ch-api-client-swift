//
// SendFileRequestModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SendFileRequestModel: Codable {

    public var threadId: String?
    public var senderId: String?
    public var files: [URL]?

    public init(threadId: String? = nil, senderId: String? = nil, files: [URL]? = nil) {
        self.threadId = threadId
        self.senderId = senderId
        self.files = files
    }

}

