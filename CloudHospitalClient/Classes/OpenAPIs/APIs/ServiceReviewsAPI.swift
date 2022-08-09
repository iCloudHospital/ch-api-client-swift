//
// ServiceReviewsAPI.swift
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

open class ServiceReviewsAPI {

    /**
     Get all ServiceReviews.
     
     - parameter id: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter serviceId: (query)  (optional)
     - parameter serviceName: (query)  (optional)
     - parameter patientId: (query)  (optional)
     - parameter patientName: (query)  (optional)
     - parameter gender: (query)  (optional)
     - parameter recommended: (query)  (optional)
     - parameter rate: (query)  (optional)
     - parameter reviewType: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: AnyPublisher<ServiceReviewsModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsGet(id: UUID? = nil, hospitalId: UUID? = nil, serviceId: UUID? = nil, serviceName: String? = nil, patientId: UUID? = nil, patientName: String? = nil, gender: Gender? = nil, recommended: Bool? = nil, rate: Int? = nil, reviewType: ReviewType? = nil, languageCode: String? = nil, showHidden: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> AnyPublisher<ServiceReviewsModel, Error> {
        var requestTask: RequestTask?
        return Future<ServiceReviewsModel, Error> { promise in
            requestTask = apiV2ServicereviewsGetWithRequestBuilder(id: id, hospitalId: hospitalId, serviceId: serviceId, serviceName: serviceName, patientId: patientId, patientName: patientName, gender: gender, recommended: recommended, rate: rate, reviewType: reviewType, languageCode: languageCode, showHidden: showHidden, page: page, limit: limit, lastRetrieved: lastRetrieved).execute { result in
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
     Get all ServiceReviews.
     - GET /api/v2/servicereviews
     - parameter id: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter serviceId: (query)  (optional)
     - parameter serviceName: (query)  (optional)
     - parameter patientId: (query)  (optional)
     - parameter patientName: (query)  (optional)
     - parameter gender: (query)  (optional)
     - parameter recommended: (query)  (optional)
     - parameter rate: (query)  (optional)
     - parameter reviewType: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<ServiceReviewsModel> 
     */
    open class func apiV2ServicereviewsGetWithRequestBuilder(id: UUID? = nil, hospitalId: UUID? = nil, serviceId: UUID? = nil, serviceName: String? = nil, patientId: UUID? = nil, patientName: String? = nil, gender: Gender? = nil, recommended: Bool? = nil, rate: Int? = nil, reviewType: ReviewType? = nil, languageCode: String? = nil, showHidden: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<ServiceReviewsModel> {
        let localVariablePath = "/api/v2/servicereviews"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "HospitalId": hospitalId?.encodeToJSON(),
            "ServiceId": serviceId?.encodeToJSON(),
            "ServiceName": serviceName?.encodeToJSON(),
            "PatientId": patientId?.encodeToJSON(),
            "PatientName": patientName?.encodeToJSON(),
            "Gender": gender?.encodeToJSON(),
            "Recommended": recommended?.encodeToJSON(),
            "Rate": rate?.encodeToJSON(),
            "ReviewType": reviewType?.encodeToJSON(),
            "LanguageCode": languageCode?.encodeToJSON(),
            "ShowHidden": showHidden?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceReviewsModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create a ServiceReview.
     
     - parameter createServiceReviewCommand: (body)  (optional)
     - returns: AnyPublisher<ServiceReviewModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsPost(createServiceReviewCommand: CreateServiceReviewCommand? = nil) -> AnyPublisher<ServiceReviewModel, Error> {
        var requestTask: RequestTask?
        return Future<ServiceReviewModel, Error> { promise in
            requestTask = apiV2ServicereviewsPostWithRequestBuilder(createServiceReviewCommand: createServiceReviewCommand).execute { result in
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
     Create a ServiceReview.
     - POST /api/v2/servicereviews
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter createServiceReviewCommand: (body)  (optional)
     - returns: RequestBuilder<ServiceReviewModel> 
     */
    open class func apiV2ServicereviewsPostWithRequestBuilder(createServiceReviewCommand: CreateServiceReviewCommand? = nil) -> RequestBuilder<ServiceReviewModel> {
        let localVariablePath = "/api/v2/servicereviews"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createServiceReviewCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceReviewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete ServiceReview.
     
     - parameter serviceReviewId: (path)  
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdDelete(serviceReviewId: UUID) -> AnyPublisher<Bool, Error> {
        var requestTask: RequestTask?
        return Future<Bool, Error> { promise in
            requestTask = apiV2ServicereviewsServiceReviewIdDeleteWithRequestBuilder(serviceReviewId: serviceReviewId).execute { result in
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
     Delete ServiceReview.
     - DELETE /api/v2/servicereviews/{serviceReviewId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter serviceReviewId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV2ServicereviewsServiceReviewIdDeleteWithRequestBuilder(serviceReviewId: UUID) -> RequestBuilder<Bool> {
        var localVariablePath = "/api/v2/servicereviews/{serviceReviewId}"
        let serviceReviewIdPreEscape = "\(APIHelper.mapValueToPathItem(serviceReviewId))"
        let serviceReviewIdPostEscape = serviceReviewIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{serviceReviewId}", with: serviceReviewIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     
     
     - parameter serviceReviewId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: AnyPublisher<ServiceReviewModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdGet(serviceReviewId: UUID, languageCode: String? = nil) -> AnyPublisher<ServiceReviewModel, Error> {
        var requestTask: RequestTask?
        return Future<ServiceReviewModel, Error> { promise in
            requestTask = apiV2ServicereviewsServiceReviewIdGetWithRequestBuilder(serviceReviewId: serviceReviewId, languageCode: languageCode).execute { result in
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
     
     - GET /api/v2/servicereviews/{serviceReviewId}
     - parameter serviceReviewId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: RequestBuilder<ServiceReviewModel> 
     */
    open class func apiV2ServicereviewsServiceReviewIdGetWithRequestBuilder(serviceReviewId: UUID, languageCode: String? = nil) -> RequestBuilder<ServiceReviewModel> {
        var localVariablePath = "/api/v2/servicereviews/{serviceReviewId}"
        let serviceReviewIdPreEscape = "\(APIHelper.mapValueToPathItem(serviceReviewId))"
        let serviceReviewIdPostEscape = serviceReviewIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{serviceReviewId}", with: serviceReviewIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceReviewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all ServiceReviewMedias.
     
     - parameter serviceReviewId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: AnyPublisher<MediasModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdMediasGet(serviceReviewId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> AnyPublisher<MediasModel, Error> {
        var requestTask: RequestTask?
        return Future<MediasModel, Error> { promise in
            requestTask = apiV2ServicereviewsServiceReviewIdMediasGetWithRequestBuilder(serviceReviewId: serviceReviewId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved).execute { result in
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
     Get all ServiceReviewMedias.
     - GET /api/v2/servicereviews/{serviceReviewId}/medias
     - parameter serviceReviewId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<MediasModel> 
     */
    open class func apiV2ServicereviewsServiceReviewIdMediasGetWithRequestBuilder(serviceReviewId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<MediasModel> {
        var localVariablePath = "/api/v2/servicereviews/{serviceReviewId}/medias"
        let serviceReviewIdPreEscape = "\(APIHelper.mapValueToPathItem(serviceReviewId))"
        let serviceReviewIdPostEscape = serviceReviewIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{serviceReviewId}", with: serviceReviewIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
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

        let localVariableRequestBuilder: RequestBuilder<MediasModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete ServiceReviewMedia
     
     - parameter serviceReviewId: (path)  
     - parameter mediaId: (path)  
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdMediasMediaIdDelete(serviceReviewId: UUID, mediaId: UUID) -> AnyPublisher<Bool, Error> {
        var requestTask: RequestTask?
        return Future<Bool, Error> { promise in
            requestTask = apiV2ServicereviewsServiceReviewIdMediasMediaIdDeleteWithRequestBuilder(serviceReviewId: serviceReviewId, mediaId: mediaId).execute { result in
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
     Delete ServiceReviewMedia
     - DELETE /api/v2/servicereviews/{serviceReviewId}/medias/{mediaId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter serviceReviewId: (path)  
     - parameter mediaId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV2ServicereviewsServiceReviewIdMediasMediaIdDeleteWithRequestBuilder(serviceReviewId: UUID, mediaId: UUID) -> RequestBuilder<Bool> {
        var localVariablePath = "/api/v2/servicereviews/{serviceReviewId}/medias/{mediaId}"
        let serviceReviewIdPreEscape = "\(APIHelper.mapValueToPathItem(serviceReviewId))"
        let serviceReviewIdPostEscape = serviceReviewIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{serviceReviewId}", with: serviceReviewIdPostEscape, options: .literal, range: nil)
        let mediaIdPreEscape = "\(APIHelper.mapValueToPathItem(mediaId))"
        let mediaIdPostEscape = mediaIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mediaId}", with: mediaIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get ServiceReviewMedia.
     
     - parameter serviceReviewId: (path)  
     - parameter mediaId: (path)  
     - returns: AnyPublisher<MediaModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdMediasMediaIdGet(serviceReviewId: UUID, mediaId: UUID) -> AnyPublisher<MediaModel, Error> {
        var requestTask: RequestTask?
        return Future<MediaModel, Error> { promise in
            requestTask = apiV2ServicereviewsServiceReviewIdMediasMediaIdGetWithRequestBuilder(serviceReviewId: serviceReviewId, mediaId: mediaId).execute { result in
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
     Get ServiceReviewMedia.
     - GET /api/v2/servicereviews/{serviceReviewId}/medias/{mediaId}
     - parameter serviceReviewId: (path)  
     - parameter mediaId: (path)  
     - returns: RequestBuilder<MediaModel> 
     */
    open class func apiV2ServicereviewsServiceReviewIdMediasMediaIdGetWithRequestBuilder(serviceReviewId: UUID, mediaId: UUID) -> RequestBuilder<MediaModel> {
        var localVariablePath = "/api/v2/servicereviews/{serviceReviewId}/medias/{mediaId}"
        let serviceReviewIdPreEscape = "\(APIHelper.mapValueToPathItem(serviceReviewId))"
        let serviceReviewIdPostEscape = serviceReviewIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{serviceReviewId}", with: serviceReviewIdPostEscape, options: .literal, range: nil)
        let mediaIdPreEscape = "\(APIHelper.mapValueToPathItem(mediaId))"
        let mediaIdPostEscape = mediaIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mediaId}", with: mediaIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MediaModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update ServiceReviewMedia.
     
     - parameter serviceReviewId: (path)  
     - parameter mediaId: (path)  
     - parameter updateMediaCommand: (body)  (optional)
     - returns: AnyPublisher<MediaModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdMediasMediaIdPut(serviceReviewId: UUID, mediaId: UUID, updateMediaCommand: UpdateMediaCommand? = nil) -> AnyPublisher<MediaModel, Error> {
        var requestTask: RequestTask?
        return Future<MediaModel, Error> { promise in
            requestTask = apiV2ServicereviewsServiceReviewIdMediasMediaIdPutWithRequestBuilder(serviceReviewId: serviceReviewId, mediaId: mediaId, updateMediaCommand: updateMediaCommand).execute { result in
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
     Update ServiceReviewMedia.
     - PUT /api/v2/servicereviews/{serviceReviewId}/medias/{mediaId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter serviceReviewId: (path)  
     - parameter mediaId: (path)  
     - parameter updateMediaCommand: (body)  (optional)
     - returns: RequestBuilder<MediaModel> 
     */
    open class func apiV2ServicereviewsServiceReviewIdMediasMediaIdPutWithRequestBuilder(serviceReviewId: UUID, mediaId: UUID, updateMediaCommand: UpdateMediaCommand? = nil) -> RequestBuilder<MediaModel> {
        var localVariablePath = "/api/v2/servicereviews/{serviceReviewId}/medias/{mediaId}"
        let serviceReviewIdPreEscape = "\(APIHelper.mapValueToPathItem(serviceReviewId))"
        let serviceReviewIdPostEscape = serviceReviewIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{serviceReviewId}", with: serviceReviewIdPostEscape, options: .literal, range: nil)
        let mediaIdPreEscape = "\(APIHelper.mapValueToPathItem(mediaId))"
        let mediaIdPostEscape = mediaIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mediaId}", with: mediaIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateMediaCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MediaModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create ServiceReviewMedia.
     
     - parameter serviceReviewId: (path)  
     - parameter createMediaCommand: (body)  (optional)
     - returns: AnyPublisher<MediaModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdMediasPost(serviceReviewId: UUID, createMediaCommand: CreateMediaCommand? = nil) -> AnyPublisher<MediaModel, Error> {
        var requestTask: RequestTask?
        return Future<MediaModel, Error> { promise in
            requestTask = apiV2ServicereviewsServiceReviewIdMediasPostWithRequestBuilder(serviceReviewId: serviceReviewId, createMediaCommand: createMediaCommand).execute { result in
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
     Create ServiceReviewMedia.
     - POST /api/v2/servicereviews/{serviceReviewId}/medias
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter serviceReviewId: (path)  
     - parameter createMediaCommand: (body)  (optional)
     - returns: RequestBuilder<MediaModel> 
     */
    open class func apiV2ServicereviewsServiceReviewIdMediasPostWithRequestBuilder(serviceReviewId: UUID, createMediaCommand: CreateMediaCommand? = nil) -> RequestBuilder<MediaModel> {
        var localVariablePath = "/api/v2/servicereviews/{serviceReviewId}/medias"
        let serviceReviewIdPreEscape = "\(APIHelper.mapValueToPathItem(serviceReviewId))"
        let serviceReviewIdPostEscape = serviceReviewIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{serviceReviewId}", with: serviceReviewIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createMediaCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MediaModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update ServiceReview.
     
     - parameter serviceReviewId: (path)  
     - parameter updateServiceReviewCommand: (body)  (optional)
     - returns: AnyPublisher<ServiceReviewModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdPut(serviceReviewId: UUID, updateServiceReviewCommand: UpdateServiceReviewCommand? = nil) -> AnyPublisher<ServiceReviewModel, Error> {
        var requestTask: RequestTask?
        return Future<ServiceReviewModel, Error> { promise in
            requestTask = apiV2ServicereviewsServiceReviewIdPutWithRequestBuilder(serviceReviewId: serviceReviewId, updateServiceReviewCommand: updateServiceReviewCommand).execute { result in
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
     Update ServiceReview.
     - PUT /api/v2/servicereviews/{serviceReviewId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter serviceReviewId: (path)  
     - parameter updateServiceReviewCommand: (body)  (optional)
     - returns: RequestBuilder<ServiceReviewModel> 
     */
    open class func apiV2ServicereviewsServiceReviewIdPutWithRequestBuilder(serviceReviewId: UUID, updateServiceReviewCommand: UpdateServiceReviewCommand? = nil) -> RequestBuilder<ServiceReviewModel> {
        var localVariablePath = "/api/v2/servicereviews/{serviceReviewId}"
        let serviceReviewIdPreEscape = "\(APIHelper.mapValueToPathItem(serviceReviewId))"
        let serviceReviewIdPostEscape = serviceReviewIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{serviceReviewId}", with: serviceReviewIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateServiceReviewCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceReviewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}