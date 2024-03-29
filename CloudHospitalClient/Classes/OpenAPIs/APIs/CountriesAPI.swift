//
// CountriesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CountriesAPI {

    /**
     
     
     - parameter countryId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: CountryModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2CountriesCountryIdGet(countryId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil) async throws -> CountryModel {
        let requestBuilder = apiV2CountriesCountryIdGetWithRequestBuilder(countryId: countryId, languageCode: languageCode, returnDefaultValue: returnDefaultValue)
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
     
     - GET /api/v2/countries/{countryId}
     - parameter countryId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: RequestBuilder<CountryModel> 
     */
    open class func apiV2CountriesCountryIdGetWithRequestBuilder(countryId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> RequestBuilder<CountryModel> {
        var localVariablePath = "/api/v2/countries/{countryId}"
        let countryIdPreEscape = "\(APIHelper.mapValueToPathItem(countryId))"
        let countryIdPostEscape = countryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{countryId}", with: countryIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": (wrappedValue: languageCode?.encodeToJSON(), isExplode: true),
            "returnDefaultValue": (wrappedValue: returnDefaultValue?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CountryModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get all CountryMedias.
     
     - parameter countryId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: MediasModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2CountriesCountryIdMediasGet(countryId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) async throws -> MediasModel {
        let requestBuilder = apiV2CountriesCountryIdMediasGetWithRequestBuilder(countryId: countryId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved)
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
     Get all CountryMedias.
     - GET /api/v2/countries/{countryId}/medias
     - parameter countryId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<MediasModel> 
     */
    open class func apiV2CountriesCountryIdMediasGetWithRequestBuilder(countryId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<MediasModel> {
        var localVariablePath = "/api/v2/countries/{countryId}/medias"
        let countryIdPreEscape = "\(APIHelper.mapValueToPathItem(countryId))"
        let countryIdPostEscape = countryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{countryId}", with: countryIdPostEscape, options: .literal, range: nil)
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
     Get CountryMedia.
     
     - parameter countryId: (path)  
     - parameter mediaId: (path)  
     - returns: MediaModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2CountriesCountryIdMediasMediaIdGet(countryId: UUID, mediaId: UUID) async throws -> MediaModel {
        let requestBuilder = apiV2CountriesCountryIdMediasMediaIdGetWithRequestBuilder(countryId: countryId, mediaId: mediaId)
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
     Get CountryMedia.
     - GET /api/v2/countries/{countryId}/medias/{mediaId}
     - parameter countryId: (path)  
     - parameter mediaId: (path)  
     - returns: RequestBuilder<MediaModel> 
     */
    open class func apiV2CountriesCountryIdMediasMediaIdGetWithRequestBuilder(countryId: UUID, mediaId: UUID) -> RequestBuilder<MediaModel> {
        var localVariablePath = "/api/v2/countries/{countryId}/medias/{mediaId}"
        let countryIdPreEscape = "\(APIHelper.mapValueToPathItem(countryId))"
        let countryIdPostEscape = countryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{countryId}", with: countryIdPostEscape, options: .literal, range: nil)
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
     Get all countries.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter createdDate: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: CountriesModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2CountriesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, createdDate: Date? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) async throws -> CountriesModel {
        let requestBuilder = apiV2CountriesGetWithRequestBuilder(id: id, name: name, description: description, createdDate: createdDate, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved)
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
     Get all countries.
     - GET /api/v2/countries
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter createdDate: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<CountriesModel> 
     */
    open class func apiV2CountriesGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, description: String? = nil, createdDate: Date? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<CountriesModel> {
        let localVariablePath = "/api/v2/countries"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": (wrappedValue: id?.encodeToJSON(), isExplode: true),
            "Name": (wrappedValue: name?.encodeToJSON(), isExplode: true),
            "Description": (wrappedValue: description?.encodeToJSON(), isExplode: true),
            "CreatedDate": (wrappedValue: createdDate?.encodeToJSON(), isExplode: true),
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

        let localVariableRequestBuilder: RequestBuilder<CountriesModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     
     
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: CountryModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2CountriesSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil) async throws -> CountryModel {
        let requestBuilder = apiV2CountriesSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue)
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
     
     - GET /api/v2/countries/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: RequestBuilder<CountryModel> 
     */
    open class func apiV2CountriesSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> RequestBuilder<CountryModel> {
        var localVariablePath = "/api/v2/countries/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": (wrappedValue: languageCode?.encodeToJSON(), isExplode: true),
            "returnDefaultValue": (wrappedValue: returnDefaultValue?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CountryModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
