//
// CommunicationsAPI.swift
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

open class CommunicationsAPI {

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Int, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1CommunicationsDelete(apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<Int, Error> {
        return Future<Int, Error>.init { promise in
            apiV1CommunicationsDeleteWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     - DELETE /api/v1/communications
     - OAuth:
       - type: oauth2
       - name: oauth2
     - returns: RequestBuilder<Int> 
     */
    open class func apiV1CommunicationsDeleteWithRequestBuilder() -> RequestBuilder<Int> {
        let localVariablePath = "/api/v1/communications"
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Int>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<CommunicationUserTokenModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1CommunicationsGet(apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<CommunicationUserTokenModel, Error> {
        return Future<CommunicationUserTokenModel, Error>.init { promise in
            apiV1CommunicationsGetWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     - GET /api/v1/communications
     - OAuth:
       - type: oauth2
       - name: oauth2
     - returns: RequestBuilder<CommunicationUserTokenModel> 
     */
    open class func apiV1CommunicationsGetWithRequestBuilder() -> RequestBuilder<CommunicationUserTokenModel> {
        let localVariablePath = "/api/v1/communications"
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CommunicationUserTokenModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<CommunicationUserTokenModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1CommunicationsPut(apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<CommunicationUserTokenModel, Error> {
        return Future<CommunicationUserTokenModel, Error>.init { promise in
            apiV1CommunicationsPutWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     - PUT /api/v1/communications
     - OAuth:
       - type: oauth2
       - name: oauth2
     - returns: RequestBuilder<CommunicationUserTokenModel> 
     */
    open class func apiV1CommunicationsPutWithRequestBuilder() -> RequestBuilder<CommunicationUserTokenModel> {
        let localVariablePath = "/api/v1/communications"
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CommunicationUserTokenModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
