//
// ArticleSource.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ArticleSource: Codable {

    public var id: UUID?
    public var articleId: UUID?
    public var article: Article?
    public var name: String?
    public var referenceUrl: String?
    public var order: Int?

    public init(id: UUID? = nil, articleId: UUID? = nil, article: Article? = nil, name: String? = nil, referenceUrl: String? = nil, order: Int? = nil) {
        self.id = id
        self.articleId = articleId
        self.article = article
        self.name = name
        self.referenceUrl = referenceUrl
        self.order = order
    }

}

