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
     Get faqCategory.
     
     - parameter faqCategoryId: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<FaqCategoryViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1FaqcategoriesFaqCategoryIdGet(faqCategoryId: UUID, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<FaqCategoryViewModel, Error> {
        return Future<FaqCategoryViewModel, Error>.init { promise in
            apiV1FaqcategoriesFaqCategoryIdGetWithRequestBuilder(faqCategoryId: faqCategoryId, languageCode: languageCode).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Get faqCategory.
     - GET /api/v1/faqcategories/{faqCategoryId}
     - parameter faqCategoryId: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - returns: RequestBuilder<FaqCategoryViewModel> 
     */
    open class func apiV1FaqcategoriesFaqCategoryIdGetWithRequestBuilder(faqCategoryId: UUID, languageCode: String? = nil) -> RequestBuilder<FaqCategoryViewModel> {
        var localVariablePath = "/api/v1/faqcategories/{faqCategoryId}"
        let faqCategoryIdPreEscape = "\(APIHelper.mapValueToPathItem(faqCategoryId))"
        let faqCategoryIdPostEscape = faqCategoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{faqCategoryId}", with: faqCategoryIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FaqCategoryViewModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all faqCategory.
     
     - parameter id: (query)  (optional)
     - parameter parentId: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<FaqCategoriesViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1FaqcategoriesGet(id: UUID? = nil, parentId: UUID? = nil, name: String? = nil, description: String? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<FaqCategoriesViewModel, Error> {
        return Future<FaqCategoriesViewModel, Error>.init { promise in
            apiV1FaqcategoriesGetWithRequestBuilder(id: id, parentId: parentId, name: name, description: description, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Get all faqCategory.
     - GET /api/v1/faqcategories
     - parameter id: (query)  (optional)
     - parameter parentId: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<FaqCategoriesViewModel> 
     */
    open class func apiV1FaqcategoriesGetWithRequestBuilder(id: UUID? = nil, parentId: UUID? = nil, name: String? = nil, description: String? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<FaqCategoriesViewModel> {
        let localVariablePath = "/api/v1/faqcategories"
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "ParentId": parentId?.encodeToJSON(),
            "Name": name?.encodeToJSON(),
            "Description": description?.encodeToJSON(),
            "LanguageCode": languageCode?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
            "Current": current?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FaqCategoriesViewModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get faqCategory by slug.
     
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<FaqCategoryViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1FaqcategoriesSlugsSlugGet(slug: String, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<FaqCategoryViewModel, Error> {
        return Future<FaqCategoryViewModel, Error>.init { promise in
            apiV1FaqcategoriesSlugsSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Get faqCategory by slug.
     - GET /api/v1/faqcategories/slugs/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - returns: RequestBuilder<FaqCategoryViewModel> 
     */
    open class func apiV1FaqcategoriesSlugsSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil) -> RequestBuilder<FaqCategoryViewModel> {
        var localVariablePath = "/api/v1/faqcategories/slugs/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FaqCategoryViewModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
