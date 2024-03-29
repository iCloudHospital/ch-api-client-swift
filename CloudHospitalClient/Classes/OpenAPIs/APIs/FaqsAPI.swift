//
// FaqsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FaqsAPI {

    /**
     Get faq.
     
     - parameter faqId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: FaqModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqsFaqIdGet(faqId: UUID, languageCode: String? = nil) async throws -> FaqModel {
        let requestBuilder = apiV2FaqsFaqIdGetWithRequestBuilder(faqId: faqId, languageCode: languageCode)
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

        let localVariableRequestBuilder: RequestBuilder<FaqModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get all FaqMedias.
     
     - parameter faqId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: MediasModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqsFaqIdMediasGet(faqId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) async throws -> MediasModel {
        let requestBuilder = apiV2FaqsFaqIdMediasGetWithRequestBuilder(faqId: faqId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved)
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
     Get FaqMedia.
     
     - parameter faqId: (path)  
     - parameter mediaId: (path)  
     - returns: MediaModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqsFaqIdMediasMediaIdGet(faqId: UUID, mediaId: UUID) async throws -> MediaModel {
        let requestBuilder = apiV2FaqsFaqIdMediasMediaIdGetWithRequestBuilder(faqId: faqId, mediaId: mediaId)
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
     GetAll FaqTags.
     
     - parameter faqId: (path)  
     - parameter tagId: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: FaqTagsModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqsFaqIdTagsGet(faqId: UUID, tagId: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) async throws -> FaqTagsModel {
        let requestBuilder = apiV2FaqsFaqIdTagsGetWithRequestBuilder(faqId: faqId, tagId: tagId, page: page, limit: limit, lastRetrieved: lastRetrieved)
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
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "TagId": (wrappedValue: tagId?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "lastRetrieved": (wrappedValue: lastRetrieved?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FaqTagsModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get FaqTag.
     
     - parameter faqId: (path)  
     - parameter tagId: (path)  
     - returns: FaqTagModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqsFaqIdTagsTagIdGet(faqId: UUID, tagId: String) async throws -> FaqTagModel {
        let requestBuilder = apiV2FaqsFaqIdTagsTagIdGetWithRequestBuilder(faqId: faqId, tagId: tagId)
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
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<FaqTagModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
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
     - returns: FaqsModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqsGet(id: UUID? = nil, name: String? = nil, slug: String? = nil, categoryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) async throws -> FaqsModel {
        let requestBuilder = apiV2FaqsGetWithRequestBuilder(id: id, name: name, slug: slug, categoryId: categoryId, hospitalId: hospitalId, hospitalName: hospitalName, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved)
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
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": (wrappedValue: id?.encodeToJSON(), isExplode: true),
            "Name": (wrappedValue: name?.encodeToJSON(), isExplode: true),
            "Slug": (wrappedValue: slug?.encodeToJSON(), isExplode: true),
            "CategoryId": (wrappedValue: categoryId?.encodeToJSON(), isExplode: true),
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

        let localVariableRequestBuilder: RequestBuilder<FaqsModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get faq by slug.
     
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: FaqModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2FaqsSlugGet(slug: String, languageCode: String? = nil) async throws -> FaqModel {
        let requestBuilder = apiV2FaqsSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode)
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

        let localVariableRequestBuilder: RequestBuilder<FaqModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
