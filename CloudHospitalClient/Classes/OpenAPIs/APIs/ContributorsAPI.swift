//
// ContributorsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class ContributorsAPI {
    /**
     Get contributor.
     
     - parameter contributorId: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ContributorViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ContributorsContributorIdGet(contributorId: UUID, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<ContributorViewModel, Error> {
        return Future<ContributorViewModel, Error>.init { promise in
            apiV1ContributorsContributorIdGetWithRequestBuilder(contributorId: contributorId, languageCode: languageCode).execute(apiResponseQueue) { result -> Void in
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
     Get contributor.
     - GET /api/v1/contributors/{contributorId}
     - parameter contributorId: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - returns: RequestBuilder<ContributorViewModel> 
     */
    open class func apiV1ContributorsContributorIdGetWithRequestBuilder(contributorId: UUID, languageCode: String? = nil) -> RequestBuilder<ContributorViewModel> {
        var path = "/api/v1/contributors/{contributorId}"
        let contributorIdPreEscape = "\(APIHelper.mapValueToPathItem(contributorId))"
        let contributorIdPostEscape = contributorIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{contributorId}", with: contributorIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ContributorViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get all contributors.
     
     - parameter id: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter interviewerOnly: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ContributorsViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ContributorsGet(id: UUID? = nil, languageCode: String? = nil, interviewerOnly: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<ContributorsViewModel, Error> {
        return Future<ContributorsViewModel, Error>.init { promise in
            apiV1ContributorsGetWithRequestBuilder(id: id, languageCode: languageCode, interviewerOnly: interviewerOnly, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
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
     Get all contributors.
     - GET /api/v1/contributors
     - parameter id: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter interviewerOnly: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<ContributorsViewModel> 
     */
    open class func apiV1ContributorsGetWithRequestBuilder(id: UUID? = nil, languageCode: String? = nil, interviewerOnly: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<ContributorsViewModel> {
        let path = "/api/v1/contributors"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "LanguageCode": languageCode?.encodeToJSON(),
            "InterviewerOnly": interviewerOnly?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
            "Current": current?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ContributorsViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get contributor by slug.
     
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ContributorViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ContributorsSlugsSlugGet(slug: String, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<ContributorViewModel, Error> {
        return Future<ContributorViewModel, Error>.init { promise in
            apiV1ContributorsSlugsSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode).execute(apiResponseQueue) { result -> Void in
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
     Get contributor by slug.
     - GET /api/v1/contributors/slugs/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - returns: RequestBuilder<ContributorViewModel> 
     */
    open class func apiV1ContributorsSlugsSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil) -> RequestBuilder<ContributorViewModel> {
        var path = "/api/v1/contributors/slugs/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ContributorViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
