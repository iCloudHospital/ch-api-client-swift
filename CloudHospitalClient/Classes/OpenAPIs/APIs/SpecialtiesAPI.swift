//
// SpecialtiesAPI.swift
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

open class SpecialtiesAPI {

    /**
     Get all Specialties.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter ids: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: AnyPublisher<SpecialtiesModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2SpecialtiesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, specialtyTypeId: UUID? = nil, hospitalId: UUID? = nil, created: Date? = nil, languageCode: String? = nil, ids: [UUID]? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> AnyPublisher<SpecialtiesModel, Error> {
        var requestTask: RequestTask?
        return Future<SpecialtiesModel, Error> { promise in
            requestTask = apiV2SpecialtiesGetWithRequestBuilder(id: id, name: name, description: description, specialtyTypeId: specialtyTypeId, hospitalId: hospitalId, created: created, languageCode: languageCode, ids: ids, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved).execute { result in
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
     Get all Specialties.
     - GET /api/v2/specialties
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter ids: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<SpecialtiesModel> 
     */
    open class func apiV2SpecialtiesGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, description: String? = nil, specialtyTypeId: UUID? = nil, hospitalId: UUID? = nil, created: Date? = nil, languageCode: String? = nil, ids: [UUID]? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<SpecialtiesModel> {
        let localVariablePath = "/api/v2/specialties"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "Name": name?.encodeToJSON(),
            "Description": description?.encodeToJSON(),
            "SpecialtyTypeId": specialtyTypeId?.encodeToJSON(),
            "HospitalId": hospitalId?.encodeToJSON(),
            "Created": created?.encodeToJSON(),
            "LanguageCode": languageCode?.encodeToJSON(),
            "Ids": ids?.encodeToJSON(),
            "ReturnDefaultValue": returnDefaultValue?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SpecialtiesModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all Specialties Simple.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter ids: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: AnyPublisher<SpecialtiesSimpleModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2SpecialtiesSimpleGet(id: UUID? = nil, name: String? = nil, description: String? = nil, specialtyTypeId: UUID? = nil, hospitalId: UUID? = nil, created: Date? = nil, languageCode: String? = nil, ids: [UUID]? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> AnyPublisher<SpecialtiesSimpleModel, Error> {
        var requestTask: RequestTask?
        return Future<SpecialtiesSimpleModel, Error> { promise in
            requestTask = apiV2SpecialtiesSimpleGetWithRequestBuilder(id: id, name: name, description: description, specialtyTypeId: specialtyTypeId, hospitalId: hospitalId, created: created, languageCode: languageCode, ids: ids, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved).execute { result in
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
     Get all Specialties Simple.
     - GET /api/v2/specialties/simple
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter ids: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<SpecialtiesSimpleModel> 
     */
    open class func apiV2SpecialtiesSimpleGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, description: String? = nil, specialtyTypeId: UUID? = nil, hospitalId: UUID? = nil, created: Date? = nil, languageCode: String? = nil, ids: [UUID]? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<SpecialtiesSimpleModel> {
        let localVariablePath = "/api/v2/specialties/simple"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "Name": name?.encodeToJSON(),
            "Description": description?.encodeToJSON(),
            "SpecialtyTypeId": specialtyTypeId?.encodeToJSON(),
            "HospitalId": hospitalId?.encodeToJSON(),
            "Created": created?.encodeToJSON(),
            "LanguageCode": languageCode?.encodeToJSON(),
            "Ids": ids?.encodeToJSON(),
            "ReturnDefaultValue": returnDefaultValue?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SpecialtiesSimpleModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     
     
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: AnyPublisher<SpecialtyModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2SpecialtiesSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> AnyPublisher<SpecialtyModel, Error> {
        var requestTask: RequestTask?
        return Future<SpecialtyModel, Error> { promise in
            requestTask = apiV2SpecialtiesSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue).execute { result in
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
     
     - GET /api/v2/specialties/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: RequestBuilder<SpecialtyModel> 
     */
    open class func apiV2SpecialtiesSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> RequestBuilder<SpecialtyModel> {
        var localVariablePath = "/api/v2/specialties/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
            "returnDefaultValue": returnDefaultValue?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SpecialtyModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     
     
     - parameter specialtyId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: AnyPublisher<SpecialtyModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2SpecialtiesSpecialtyIdGet(specialtyId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> AnyPublisher<SpecialtyModel, Error> {
        var requestTask: RequestTask?
        return Future<SpecialtyModel, Error> { promise in
            requestTask = apiV2SpecialtiesSpecialtyIdGetWithRequestBuilder(specialtyId: specialtyId, languageCode: languageCode, returnDefaultValue: returnDefaultValue).execute { result in
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
     
     - GET /api/v2/specialties/{specialtyId}
     - parameter specialtyId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: RequestBuilder<SpecialtyModel> 
     */
    open class func apiV2SpecialtiesSpecialtyIdGetWithRequestBuilder(specialtyId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> RequestBuilder<SpecialtyModel> {
        var localVariablePath = "/api/v2/specialties/{specialtyId}"
        let specialtyIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyId))"
        let specialtyIdPostEscape = specialtyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{specialtyId}", with: specialtyIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
            "returnDefaultValue": returnDefaultValue?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SpecialtyModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all SpecialtyMedias.
     
     - parameter specialtyId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: AnyPublisher<MediasModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2SpecialtiesSpecialtyIdMediasGet(specialtyId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> AnyPublisher<MediasModel, Error> {
        var requestTask: RequestTask?
        return Future<MediasModel, Error> { promise in
            requestTask = apiV2SpecialtiesSpecialtyIdMediasGetWithRequestBuilder(specialtyId: specialtyId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved).execute { result in
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
     Get all SpecialtyMedias.
     - GET /api/v2/specialties/{specialtyId}/medias
     - parameter specialtyId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<MediasModel> 
     */
    open class func apiV2SpecialtiesSpecialtyIdMediasGetWithRequestBuilder(specialtyId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<MediasModel> {
        var localVariablePath = "/api/v2/specialties/{specialtyId}/medias"
        let specialtyIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyId))"
        let specialtyIdPostEscape = specialtyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{specialtyId}", with: specialtyIdPostEscape, options: .literal, range: nil)
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
     Get SpecialtyMedia.
     
     - parameter specialtyId: (path)  
     - parameter mediaId: (path)  
     - returns: AnyPublisher<MediaModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2SpecialtiesSpecialtyIdMediasMediaIdGet(specialtyId: UUID, mediaId: UUID) -> AnyPublisher<MediaModel, Error> {
        var requestTask: RequestTask?
        return Future<MediaModel, Error> { promise in
            requestTask = apiV2SpecialtiesSpecialtyIdMediasMediaIdGetWithRequestBuilder(specialtyId: specialtyId, mediaId: mediaId).execute { result in
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
     Get SpecialtyMedia.
     - GET /api/v2/specialties/{specialtyId}/medias/{mediaId}
     - parameter specialtyId: (path)  
     - parameter mediaId: (path)  
     - returns: RequestBuilder<MediaModel> 
     */
    open class func apiV2SpecialtiesSpecialtyIdMediasMediaIdGetWithRequestBuilder(specialtyId: UUID, mediaId: UUID) -> RequestBuilder<MediaModel> {
        var localVariablePath = "/api/v2/specialties/{specialtyId}/medias/{mediaId}"
        let specialtyIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyId))"
        let specialtyIdPostEscape = specialtyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{specialtyId}", with: specialtyIdPostEscape, options: .literal, range: nil)
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
}
