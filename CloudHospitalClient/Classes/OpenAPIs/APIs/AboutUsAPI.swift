//
// AboutUsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Combine



open class AboutUsAPI {
    /**
     Get all AboutUsList.
     
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter hospitalSlug: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter confirmed: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<AboutUsPagesModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2AboutusGet(hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, name: String? = nil, languageCode: String? = nil, returnDefaultValue: Bool? = nil, confirmed: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<AboutUsPagesModel, Error> {
        return Future<AboutUsPagesModel, Error>.init { promise in
            apiV2AboutusGetWithRequestBuilder(hospitalId: hospitalId, hospitalName: hospitalName, hospitalSlug: hospitalSlug, name: name, languageCode: languageCode, returnDefaultValue: returnDefaultValue, confirmed: confirmed, page: page, limit: limit, lastRetrieved: lastRetrieved).execute(apiResponseQueue) { result -> Void in
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
     Get all AboutUsList.
     - GET /api/v2/aboutus
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter hospitalSlug: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter confirmed: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<AboutUsPagesModel> 
     */
    open class func apiV2AboutusGetWithRequestBuilder(hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, name: String? = nil, languageCode: String? = nil, returnDefaultValue: Bool? = nil, confirmed: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<AboutUsPagesModel> {
        let path = "/api/v2/aboutus"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "HospitalId": hospitalId?.encodeToJSON(), 
            "HospitalName": hospitalName?.encodeToJSON(), 
            "HospitalSlug": hospitalSlug?.encodeToJSON(), 
            "Name": name?.encodeToJSON(), 
            "LanguageCode": languageCode?.encodeToJSON(), 
            "ReturnDefaultValue": returnDefaultValue?.encodeToJSON(), 
            "Confirmed": confirmed?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<AboutUsPagesModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get AboutUs.
     
     - parameter hospitalId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<AboutUsPageModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2AboutusHospitalIdGet(hospitalId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<AboutUsPageModel, Error> {
        return Future<AboutUsPageModel, Error>.init { promise in
            apiV2AboutusHospitalIdGetWithRequestBuilder(hospitalId: hospitalId, languageCode: languageCode, returnDefaultValue: returnDefaultValue).execute(apiResponseQueue) { result -> Void in
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
     Get AboutUs.
     - GET /api/v2/aboutus/{hospitalId}
     - parameter hospitalId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: RequestBuilder<AboutUsPageModel> 
     */
    open class func apiV2AboutusHospitalIdGetWithRequestBuilder(hospitalId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> RequestBuilder<AboutUsPageModel> {
        var path = "/api/v2/aboutus/{hospitalId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(), 
            "returnDefaultValue": returnDefaultValue?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<AboutUsPageModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<AboutUsPageModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2AboutusSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<AboutUsPageModel, Error> {
        return Future<AboutUsPageModel, Error>.init { promise in
            apiV2AboutusSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/v2/aboutus/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: RequestBuilder<AboutUsPageModel> 
     */
    open class func apiV2AboutusSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> RequestBuilder<AboutUsPageModel> {
        var path = "/api/v2/aboutus/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(), 
            "returnDefaultValue": returnDefaultValue?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<AboutUsPageModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
