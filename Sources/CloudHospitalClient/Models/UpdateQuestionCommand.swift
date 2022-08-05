//
// UpdateQuestionCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateQuestionCommand: Codable, Hashable {

    public var title: String?
    public var body: String?
    public var questionType: QuestionType?
    public var questionStatus: QuestionStatus?
    public var medias: [MediaViewModel]?

    public init(title: String? = nil, body: String? = nil, questionType: QuestionType? = nil, questionStatus: QuestionStatus? = nil, medias: [MediaViewModel]? = nil) {
        self.title = title
        self.body = body
        self.questionType = questionType
        self.questionStatus = questionStatus
        self.medias = medias
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case body
        case questionType
        case questionStatus
        case medias
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(body, forKey: .body)
        try container.encodeIfPresent(questionType, forKey: .questionType)
        try container.encodeIfPresent(questionStatus, forKey: .questionStatus)
        try container.encodeIfPresent(medias, forKey: .medias)
    }
}
