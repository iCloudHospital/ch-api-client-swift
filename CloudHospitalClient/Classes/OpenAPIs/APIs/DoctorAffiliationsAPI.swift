//
// DoctorAffiliationsAPI.swift
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

open class DoctorAffiliationsAPI {

    /**
     Get all DoctorAffiliationMedias.
     
     - parameter doctorAffiliationId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: AnyPublisher<MediasModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2DoctoraffiliationsDoctorAffiliationIdMediasGet(doctorAffiliationId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> AnyPublisher<MediasModel, Error> {
        var requestTask: RequestTask?
        return Future<MediasModel, Error> { promise in
            requestTask = apiV2DoctoraffiliationsDoctorAffiliationIdMediasGetWithRequestBuilder(doctorAffiliationId: doctorAffiliationId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved).execute { result in
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
     Get all DoctorAffiliationMedias.
     - GET /api/v2/doctoraffiliations/{doctorAffiliationId}/medias
     - parameter doctorAffiliationId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<MediasModel> 
     */
    open class func apiV2DoctoraffiliationsDoctorAffiliationIdMediasGetWithRequestBuilder(doctorAffiliationId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<MediasModel> {
        var localVariablePath = "/api/v2/doctoraffiliations/{doctorAffiliationId}/medias"
        let doctorAffiliationIdPreEscape = "\(APIHelper.mapValueToPathItem(doctorAffiliationId))"
        let doctorAffiliationIdPostEscape = doctorAffiliationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{doctorAffiliationId}", with: doctorAffiliationIdPostEscape, options: .literal, range: nil)
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
     Get DoctorAffiliationMedia.
     
     - parameter doctorAffiliationId: (path)  
     - parameter mediaId: (path)  
     - returns: AnyPublisher<MediaModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2DoctoraffiliationsDoctorAffiliationIdMediasMediaIdGet(doctorAffiliationId: UUID, mediaId: UUID) -> AnyPublisher<MediaModel, Error> {
        var requestTask: RequestTask?
        return Future<MediaModel, Error> { promise in
            requestTask = apiV2DoctoraffiliationsDoctorAffiliationIdMediasMediaIdGetWithRequestBuilder(doctorAffiliationId: doctorAffiliationId, mediaId: mediaId).execute { result in
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
     Get DoctorAffiliationMedia.
     - GET /api/v2/doctoraffiliations/{doctorAffiliationId}/medias/{mediaId}
     - parameter doctorAffiliationId: (path)  
     - parameter mediaId: (path)  
     - returns: RequestBuilder<MediaModel> 
     */
    open class func apiV2DoctoraffiliationsDoctorAffiliationIdMediasMediaIdGetWithRequestBuilder(doctorAffiliationId: UUID, mediaId: UUID) -> RequestBuilder<MediaModel> {
        var localVariablePath = "/api/v2/doctoraffiliations/{doctorAffiliationId}/medias/{mediaId}"
        let doctorAffiliationIdPreEscape = "\(APIHelper.mapValueToPathItem(doctorAffiliationId))"
        let doctorAffiliationIdPostEscape = doctorAffiliationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{doctorAffiliationId}", with: doctorAffiliationIdPostEscape, options: .literal, range: nil)
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
     Get all doctor affiliations.
     
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter doctorId: (query)  (optional)
     - parameter doctorName: (query)  (optional)
     - parameter doctorSlug: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter exceptDoctorId: (query)  (optional)
     - parameter consultationEnabled: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: AnyPublisher<DoctorAffiliationsModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2DoctoraffiliationsGet(hospitalId: UUID? = nil, hospitalName: String? = nil, doctorId: UUID? = nil, doctorName: String? = nil, doctorSlug: String? = nil, specialtyId: UUID? = nil, marketingType: MarketingType? = nil, countryId: UUID? = nil, exceptDoctorId: UUID? = nil, consultationEnabled: Bool? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> AnyPublisher<DoctorAffiliationsModel, Error> {
        var requestTask: RequestTask?
        return Future<DoctorAffiliationsModel, Error> { promise in
            requestTask = apiV2DoctoraffiliationsGetWithRequestBuilder(hospitalId: hospitalId, hospitalName: hospitalName, doctorId: doctorId, doctorName: doctorName, doctorSlug: doctorSlug, specialtyId: specialtyId, marketingType: marketingType, countryId: countryId, exceptDoctorId: exceptDoctorId, consultationEnabled: consultationEnabled, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved).execute { result in
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
     Get all doctor affiliations.
     - GET /api/v2/doctoraffiliations
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter doctorId: (query)  (optional)
     - parameter doctorName: (query)  (optional)
     - parameter doctorSlug: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter exceptDoctorId: (query)  (optional)
     - parameter consultationEnabled: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<DoctorAffiliationsModel> 
     */
    open class func apiV2DoctoraffiliationsGetWithRequestBuilder(hospitalId: UUID? = nil, hospitalName: String? = nil, doctorId: UUID? = nil, doctorName: String? = nil, doctorSlug: String? = nil, specialtyId: UUID? = nil, marketingType: MarketingType? = nil, countryId: UUID? = nil, exceptDoctorId: UUID? = nil, consultationEnabled: Bool? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<DoctorAffiliationsModel> {
        let localVariablePath = "/api/v2/doctoraffiliations"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "HospitalId": (wrappedValue: hospitalId?.encodeToJSON(), isExplode: true),
            "HospitalName": (wrappedValue: hospitalName?.encodeToJSON(), isExplode: true),
            "DoctorId": (wrappedValue: doctorId?.encodeToJSON(), isExplode: true),
            "DoctorName": (wrappedValue: doctorName?.encodeToJSON(), isExplode: true),
            "DoctorSlug": (wrappedValue: doctorSlug?.encodeToJSON(), isExplode: true),
            "SpecialtyId": (wrappedValue: specialtyId?.encodeToJSON(), isExplode: true),
            "MarketingType": (wrappedValue: marketingType?.encodeToJSON(), isExplode: true),
            "CountryId": (wrappedValue: countryId?.encodeToJSON(), isExplode: true),
            "ExceptDoctorId": (wrappedValue: exceptDoctorId?.encodeToJSON(), isExplode: true),
            "ConsultationEnabled": (wrappedValue: consultationEnabled?.encodeToJSON(), isExplode: true),
            "LanguageCode": (wrappedValue: languageCode?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "lastRetrieved": (wrappedValue: lastRetrieved?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DoctorAffiliationsModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get doctor affiliation.
     
     - parameter id: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: AnyPublisher<DoctorAffiliationModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2DoctoraffiliationsIdGet(id: UUID, languageCode: String? = nil) -> AnyPublisher<DoctorAffiliationModel, Error> {
        var requestTask: RequestTask?
        return Future<DoctorAffiliationModel, Error> { promise in
            requestTask = apiV2DoctoraffiliationsIdGetWithRequestBuilder(id: id, languageCode: languageCode).execute { result in
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
     Get doctor affiliation.
     - GET /api/v2/doctoraffiliations/{id}
     - parameter id: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: RequestBuilder<DoctorAffiliationModel> 
     */
    open class func apiV2DoctoraffiliationsIdGetWithRequestBuilder(id: UUID, languageCode: String? = nil) -> RequestBuilder<DoctorAffiliationModel> {
        var localVariablePath = "/api/v2/doctoraffiliations/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
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

        let localVariableRequestBuilder: RequestBuilder<DoctorAffiliationModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     
     
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: AnyPublisher<DoctorAffiliationModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2DoctoraffiliationsSlugGet(slug: String, languageCode: String? = nil) -> AnyPublisher<DoctorAffiliationModel, Error> {
        var requestTask: RequestTask?
        return Future<DoctorAffiliationModel, Error> { promise in
            requestTask = apiV2DoctoraffiliationsSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode).execute { result in
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
     
     - GET /api/v2/doctoraffiliations/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: RequestBuilder<DoctorAffiliationModel> 
     */
    open class func apiV2DoctoraffiliationsSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil) -> RequestBuilder<DoctorAffiliationModel> {
        var localVariablePath = "/api/v2/doctoraffiliations/{slug}"
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

        let localVariableRequestBuilder: RequestBuilder<DoctorAffiliationModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
