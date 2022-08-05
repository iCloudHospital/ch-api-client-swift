//
// SpecialtyTypeCategoriesAPI.swift
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

open class SpecialtyTypeCategoriesAPI {

    /**
     Get all SpecialtyTypeCategories.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SpecialtyTypeCategoriesViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1SpecialtytypecategoriesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<SpecialtyTypeCategoriesViewModel, Error> {
        return Future<SpecialtyTypeCategoriesViewModel, Error>.init { promise in
            apiV1SpecialtytypecategoriesGetWithRequestBuilder(id: id, name: name, description: description, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
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
     Get all SpecialtyTypeCategories.
     - GET /api/v1/specialtytypecategories
     - Sample request:        GET /api/v1/SpecialtyTypeCategories
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<SpecialtyTypeCategoriesViewModel> 
     */
    open class func apiV1SpecialtytypecategoriesGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, description: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<SpecialtyTypeCategoriesViewModel> {
        let localVariablePath = "/api/v1/specialtytypecategories"
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "Name": name?.encodeToJSON(),
            "Description": description?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
            "Current": current?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SpecialtyTypeCategoriesViewModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create specialtyTypeCategory.
     
     - parameter createSpecialtyTypeCategoryCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UUID, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1SpecialtytypecategoriesPost(createSpecialtyTypeCategoryCommand: CreateSpecialtyTypeCategoryCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<UUID, Error> {
        return Future<UUID, Error>.init { promise in
            apiV1SpecialtytypecategoriesPostWithRequestBuilder(createSpecialtyTypeCategoryCommand: createSpecialtyTypeCategoryCommand).execute(apiResponseQueue) { result -> Void in
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
     Create specialtyTypeCategory.
     - POST /api/v1/specialtytypecategories
     - Sample request:        POST /api/v1/SpecialtyTypeCategories      {          \"name\": \"Adults\",          \"description\": \"There are so many “-ologists“ that they can be hard to keep straight. However, this list could be a handy reference. This is not meant to be an exhaustive and all-inclusive list of what a specialist does, but it should provide you with a basic overview.\"      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter createSpecialtyTypeCategoryCommand: (body)  (optional)
     - returns: RequestBuilder<UUID> 
     */
    open class func apiV1SpecialtytypecategoriesPostWithRequestBuilder(createSpecialtyTypeCategoryCommand: CreateSpecialtyTypeCategoryCommand? = nil) -> RequestBuilder<UUID> {
        let localVariablePath = "/api/v1/specialtytypecategories"
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createSpecialtyTypeCategoryCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UUID>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete specialtyTypeCategory.
     
     - parameter specialtyTypeCategoryId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdDelete(specialtyTypeCategoryId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdDeleteWithRequestBuilder(specialtyTypeCategoryId: specialtyTypeCategoryId).execute(apiResponseQueue) { result -> Void in
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
     Delete specialtyTypeCategory.
     - DELETE /api/v1/specialtytypecategories/{specialtyTypeCategoryId}
     - Sample request:        DELETE /api/v1/SpecialtyTypeCategories/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter specialtyTypeCategoryId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdDeleteWithRequestBuilder(specialtyTypeCategoryId: UUID) -> RequestBuilder<Bool> {
        var localVariablePath = "/api/v1/specialtytypecategories/{specialtyTypeCategoryId}"
        let specialtyTypeCategoryIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyTypeCategoryId))"
        let specialtyTypeCategoryIdPostEscape = specialtyTypeCategoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{specialtyTypeCategoryId}", with: specialtyTypeCategoryIdPostEscape, options: .literal, range: nil)
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
     Get specialtyTypeCategory.
     
     - parameter specialtyTypeCategoryId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SpecialtyTypeCategoryViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdGet(specialtyTypeCategoryId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<SpecialtyTypeCategoryViewModel, Error> {
        return Future<SpecialtyTypeCategoryViewModel, Error>.init { promise in
            apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdGetWithRequestBuilder(specialtyTypeCategoryId: specialtyTypeCategoryId).execute(apiResponseQueue) { result -> Void in
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
     Get specialtyTypeCategory.
     - GET /api/v1/specialtytypecategories/{specialtyTypeCategoryId}
     - Sample request:        GET /api/v1/SpecialtyTypeCategories/1
     - parameter specialtyTypeCategoryId: (path)  
     - returns: RequestBuilder<SpecialtyTypeCategoryViewModel> 
     */
    open class func apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdGetWithRequestBuilder(specialtyTypeCategoryId: UUID) -> RequestBuilder<SpecialtyTypeCategoryViewModel> {
        var localVariablePath = "/api/v1/specialtytypecategories/{specialtyTypeCategoryId}"
        let specialtyTypeCategoryIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyTypeCategoryId))"
        let specialtyTypeCategoryIdPostEscape = specialtyTypeCategoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{specialtyTypeCategoryId}", with: specialtyTypeCategoryIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SpecialtyTypeCategoryViewModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update specialtyTypeCategory
     
     - parameter specialtyTypeCategoryId: (path)  
     - parameter updateSpecialtyTypeCategoryCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdPut(specialtyTypeCategoryId: UUID, updateSpecialtyTypeCategoryCommand: UpdateSpecialtyTypeCategoryCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdPutWithRequestBuilder(specialtyTypeCategoryId: specialtyTypeCategoryId, updateSpecialtyTypeCategoryCommand: updateSpecialtyTypeCategoryCommand).execute(apiResponseQueue) { result -> Void in
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
     Update specialtyTypeCategory
     - PUT /api/v1/specialtytypecategories/{specialtyTypeCategoryId}
     - Sample request:        PUT /api/v1/SpecialtyTypeCategories/1      {          \"name\": \"Adults\",          \"description\": \"There are so many “-ologists“ that they can be hard to keep straight. However, this list could be a handy reference. This is not meant to be an exhaustive and all-inclusive list of what a specialist does, but it should provide you with a basic overview.\"      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter specialtyTypeCategoryId: (path)  
     - parameter updateSpecialtyTypeCategoryCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdPutWithRequestBuilder(specialtyTypeCategoryId: UUID, updateSpecialtyTypeCategoryCommand: UpdateSpecialtyTypeCategoryCommand? = nil) -> RequestBuilder<Bool> {
        var localVariablePath = "/api/v1/specialtytypecategories/{specialtyTypeCategoryId}"
        let specialtyTypeCategoryIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyTypeCategoryId))"
        let specialtyTypeCategoryIdPostEscape = specialtyTypeCategoryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{specialtyTypeCategoryId}", with: specialtyTypeCategoryIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateSpecialtyTypeCategoryCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}