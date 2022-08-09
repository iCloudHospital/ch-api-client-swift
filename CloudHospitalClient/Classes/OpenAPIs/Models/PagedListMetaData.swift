//
// PagedListMetaData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PagedListMetaData: Codable, JSONEncodable, Hashable {

    public var pageCount: Int?
    public var totalItemCount: Int?
    public var pageNumber: Int?
    public var pageSize: Int?
    public var hasPreviousPage: Bool?
    public var hasNextPage: Bool?
    public var isFirstPage: Bool?
    public var isLastPage: Bool?
    public var firstItemOnPage: Int?
    public var lastItemOnPage: Int?

    public init(pageCount: Int? = nil, totalItemCount: Int? = nil, pageNumber: Int? = nil, pageSize: Int? = nil, hasPreviousPage: Bool? = nil, hasNextPage: Bool? = nil, isFirstPage: Bool? = nil, isLastPage: Bool? = nil, firstItemOnPage: Int? = nil, lastItemOnPage: Int? = nil) {
        self.pageCount = pageCount
        self.totalItemCount = totalItemCount
        self.pageNumber = pageNumber
        self.pageSize = pageSize
        self.hasPreviousPage = hasPreviousPage
        self.hasNextPage = hasNextPage
        self.isFirstPage = isFirstPage
        self.isLastPage = isLastPage
        self.firstItemOnPage = firstItemOnPage
        self.lastItemOnPage = lastItemOnPage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pageCount
        case totalItemCount
        case pageNumber
        case pageSize
        case hasPreviousPage
        case hasNextPage
        case isFirstPage
        case isLastPage
        case firstItemOnPage
        case lastItemOnPage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(pageCount, forKey: .pageCount)
        try container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
        try container.encodeIfPresent(pageNumber, forKey: .pageNumber)
        try container.encodeIfPresent(pageSize, forKey: .pageSize)
        try container.encodeIfPresent(hasPreviousPage, forKey: .hasPreviousPage)
        try container.encodeIfPresent(hasNextPage, forKey: .hasNextPage)
        try container.encodeIfPresent(isFirstPage, forKey: .isFirstPage)
        try container.encodeIfPresent(isLastPage, forKey: .isLastPage)
        try container.encodeIfPresent(firstItemOnPage, forKey: .firstItemOnPage)
        try container.encodeIfPresent(lastItemOnPage, forKey: .lastItemOnPage)
    }
}
