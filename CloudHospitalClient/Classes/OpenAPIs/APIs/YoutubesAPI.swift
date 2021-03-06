//
// YoutubesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Combine



open class YoutubesAPI {
    /**
     Get all youtubes.
     
     - parameter id: (query)  (optional)
     - parameter title: (query)  (optional)
     - parameter normalizedTitle: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter tag: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<YoutubesViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1YoutubesGet(id: UUID? = nil, title: String? = nil, normalizedTitle: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, tag: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<YoutubesViewModel, Error> {
        return Future<YoutubesViewModel, Error>.init { promise in
            apiV1YoutubesGetWithRequestBuilder(id: id, title: title, normalizedTitle: normalizedTitle, description: description, marketingType: marketingType, tag: tag, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
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
     Get all youtubes.
     - GET /api/v1/youtubes
     - Sample request:        GET /api/v1/youtubes
     - parameter id: (query)  (optional)
     - parameter title: (query)  (optional)
     - parameter normalizedTitle: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter tag: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<YoutubesViewModel> 
     */
    open class func apiV1YoutubesGetWithRequestBuilder(id: UUID? = nil, title: String? = nil, normalizedTitle: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, tag: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<YoutubesViewModel> {
        let path = "/api/v1/youtubes"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(), 
            "Title": title?.encodeToJSON(), 
            "NormalizedTitle": normalizedTitle?.encodeToJSON(), 
            "Description": description?.encodeToJSON(), 
            "MarketingType": marketingType?.encodeToJSON(), 
            "Tag": tag?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON(), 
            "Current": current?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<YoutubesViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create an youtube.
     
     - parameter createYoutubeCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UUID, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1YoutubesPost(createYoutubeCommand: CreateYoutubeCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<UUID, Error> {
        return Future<UUID, Error>.init { promise in
            apiV1YoutubesPostWithRequestBuilder(createYoutubeCommand: createYoutubeCommand).execute(apiResponseQueue) { result -> Void in
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
     Create an youtube.
     - POST /api/v1/youtubes
     - Sample request:        POST /api/v1/youtubes      {          \"title\": \"Samsung Hospital Youtube\",          \"description\": \"This is an youtube.\",          \"body\": \"youtube body here\",          \"status\": \"Draft\",          \"hospitalId\": 1,          \"tags\": [            {              \"value\": \"string\",              \"order\": 0              }          ],          \"medias\": [            {              \"mediaType\": \"Photo\",              \"url\": \"string\",              \"thumbnailUrl\": \"string\",              \"description\": \"string\",              \"order\": 0            }          ]      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter createYoutubeCommand: (body)  (optional)
     - returns: RequestBuilder<UUID> 
     */
    open class func apiV1YoutubesPostWithRequestBuilder(createYoutubeCommand: CreateYoutubeCommand? = nil) -> RequestBuilder<UUID> {
        let path = "/api/v1/youtubes"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createYoutubeCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<UUID>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get youtube by slug.
     
     - parameter slug: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<YoutubeViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1YoutubesSlugsSlugGet(slug: String, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<YoutubeViewModel, Error> {
        return Future<YoutubeViewModel, Error>.init { promise in
            apiV1YoutubesSlugsSlugGetWithRequestBuilder(slug: slug).execute(apiResponseQueue) { result -> Void in
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
     Get youtube by slug.
     - GET /api/v1/youtubes/slugs/{slug}
     - parameter slug: (path)  
     - returns: RequestBuilder<YoutubeViewModel> 
     */
    open class func apiV1YoutubesSlugsSlugGetWithRequestBuilder(slug: String) -> RequestBuilder<YoutubeViewModel> {
        var path = "/api/v1/youtubes/slugs/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<YoutubeViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete youtube.
     
     - parameter youtubeId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1YoutubesYoutubeIdDelete(youtubeId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1YoutubesYoutubeIdDeleteWithRequestBuilder(youtubeId: youtubeId).execute(apiResponseQueue) { result -> Void in
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
     Delete youtube.
     - DELETE /api/v1/youtubes/{youtubeId}
     - Sample request:        DELETE /api/v1/youtubes/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter youtubeId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1YoutubesYoutubeIdDeleteWithRequestBuilder(youtubeId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/youtubes/{youtubeId}"
        let youtubeIdPreEscape = "\(APIHelper.mapValueToPathItem(youtubeId))"
        let youtubeIdPostEscape = youtubeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{youtubeId}", with: youtubeIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get youtube.
     
     - parameter youtubeId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<YoutubeViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1YoutubesYoutubeIdGet(youtubeId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<YoutubeViewModel, Error> {
        return Future<YoutubeViewModel, Error>.init { promise in
            apiV1YoutubesYoutubeIdGetWithRequestBuilder(youtubeId: youtubeId).execute(apiResponseQueue) { result -> Void in
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
     Get youtube.
     - GET /api/v1/youtubes/{youtubeId}
     - Sample request:        GET /api/v1/youtubes/1
     - parameter youtubeId: (path)  
     - returns: RequestBuilder<YoutubeViewModel> 
     */
    open class func apiV1YoutubesYoutubeIdGetWithRequestBuilder(youtubeId: UUID) -> RequestBuilder<YoutubeViewModel> {
        var path = "/api/v1/youtubes/{youtubeId}"
        let youtubeIdPreEscape = "\(APIHelper.mapValueToPathItem(youtubeId))"
        let youtubeIdPostEscape = youtubeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{youtubeId}", with: youtubeIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<YoutubeViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update youtube.
     
     - parameter youtubeId: (path)  
     - parameter updateYoutubeCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1YoutubesYoutubeIdPut(youtubeId: UUID, updateYoutubeCommand: UpdateYoutubeCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1YoutubesYoutubeIdPutWithRequestBuilder(youtubeId: youtubeId, updateYoutubeCommand: updateYoutubeCommand).execute(apiResponseQueue) { result -> Void in
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
     Update youtube.
     - PUT /api/v1/youtubes/{youtubeId}
     - Sample request:        PUT /api/v1/youtubes/1      {          \"title\": \"Samsung Hospital Youtube\",          \"description\": \"This is an youtube.\",                  \"tags\": [            {              \"value\": \"youtubetag1\",              \"order\": 0            },            {              \"value\": \"youtubetag2\",              \"order\": 0            }          ],          \"medias\": [            {              \"mediaType\": \"Photo\",              \"url\": \"string\",              \"thumbnailUrl\": \"string\",              \"description\": \"string\",              \"order\": 0            }          ]      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter youtubeId: (path)  
     - parameter updateYoutubeCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1YoutubesYoutubeIdPutWithRequestBuilder(youtubeId: UUID, updateYoutubeCommand: UpdateYoutubeCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/youtubes/{youtubeId}"
        let youtubeIdPreEscape = "\(APIHelper.mapValueToPathItem(youtubeId))"
        let youtubeIdPostEscape = youtubeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{youtubeId}", with: youtubeIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateYoutubeCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
