//
// QuestionItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct QuestionItemViewModel: Codable {

    public var id: UUID?
    public var title: String?
    public var userId: UUID?
    public var userName: String?
    public var fullName: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var questionType: QuestionType?
    public var questionStatus: QuestionStatus?
    public var questionCommentsCount: Int?
    public var dealId: UUID?
    public var dealName: String?
    public var dealPackageId: UUID?
    public var refundPolicy: RefundPolicy?
    public var quantity: Int?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, title: String? = nil, userId: UUID? = nil, userName: String? = nil, fullName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, questionType: QuestionType? = nil, questionStatus: QuestionStatus? = nil, questionCommentsCount: Int? = nil, dealId: UUID? = nil, dealName: String? = nil, dealPackageId: UUID? = nil, refundPolicy: RefundPolicy? = nil, quantity: Int? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.title = title
        self.userId = userId
        self.userName = userName
        self.fullName = fullName
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.questionType = questionType
        self.questionStatus = questionStatus
        self.questionCommentsCount = questionCommentsCount
        self.dealId = dealId
        self.dealName = dealName
        self.dealPackageId = dealPackageId
        self.refundPolicy = refundPolicy
        self.quantity = quantity
        self.auditableEntity = auditableEntity
    }

}

