//
// SurveyModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SurveyModel: Codable {

    public var id: UUID?
    public var title: String?
    public var questions: [SurveyQuestionModel]?

    public init(id: UUID? = nil, title: String? = nil, questions: [SurveyQuestionModel]? = nil) {
        self.id = id
        self.title = title
        self.questions = questions
    }

}
