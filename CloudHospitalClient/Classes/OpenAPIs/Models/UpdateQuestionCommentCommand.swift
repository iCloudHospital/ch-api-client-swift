//
// UpdateQuestionCommentCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UpdateQuestionCommentCommand: Codable {

    public var body: String?
    public var medias: [MediaViewModel]?

    public init(body: String? = nil, medias: [MediaViewModel]? = nil) {
        self.body = body
        self.medias = medias
    }

}

