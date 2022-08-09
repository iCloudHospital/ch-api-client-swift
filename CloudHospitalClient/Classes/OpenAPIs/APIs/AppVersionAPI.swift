//
// AppVersionAPI.swift
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

open class AppVersionAPI {

    /**

     - parameter platform: (path)  
     - returns: AnyPublisher<AppVersionModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2AppversionPlatformGet(platform: Platform) -> AnyPublisher<AppVersionModel, Error> {
        var requestTask: RequestTask?
        return Future<AppVersionModel, Error> { promise in
            requestTask = apiV2AppversionPlatformGetWithRequestBuilder(platform: platform).execute { result in
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
     - GET /api/v2/appversion/{platform}
     - parameter platform: (path)  
     - returns: RequestBuilder<AppVersionModel> 
     */
    open class func apiV2AppversionPlatformGetWithRequestBuilder(platform: Platform) -> RequestBuilder<AppVersionModel> {
        var localVariablePath = "/api/v2/appversion/{platform}"
        let platformPreEscape = "\(APIHelper.mapValueToPathItem(platform))"
        let platformPostEscape = platformPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{platform}", with: platformPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppVersionModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}