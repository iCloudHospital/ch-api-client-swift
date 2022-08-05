//
// FaqsAPI.swift
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

open class FaqsAPI {

    /**
     Get faq.
     
     - parameter faqId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<FaqModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqsFaqIdGet(faqId: UUID, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<FaqModel, Error> {
        return Future<FaqModel, Error>.init { promise in
            apiV2FaqsFaqIdGetWithRequestBuilder(faqId: faqId, languageCode: languageCode).execute(apiResponseQueue) { result -> Void in
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
     Get faq.
     - GET /api/v2/faqs/{faqId}
     - parameter faqId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: RequestBuilder<FaqModel> 
     */
    open class func apiV2FaqsFaqIdGetWithRequestBuilder(faqId: UUID, languageCode: String? = nil) -> RequestBuilder<FaqModel> {
        var localVariablePath = "/api/v2/faqs/{faqId}"
        let faqIdPreEscape = "\(APIHelper.mapValueToPathItem(faqId))"
        let faqIdPostEscape = faqIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{faqId}", with: faqIdPostEscape, options: .literal, range: nil)
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

        let localVariableRequestBuilder: RequestBuilder<FaqModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all FaqMedias.
     
     - parameter faqId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<MediasModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqsFaqIdMediasGet(faqId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<MediasModel, Error> {
        return Future<MediasModel, Error>.init { promise in
            apiV2FaqsFaqIdMediasGetWithRequestBuilder(faqId: faqId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved).execute(apiResponseQueue) { result -> Void in
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
     Get all FaqMedias.
     - GET /api/v2/faqs/{faqId}/medias
     - parameter faqId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<MediasModel> 
     */
    open class func apiV2FaqsFaqIdMediasGetWithRequestBuilder(faqId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<MediasModel> {
        var localVariablePath = "/api/v2/faqs/{faqId}/medias"
        let faqIdPreEscape = "\(APIHelper.mapValueToPathItem(faqId))"
        let faqIdPostEscape = faqIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{faqId}", with: faqIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "MediaType": mediaType?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MediasModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get FaqMedia.
     
     - parameter faqId: (path)  
     - parameter mediaId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<MediaModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqsFaqIdMediasMediaIdGet(faqId: UUID, mediaId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<MediaModel, Error> {
        return Future<MediaModel, Error>.init { promise in
            apiV2FaqsFaqIdMediasMediaIdGetWithRequestBuilder(faqId: faqId, mediaId: mediaId).execute(apiResponseQueue) { result -> Void in
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
     Get FaqMedia.
     - GET /api/v2/faqs/{faqId}/medias/{mediaId}
     - parameter faqId: (path)  
     - parameter mediaId: (path)  
     - returns: RequestBuilder<MediaModel> 
     */
    open class func apiV2FaqsFaqIdMediasMediaIdGetWithRequestBuilder(faqId: UUID, mediaId: UUID) -> RequestBuilder<MediaModel> {
        var localVariablePath = "/api/v2/faqs/{faqId}/medias/{mediaId}"
        let faqIdPreEscape = "\(APIHelper.mapValueToPathItem(faqId))"
        let faqIdPostEscape = faqIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{faqId}", with: faqIdPostEscape, options: .literal, range: nil)
        let mediaIdPreEscape = "\(APIHelper.mapValueToPathItem(mediaId))"
        let mediaIdPostEscape = mediaIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mediaId}", with: mediaIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MediaModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     GetAll FaqTags.
     
     - parameter faqId: (path)  
     - parameter tagId: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<FaqTagsModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqsFaqIdTagsGet(faqId: UUID, tagId: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<FaqTagsModel, Error> {
        return Future<FaqTagsModel, Error>.init { promise in
            apiV2FaqsFaqIdTagsGetWithRequestBuilder(faqId: faqId, tagId: tagId, page: page, limit: limit, lastRetrieved: lastRetrieved).execute(apiResponseQueue) { result -> Void in
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
     GetAll FaqTags.
     - GET /api/v2/faqs/{faqId}/tags
     - parameter faqId: (path)  
     - parameter tagId: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<FaqTagsModel> 
     */
    open class func apiV2FaqsFaqIdTagsGetWithRequestBuilder(faqId: UUID, tagId: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<FaqTagsModel> {
        var localVariablePath = "/api/v2/faqs/{faqId}/tags"
        let faqIdPreEscape = "\(APIHelper.mapValueToPathItem(faqId))"
        let faqIdPostEscape = faqIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{faqId}", with: faqIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "TagId": tagId?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FaqTagsModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get FaqTag.
     
     - parameter faqId: (path)  
     - parameter tagId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<FaqTagModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqsFaqIdTagsTagIdGet(faqId: UUID, tagId: String, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<FaqTagModel, Error> {
        return Future<FaqTagModel, Error>.init { promise in
            apiV2FaqsFaqIdTagsTagIdGetWithRequestBuilder(faqId: faqId, tagId: tagId).execute(apiResponseQueue) { result -> Void in
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
     Get FaqTag.
     - GET /api/v2/faqs/{faqId}/tags/{tagId}
     - parameter faqId: (path)  
     - parameter tagId: (path)  
     - returns: RequestBuilder<FaqTagModel> 
     */
    open class func apiV2FaqsFaqIdTagsTagIdGetWithRequestBuilder(faqId: UUID, tagId: String) -> RequestBuilder<FaqTagModel> {
        var localVariablePath = "/api/v2/faqs/{faqId}/tags/{tagId}"
        let faqIdPreEscape = "\(APIHelper.mapValueToPathItem(faqId))"
        let faqIdPostEscape = faqIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{faqId}", with: faqIdPostEscape, options: .literal, range: nil)
        let tagIdPreEscape = "\(APIHelper.mapValueToPathItem(tagId))"
        let tagIdPostEscape = tagIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{tagId}", with: tagIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FaqTagModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all Faqs.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter slug: (query)  (optional)
     - parameter categoryId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<FaqsModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqsGet(id: UUID? = nil, name: String? = nil, slug: String? = nil, categoryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<FaqsModel, Error> {
        return Future<FaqsModel, Error>.init { promise in
            apiV2FaqsGetWithRequestBuilder(id: id, name: name, slug: slug, categoryId: categoryId, hospitalId: hospitalId, hospitalName: hospitalName, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved).execute(apiResponseQueue) { result -> Void in
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
     Get all Faqs.
     - GET /api/v2/faqs
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter slug: (query)  (optional)
     - parameter categoryId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<FaqsModel> 
     */
    open class func apiV2FaqsGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, slug: String? = nil, categoryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<FaqsModel> {
        let localVariablePath = "/api/v2/faqs"
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "Name": name?.encodeToJSON(),
            "Slug": slug?.encodeToJSON(),
            "CategoryId": categoryId?.encodeToJSON(),
            "HospitalId": hospitalId?.encodeToJSON(),
            "HospitalName": hospitalName?.encodeToJSON(),
            "LanguageCode": languageCode?.encodeToJSON(),
            "ShowHidden": showHidden?.encodeToJSON(),
            "ReturnDefaultValue": returnDefaultValue?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FaqsModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get faq by slug.
     
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<FaqModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqsSlugGet(slug: String, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<FaqModel, Error> {
        return Future<FaqModel, Error>.init { promise in
            apiV2FaqsSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode).execute(apiResponseQueue) { result -> Void in
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
     Get faq by slug.
     - GET /api/v2/faqs/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: RequestBuilder<FaqModel> 
     */
    open class func apiV2FaqsSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil) -> RequestBuilder<FaqModel> {
        var localVariablePath = "/api/v2/faqs/{slug}"
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

        let localVariableRequestBuilder: RequestBuilder<FaqModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}