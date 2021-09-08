//
// SurveyQuestionModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SurveyQuestionModel: Codable {

    public var question: String?
    public var placeholder: String?
    public var controlType: ControlType?
    public var controlSource: String?
    public var isRequried: Bool?
    public var displayZone: String?
    public var displayOrder: Int?

    public init(question: String? = nil, placeholder: String? = nil, controlType: ControlType? = nil, controlSource: String? = nil, isRequried: Bool? = nil, displayZone: String? = nil, displayOrder: Int? = nil) {
        self.question = question
        self.placeholder = placeholder
        self.controlType = controlType
        self.controlSource = controlSource
        self.isRequried = isRequried
        self.displayZone = displayZone
        self.displayOrder = displayOrder
    }

}

