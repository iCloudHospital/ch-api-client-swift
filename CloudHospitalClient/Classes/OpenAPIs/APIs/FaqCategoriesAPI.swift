//
// FaqCategoriesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FaqCategoriesAPI {

    /**
     Get FaqCategory.
     
     - parameter faqCategoryId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: AnyPublisher<FaqCategoryModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqcategoriesFaqCategoryIdGet(faqCategoryId: UUID, languageCode: String? = nil) -> AnyPublisher<FaqCategoryModel, Error> {
        var requestTask: RequestTask?
        return Future<FaqCategoryModel, Error> { promise in
            requestTask = apiV2FaqcategoriesFaqCategoryIdGetWithRequestBuilder(faqCategoryId: faqCategoryId, languageCode: languageCode).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Get FaqCategory.
     - GET /api/v2/faqcategories/{faqCategoryId}
     - parameter faqCategoryId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: RequestBuilder<FaqCategoryModel> 
     */
    open class func apiV2FaqcategoriesFaqCategoryIdGetWithRequestBuilder(faqCategoryId: UUID, languageCode: String? = nil) -> RequestBuilder<FaqCategoryModel> {
        var localVariablePath = "/api/v2/faqcategories/{faqCategoryId}"
        let faqCategoryIdPreEscape = "\(APIHelper.mapValueToPathItem(faqCategoryId))"
        let faqCategoryIdPostEscape = faqCategoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{faqCategoryId}", with: faqCategoryIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": (wrappedValue: languageCode?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FaqCategoryModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get all FaqCategories.
     
     - parameter id: (query)  (optional)
     - parameter parentId: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: AnyPublisher<FaqCategoriesModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqcategoriesGet(id: UUID? = nil, parentId: UUID? = nil, name: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> AnyPublisher<FaqCategoriesModel, Error> {
        var requestTask: RequestTask?
        return Future<FaqCategoriesModel, Error> { promise in
            requestTask = apiV2FaqcategoriesGetWithRequestBuilder(id: id, parentId: parentId, name: name, hospitalId: hospitalId, hospitalName: hospitalName, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Get all FaqCategories.
     - GET /api/v2/faqcategories
     - parameter id: (query)  (optional)
     - parameter parentId: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<FaqCategoriesModel> 
     */
    open class func apiV2FaqcategoriesGetWithRequestBuilder(id: UUID? = nil, parentId: UUID? = nil, name: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<FaqCategoriesModel> {
        let localVariablePath = "/api/v2/faqcategories"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": (wrappedValue: id?.encodeToJSON(), isExplode: true),
            "ParentId": (wrappedValue: parentId?.encodeToJSON(), isExplode: true),
            "Name": (wrappedValue: name?.encodeToJSON(), isExplode: true),
            "HospitalId": (wrappedValue: hospitalId?.encodeToJSON(), isExplode: true),
            "HospitalName": (wrappedValue: hospitalName?.encodeToJSON(), isExplode: true),
            "LanguageCode": (wrappedValue: languageCode?.encodeToJSON(), isExplode: true),
            "ShowHidden": (wrappedValue: showHidden?.encodeToJSON(), isExplode: true),
            "ReturnDefaultValue": (wrappedValue: returnDefaultValue?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "lastRetrieved": (wrappedValue: lastRetrieved?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FaqCategoriesModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get FaqCategory by slug.
     
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: AnyPublisher<FaqCategoryModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqcategoriesSlugGet(slug: String, languageCode: String? = nil) -> AnyPublisher<FaqCategoryModel, Error> {
        var requestTask: RequestTask?
        return Future<FaqCategoryModel, Error> { promise in
            requestTask = apiV2FaqcategoriesSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Get FaqCategory by slug.
     - GET /api/v2/faqcategories/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: RequestBuilder<FaqCategoryModel> 
     */
    open class func apiV2FaqcategoriesSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil) -> RequestBuilder<FaqCategoryModel> {
        var localVariablePath = "/api/v2/faqcategories/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": (wrappedValue: languageCode?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FaqCategoryModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
