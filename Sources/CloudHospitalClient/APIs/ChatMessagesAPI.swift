//
// ChatMessagesAPI.swift
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

open class ChatMessagesAPI {

    /**

     - parameter sendFileRequestModel: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ChatmessagesFilesPost(sendFileRequestModel: SendFileRequestModel? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1ChatmessagesFilesPostWithRequestBuilder(sendFileRequestModel: sendFileRequestModel).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/v1/chatmessages/files
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter sendFileRequestModel: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1ChatmessagesFilesPostWithRequestBuilder(sendFileRequestModel: SendFileRequestModel? = nil) -> RequestBuilder<Bool> {
        let localVariablePath = "/api/v1/chatmessages/files"
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sendFileRequestModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}