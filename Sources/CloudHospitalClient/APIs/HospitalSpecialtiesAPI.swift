//
// HospitalSpecialtiesAPI.swift
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

open class HospitalSpecialtiesAPI {

    /**
     Delete hospitalSpecialty.
     
     - parameter hospitalId: (path)  
     - parameter specialtyId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdDelete(hospitalId: UUID, specialtyId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdDeleteWithRequestBuilder(hospitalId: hospitalId, specialtyId: specialtyId).execute(apiResponseQueue) { result -> Void in
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
     Delete hospitalSpecialty.
     - DELETE /api/v1/hospitals/{hospitalId}/specialties/{specialtyId}
     - Sample request:        DELETE /api/v1/hospitals/1/specialties/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter specialtyId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdDeleteWithRequestBuilder(hospitalId: UUID, specialtyId: UUID) -> RequestBuilder<Bool> {
        var localVariablePath = "/api/v1/hospitals/{hospitalId}/specialties/{specialtyId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let specialtyIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyId))"
        let specialtyIdPostEscape = specialtyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{specialtyId}", with: specialtyIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create hospitalSpecialty.
     
     - parameter hospitalId: (path)  
     - parameter specialtyId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<HospitalSpecialtyViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdPost(hospitalId: UUID, specialtyId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<HospitalSpecialtyViewModel, Error> {
        return Future<HospitalSpecialtyViewModel, Error>.init { promise in
            apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdPostWithRequestBuilder(hospitalId: hospitalId, specialtyId: specialtyId).execute(apiResponseQueue) { result -> Void in
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
     Create hospitalSpecialty.
     - POST /api/v1/hospitals/{hospitalId}/specialties/{specialtyId}
     - Sample request:        POST /api/v1/hospitals/1/specialties/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter specialtyId: (path)  
     - returns: RequestBuilder<HospitalSpecialtyViewModel> 
     */
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdPostWithRequestBuilder(hospitalId: UUID, specialtyId: UUID) -> RequestBuilder<HospitalSpecialtyViewModel> {
        var localVariablePath = "/api/v1/hospitals/{hospitalId}/specialties/{specialtyId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let specialtyIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyId))"
        let specialtyIdPostEscape = specialtyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{specialtyId}", with: specialtyIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<HospitalSpecialtyViewModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update hospitalSpecialty sequence.
     
     - parameter hospitalId: (path)  
     - parameter specialtyTypeId: (path)  
     - parameter updateHospitalSpecialtySequenceCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdSpecialtysequencePut(hospitalId: UUID, specialtyTypeId: UUID, updateHospitalSpecialtySequenceCommand: UpdateHospitalSpecialtySequenceCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1HospitalsHospitalIdSpecialtysequencePutWithRequestBuilder(hospitalId: hospitalId, specialtyTypeId: specialtyTypeId, updateHospitalSpecialtySequenceCommand: updateHospitalSpecialtySequenceCommand).execute(apiResponseQueue) { result -> Void in
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
     Update hospitalSpecialty sequence.
     - PUT /api/v1/hospitals/{hospitalId}/specialtysequence
     - Sample request:        PUT /api/v1/hospitals/1/specialtysequence      {          \"specialtyType\": \"Endocrinology\",          \"hospitalSpecialtySequence\": [14, 30, 5, 7]      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter specialtyTypeId: (path)  
     - parameter updateHospitalSpecialtySequenceCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdSpecialtysequencePutWithRequestBuilder(hospitalId: UUID, specialtyTypeId: UUID, updateHospitalSpecialtySequenceCommand: UpdateHospitalSpecialtySequenceCommand? = nil) -> RequestBuilder<Bool> {
        var localVariablePath = "/api/v1/hospitals/{hospitalId}/specialtysequence"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let specialtyTypeIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyTypeId))"
        let specialtyTypeIdPostEscape = specialtyTypeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{SpecialtyTypeId}", with: specialtyTypeIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateHospitalSpecialtySequenceCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all hospitalSpecialties.
     
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter hospitalSlug: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter specialtyName: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<HospitalSpecialtiesViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsSpecialtiesGet(hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtyTypeId: UUID? = nil, marketingType: MarketingType? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<HospitalSpecialtiesViewModel, Error> {
        return Future<HospitalSpecialtiesViewModel, Error>.init { promise in
            apiV1HospitalsSpecialtiesGetWithRequestBuilder(hospitalId: hospitalId, hospitalName: hospitalName, hospitalSlug: hospitalSlug, specialtyId: specialtyId, specialtyName: specialtyName, specialtyTypeId: specialtyTypeId, marketingType: marketingType, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
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
     Get all hospitalSpecialties.
     - GET /api/v1/hospitals/specialties
     - Sample request:        GET /api/v1/hospitals/specialties
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter hospitalSlug: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter specialtyName: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<HospitalSpecialtiesViewModel> 
     */
    open class func apiV1HospitalsSpecialtiesGetWithRequestBuilder(hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtyTypeId: UUID? = nil, marketingType: MarketingType? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<HospitalSpecialtiesViewModel> {
        let localVariablePath = "/api/v1/hospitals/specialties"
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "HospitalId": hospitalId?.encodeToJSON(),
            "HospitalName": hospitalName?.encodeToJSON(),
            "HospitalSlug": hospitalSlug?.encodeToJSON(),
            "SpecialtyId": specialtyId?.encodeToJSON(),
            "SpecialtyName": specialtyName?.encodeToJSON(),
            "SpecialtyTypeId": specialtyTypeId?.encodeToJSON(),
            "MarketingType": marketingType?.encodeToJSON(),
            "Created": created?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
            "Current": current?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<HospitalSpecialtiesViewModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}