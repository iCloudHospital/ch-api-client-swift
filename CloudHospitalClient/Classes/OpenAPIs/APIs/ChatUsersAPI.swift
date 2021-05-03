//
// ChatUsersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Combine



open class ChatUsersAPI {
    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SendBirdUserViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ChatusersCurrentGet(apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<SendBirdUserViewModel, Error> {
        return Future<SendBirdUserViewModel, Error>.init { promise in
            apiV1ChatusersCurrentGetWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - GET /api/v1/chatusers/current
     - OAuth:
       - type: oauth2
       - name: oauth2
     - returns: RequestBuilder<SendBirdUserViewModel> 
     */
    open class func apiV1ChatusersCurrentGetWithRequestBuilder() -> RequestBuilder<SendBirdUserViewModel> {
        let path = "/api/v1/chatusers/current"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SendBirdUserViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter createSendBirdCurrentUserCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SendBirdUserViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ChatusersCurrentPost(createSendBirdCurrentUserCommand: CreateSendBirdCurrentUserCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<SendBirdUserViewModel, Error> {
        return Future<SendBirdUserViewModel, Error>.init { promise in
            apiV1ChatusersCurrentPostWithRequestBuilder(createSendBirdCurrentUserCommand: createSendBirdCurrentUserCommand).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - POST /api/v1/chatusers/current
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter createSendBirdCurrentUserCommand: (body)  (optional)
     - returns: RequestBuilder<SendBirdUserViewModel> 
     */
    open class func apiV1ChatusersCurrentPostWithRequestBuilder(createSendBirdCurrentUserCommand: CreateSendBirdCurrentUserCommand? = nil) -> RequestBuilder<SendBirdUserViewModel> {
        let path = "/api/v1/chatusers/current"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createSendBirdCurrentUserCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SendBirdUserViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ChatusersDelete(apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1ChatusersDeleteWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - DELETE /api/v1/chatusers
     - OAuth:
       - type: oauth2
       - name: oauth2
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1ChatusersDeleteWithRequestBuilder() -> RequestBuilder<Bool> {
        let path = "/api/v1/chatusers"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter updateSendBirdUserCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SendBirdUserViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ChatusersPut(updateSendBirdUserCommand: UpdateSendBirdUserCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<SendBirdUserViewModel, Error> {
        return Future<SendBirdUserViewModel, Error>.init { promise in
            apiV1ChatusersPutWithRequestBuilder(updateSendBirdUserCommand: updateSendBirdUserCommand).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - PUT /api/v1/chatusers
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter updateSendBirdUserCommand: (body)  (optional)
     - returns: RequestBuilder<SendBirdUserViewModel> 
     */
    open class func apiV1ChatusersPutWithRequestBuilder(updateSendBirdUserCommand: UpdateSendBirdUserCommand? = nil) -> RequestBuilder<SendBirdUserViewModel> {
        let path = "/api/v1/chatusers"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateSendBirdUserCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SendBirdUserViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter userId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SendBirdUserViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ChatusersUserIdGet(userId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<SendBirdUserViewModel, Error> {
        return Future<SendBirdUserViewModel, Error>.init { promise in
            apiV1ChatusersUserIdGetWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - GET /api/v1/chatusers/{userId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter userId: (path)  
     - returns: RequestBuilder<SendBirdUserViewModel> 
     */
    open class func apiV1ChatusersUserIdGetWithRequestBuilder(userId: UUID) -> RequestBuilder<SendBirdUserViewModel> {
        var path = "/api/v1/chatusers/{userId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SendBirdUserViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}