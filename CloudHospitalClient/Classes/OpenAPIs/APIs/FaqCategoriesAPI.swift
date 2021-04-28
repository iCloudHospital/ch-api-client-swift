//
// FaqCategoriesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Combine



open class FaqCategoriesAPI {
    /**
     Get faqCategory.
     
     - parameter faqCategoryId: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<FaqCategoryViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1FaqcategoriesFaqCategoryIdGet(faqCategoryId: UUID, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<FaqCategoryViewModel, Error> {
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

    /**
     Get faqCategory.
     - GET /api/v1/faqcategories/{faqCategoryId}
     - parameter faqCategoryId: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - returns: RequestBuilder<FaqCategoryViewModel> 
     */
    open class func apiV1FaqcategoriesFaqCategoryIdGetWithRequestBuilder(faqCategoryId: UUID, languageCode: String? = nil) -> RequestBuilder<FaqCategoryViewModel> {
        var path = "/api/v1/faqcategories/{faqCategoryId}"
        let faqCategoryIdPreEscape = "\(APIHelper.mapValueToPathItem(faqCategoryId))"
        let faqCategoryIdPostEscape = faqCategoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{faqCategoryId}", with: faqCategoryIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<FaqCategoryViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
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
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1FaqcategoriesGet(id: UUID? = nil, parentId: UUID? = nil, name: String? = nil, description: String? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<FaqCategoriesViewModel, Error> {
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
        let path = "/api/v1/faqcategories"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(), 
            "ParentId": parentId?.encodeToJSON(), 
            "Name": name?.encodeToJSON(), 
            "Description": description?.encodeToJSON(), 
            "LanguageCode": languageCode?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON(), 
            "Current": current?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<FaqCategoriesViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
