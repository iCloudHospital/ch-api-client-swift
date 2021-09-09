//
// EquipmentsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class EquipmentsAPI {
    /**
     Get all equipments.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<EquipmentsViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsEquipmentsGet(id: UUID? = nil, name: String? = nil, description: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<EquipmentsViewModel, Error> {
        return Future<EquipmentsViewModel, Error>.init { promise in
            apiV1HospitalsEquipmentsGetWithRequestBuilder(id: id, name: name, description: description, hospitalId: hospitalId, hospitalName: hospitalName, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
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
     Get all equipments.
     - GET /api/v1/hospitals/equipments
     - Sample request:        GET /api/v1/hospitals/1/equipments      {          \"pageQueryFilter\": {              \"page\": 1,              \"limit\": 20,              \"lastRetrived\": \"2020-02-05T08:40\"          },          \"searchString\": \"Medical\"      }
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<EquipmentsViewModel> 
     */
    open class func apiV1HospitalsEquipmentsGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, description: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<EquipmentsViewModel> {
        let path = "/api/v1/hospitals/equipments"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "Name": name?.encodeToJSON(),
            "Description": description?.encodeToJSON(),
            "HospitalId": hospitalId?.encodeToJSON(),
            "HospitalName": hospitalName?.encodeToJSON(),
            "Created": created?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
            "Current": current?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EquipmentsViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Delete equipment.
     
     - parameter hospitalId: (path)  
     - parameter equipmentId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdEquipmentsEquipmentIdDelete(hospitalId: UUID, equipmentId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1HospitalsHospitalIdEquipmentsEquipmentIdDeleteWithRequestBuilder(hospitalId: hospitalId, equipmentId: equipmentId).execute(apiResponseQueue) { result -> Void in
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
     Delete equipment.
     - DELETE /api/v1/hospitals/{hospitalId}/equipments/{equipmentId}
     - Sample request:        DELETE /api/v1/hospitals/1/equipments/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter equipmentId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdEquipmentsEquipmentIdDeleteWithRequestBuilder(hospitalId: UUID, equipmentId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/hospitals/{hospitalId}/equipments/{equipmentId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let equipmentIdPreEscape = "\(APIHelper.mapValueToPathItem(equipmentId))"
        let equipmentIdPostEscape = equipmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{equipmentId}", with: equipmentIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get equipment.
     
     - parameter hospitalId: (path)  
     - parameter equipmentId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<EquipmentViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdEquipmentsEquipmentIdGet(hospitalId: UUID, equipmentId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<EquipmentViewModel, Error> {
        return Future<EquipmentViewModel, Error>.init { promise in
            apiV1HospitalsHospitalIdEquipmentsEquipmentIdGetWithRequestBuilder(hospitalId: hospitalId, equipmentId: equipmentId).execute(apiResponseQueue) { result -> Void in
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
     Get equipment.
     - GET /api/v1/hospitals/{hospitalId}/equipments/{equipmentId}
     - Sample request:        GET /api/v1/hospitals/1/equipments/1
     - parameter hospitalId: (path)  
     - parameter equipmentId: (path)  
     - returns: RequestBuilder<EquipmentViewModel> 
     */
    open class func apiV1HospitalsHospitalIdEquipmentsEquipmentIdGetWithRequestBuilder(hospitalId: UUID, equipmentId: UUID) -> RequestBuilder<EquipmentViewModel> {
        var path = "/api/v1/hospitals/{hospitalId}/equipments/{equipmentId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let equipmentIdPreEscape = "\(APIHelper.mapValueToPathItem(equipmentId))"
        let equipmentIdPostEscape = equipmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{equipmentId}", with: equipmentIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EquipmentViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Update equipment.
     
     - parameter hospitalId: (path)  
     - parameter equipmentId: (path)  
     - parameter updateEquipmentCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdEquipmentsEquipmentIdPut(hospitalId: UUID, equipmentId: UUID, updateEquipmentCommand: UpdateEquipmentCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1HospitalsHospitalIdEquipmentsEquipmentIdPutWithRequestBuilder(hospitalId: hospitalId, equipmentId: equipmentId, updateEquipmentCommand: updateEquipmentCommand).execute(apiResponseQueue) { result -> Void in
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
     Update equipment.
     - PUT /api/v1/hospitals/{hospitalId}/equipments/{equipmentId}
     - Sample request:        PUT /api/v1/hospitals/1/equipments/1      {          \"description\": \"Upgraded medical equipment\"      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter equipmentId: (path)  
     - parameter updateEquipmentCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdEquipmentsEquipmentIdPutWithRequestBuilder(hospitalId: UUID, equipmentId: UUID, updateEquipmentCommand: UpdateEquipmentCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/hospitals/{hospitalId}/equipments/{equipmentId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let equipmentIdPreEscape = "\(APIHelper.mapValueToPathItem(equipmentId))"
        let equipmentIdPostEscape = equipmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{equipmentId}", with: equipmentIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateEquipmentCommand)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Create an equipment and add to a hospital.
     
     - parameter hospitalId: (path)  
     - parameter createEquipmentCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UUID, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdEquipmentsPost(hospitalId: UUID, createEquipmentCommand: CreateEquipmentCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<UUID, Error> {
        return Future<UUID, Error>.init { promise in
            apiV1HospitalsHospitalIdEquipmentsPostWithRequestBuilder(hospitalId: hospitalId, createEquipmentCommand: createEquipmentCommand).execute(apiResponseQueue) { result -> Void in
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
     Create an equipment and add to a hospital.
     - POST /api/v1/hospitals/{hospitalId}/equipments
     - Sample request:        POST /api/v1/hospitals/1/equipments      {          \"name\": \"Afroasia ltd\",          \"description\": \"Medical equipment\",          \"medias\": [            {              \"mediaType\": 0,              \"url\": \"imageurl\",              \"description\": \"string\",                      \"order\": 0            }          ]      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter createEquipmentCommand: (body)  (optional)
     - returns: RequestBuilder<UUID> 
     */
    open class func apiV1HospitalsHospitalIdEquipmentsPostWithRequestBuilder(hospitalId: UUID, createEquipmentCommand: CreateEquipmentCommand? = nil) -> RequestBuilder<UUID> {
        var path = "/api/v1/hospitals/{hospitalId}/equipments"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createEquipmentCommand)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UUID>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
