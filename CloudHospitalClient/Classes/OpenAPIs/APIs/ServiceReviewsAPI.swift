//
// ServiceReviewsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ServiceReviewsAPI {

    /**
     Get all ServiceReviews.
     
     - parameter id: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalSpecialtyId: (query)  (optional)
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
     - returns: ServiceReviewsModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsGet(id: UUID? = nil, hospitalId: UUID? = nil, hospitalSpecialtyId: UUID? = nil, serviceId: UUID? = nil, serviceName: String? = nil, patientId: UUID? = nil, patientName: String? = nil, gender: Gender? = nil, recommended: Bool? = nil, rate: Int? = nil, reviewType: ReviewType? = nil, languageCode: String? = nil, showHidden: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) async throws -> ServiceReviewsModel {
        let requestBuilder = apiV2ServicereviewsGetWithRequestBuilder(id: id, hospitalId: hospitalId, hospitalSpecialtyId: hospitalSpecialtyId, serviceId: serviceId, serviceName: serviceName, patientId: patientId, patientName: patientName, gender: gender, recommended: recommended, rate: rate, reviewType: reviewType, languageCode: languageCode, showHidden: showHidden, page: page, limit: limit, lastRetrieved: lastRetrieved)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

    /**
     Get all ServiceReviews.
     - GET /api/v2/servicereviews
     - parameter id: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalSpecialtyId: (query)  (optional)
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
    open class func apiV2ServicereviewsGetWithRequestBuilder(id: UUID? = nil, hospitalId: UUID? = nil, hospitalSpecialtyId: UUID? = nil, serviceId: UUID? = nil, serviceName: String? = nil, patientId: UUID? = nil, patientName: String? = nil, gender: Gender? = nil, recommended: Bool? = nil, rate: Int? = nil, reviewType: ReviewType? = nil, languageCode: String? = nil, showHidden: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<ServiceReviewsModel> {
        let localVariablePath = "/api/v2/servicereviews"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": (wrappedValue: id?.encodeToJSON(), isExplode: true),
            "HospitalId": (wrappedValue: hospitalId?.encodeToJSON(), isExplode: true),
            "HospitalSpecialtyId": (wrappedValue: hospitalSpecialtyId?.encodeToJSON(), isExplode: true),
            "ServiceId": (wrappedValue: serviceId?.encodeToJSON(), isExplode: true),
            "ServiceName": (wrappedValue: serviceName?.encodeToJSON(), isExplode: true),
            "PatientId": (wrappedValue: patientId?.encodeToJSON(), isExplode: true),
            "PatientName": (wrappedValue: patientName?.encodeToJSON(), isExplode: true),
            "Gender": (wrappedValue: gender?.encodeToJSON(), isExplode: true),
            "Recommended": (wrappedValue: recommended?.encodeToJSON(), isExplode: true),
            "Rate": (wrappedValue: rate?.encodeToJSON(), isExplode: true),
            "ReviewType": (wrappedValue: reviewType?.encodeToJSON(), isExplode: true),
            "LanguageCode": (wrappedValue: languageCode?.encodeToJSON(), isExplode: true),
            "ShowHidden": (wrappedValue: showHidden?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "lastRetrieved": (wrappedValue: lastRetrieved?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceReviewsModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Create a ServiceReview.
     
     - parameter createServiceReviewCommand: (body)  (optional)
     - returns: ServiceReviewModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsPost(createServiceReviewCommand: CreateServiceReviewCommand? = nil) async throws -> ServiceReviewModel {
        let requestBuilder = apiV2ServicereviewsPostWithRequestBuilder(createServiceReviewCommand: createServiceReviewCommand)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete ServiceReview.
     
     - parameter serviceReviewId: (path)  
     - returns: Bool
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdDelete(serviceReviewId: UUID) async throws -> Bool {
        let requestBuilder = apiV2ServicereviewsServiceReviewIdDeleteWithRequestBuilder(serviceReviewId: serviceReviewId)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     
     
     - parameter serviceReviewId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: ServiceReviewModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdGet(serviceReviewId: UUID, languageCode: String? = nil) async throws -> ServiceReviewModel {
        let requestBuilder = apiV2ServicereviewsServiceReviewIdGetWithRequestBuilder(serviceReviewId: serviceReviewId, languageCode: languageCode)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

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
            "languageCode": (wrappedValue: languageCode?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceReviewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get all ServiceReviewMedias.
     
     - parameter serviceReviewId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: MediasModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdMediasGet(serviceReviewId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) async throws -> MediasModel {
        let requestBuilder = apiV2ServicereviewsServiceReviewIdMediasGetWithRequestBuilder(serviceReviewId: serviceReviewId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

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
            "Id": (wrappedValue: id?.encodeToJSON(), isExplode: true),
            "MediaType": (wrappedValue: mediaType?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "lastRetrieved": (wrappedValue: lastRetrieved?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MediasModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Delete ServiceReviewMedia
     
     - parameter serviceReviewId: (path)  
     - parameter mediaId: (path)  
     - returns: Bool
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdMediasMediaIdDelete(serviceReviewId: UUID, mediaId: UUID) async throws -> Bool {
        let requestBuilder = apiV2ServicereviewsServiceReviewIdMediasMediaIdDeleteWithRequestBuilder(serviceReviewId: serviceReviewId, mediaId: mediaId)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

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

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get ServiceReviewMedia.
     
     - parameter serviceReviewId: (path)  
     - parameter mediaId: (path)  
     - returns: MediaModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdMediasMediaIdGet(serviceReviewId: UUID, mediaId: UUID) async throws -> MediaModel {
        let requestBuilder = apiV2ServicereviewsServiceReviewIdMediasMediaIdGetWithRequestBuilder(serviceReviewId: serviceReviewId, mediaId: mediaId)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

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

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Update ServiceReviewMedia.
     
     - parameter serviceReviewId: (path)  
     - parameter mediaId: (path)  
     - parameter updateMediaCommand: (body)  (optional)
     - returns: MediaModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdMediasMediaIdPut(serviceReviewId: UUID, mediaId: UUID, updateMediaCommand: UpdateMediaCommand? = nil) async throws -> MediaModel {
        let requestBuilder = apiV2ServicereviewsServiceReviewIdMediasMediaIdPutWithRequestBuilder(serviceReviewId: serviceReviewId, mediaId: mediaId, updateMediaCommand: updateMediaCommand)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create ServiceReviewMedia.
     
     - parameter serviceReviewId: (path)  
     - parameter createMediaCommand: (body)  (optional)
     - returns: MediaModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdMediasPost(serviceReviewId: UUID, createMediaCommand: CreateMediaCommand? = nil) async throws -> MediaModel {
        let requestBuilder = apiV2ServicereviewsServiceReviewIdMediasPostWithRequestBuilder(serviceReviewId: serviceReviewId, createMediaCommand: createMediaCommand)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

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

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update ServiceReview.
     
     - parameter serviceReviewId: (path)  
     - parameter updateServiceReviewCommand: (body)  (optional)
     - returns: ServiceReviewModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicereviewsServiceReviewIdPut(serviceReviewId: UUID, updateServiceReviewCommand: UpdateServiceReviewCommand? = nil) async throws -> ServiceReviewModel {
        let requestBuilder = apiV2ServicereviewsServiceReviewIdPutWithRequestBuilder(serviceReviewId: serviceReviewId, updateServiceReviewCommand: updateServiceReviewCommand)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
