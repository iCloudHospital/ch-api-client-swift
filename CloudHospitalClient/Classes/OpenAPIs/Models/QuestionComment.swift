//
// QuestionComment.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct QuestionComment: Codable {

    public var id: UUID?
    public var userId: UUID?
    public var user: User?
    public var questionId: UUID?
    public var question: Question?
    public var body: String?
    public var medias: [Media]?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, userId: UUID? = nil, user: User? = nil, questionId: UUID? = nil, question: Question? = nil, body: String? = nil, medias: [Media]? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.userId = userId
        self.user = user
        self.questionId = questionId
        self.question = question
        self.body = body
        self.medias = medias
        self.auditableEntity = auditableEntity
    }

}

