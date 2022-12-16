//
// ChatUsersAPI.swift
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

open class ChatUsersAPI {

    /**

     - returns: AnyPublisher<ChatUserModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ChatusersCurrentGet() -> AnyPublisher<ChatUserModel, Error> {
        var requestTask: RequestTask?
        return Future<ChatUserModel, Error> { promise in
            requestTask = apiV2ChatusersCurrentGetWithRequestBuilder().execute { result in
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
     - GET /api/v2/chatusers/current
     - OAuth:
       - type: oauth2
       - name: oauth2
     - returns: RequestBuilder<ChatUserModel> 
     */
    open class func apiV2ChatusersCurrentGetWithRequestBuilder() -> RequestBuilder<ChatUserModel> {
        let localVariablePath = "/api/v2/chatusers/current"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChatUserModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete chatUser.
     
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ChatusersDelete() -> AnyPublisher<Bool, Error> {
        var requestTask: RequestTask?
        return Future<Bool, Error> { promise in
            requestTask = apiV2ChatusersDeleteWithRequestBuilder().execute { result in
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
     Delete chatUser.
     - DELETE /api/v2/chatusers
     - OAuth:
       - type: oauth2
       - name: oauth2
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV2ChatusersDeleteWithRequestBuilder() -> RequestBuilder<Bool> {
        let localVariablePath = "/api/v2/chatusers"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get all chatUsers.
     
     - parameter limit: (query)  (optional)
     - parameter token: (query)  (optional)
     - parameter userIds: (query)  (optional)
     - parameter nickname: (query)  (optional)
     - parameter nicknameStartswith: (query)  (optional)
     - returns: AnyPublisher<ChatUsersModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ChatusersGet(limit: Int? = nil, token: String? = nil, userIds: String? = nil, nickname: String? = nil, nicknameStartswith: String? = nil) -> AnyPublisher<ChatUsersModel, Error> {
        var requestTask: RequestTask?
        return Future<ChatUsersModel, Error> { promise in
            requestTask = apiV2ChatusersGetWithRequestBuilder(limit: limit, token: token, userIds: userIds, nickname: nickname, nicknameStartswith: nicknameStartswith).execute { result in
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
     Get all chatUsers.
     - GET /api/v2/chatusers
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter limit: (query)  (optional)
     - parameter token: (query)  (optional)
     - parameter userIds: (query)  (optional)
     - parameter nickname: (query)  (optional)
     - parameter nicknameStartswith: (query)  (optional)
     - returns: RequestBuilder<ChatUsersModel> 
     */
    open class func apiV2ChatusersGetWithRequestBuilder(limit: Int? = nil, token: String? = nil, userIds: String? = nil, nickname: String? = nil, nicknameStartswith: String? = nil) -> RequestBuilder<ChatUsersModel> {
        let localVariablePath = "/api/v2/chatusers"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "Token": (wrappedValue: token?.encodeToJSON(), isExplode: true),
            "UserIds": (wrappedValue: userIds?.encodeToJSON(), isExplode: true),
            "Nickname": (wrappedValue: nickname?.encodeToJSON(), isExplode: true),
            "NicknameStartswith": (wrappedValue: nicknameStartswith?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChatUsersModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create a chatUser.
     
     - parameter createChatUserCommand: (body)  (optional)
     - returns: AnyPublisher<ChatUserModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ChatusersPost(createChatUserCommand: CreateChatUserCommand? = nil) -> AnyPublisher<ChatUserModel, Error> {
        var requestTask: RequestTask?
        return Future<ChatUserModel, Error> { promise in
            requestTask = apiV2ChatusersPostWithRequestBuilder(createChatUserCommand: createChatUserCommand).execute { result in
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
     Create a chatUser.
     - POST /api/v2/chatusers
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter createChatUserCommand: (body)  (optional)
     - returns: RequestBuilder<ChatUserModel> 
     */
    open class func apiV2ChatusersPostWithRequestBuilder(createChatUserCommand: CreateChatUserCommand? = nil) -> RequestBuilder<ChatUserModel> {
        let localVariablePath = "/api/v2/chatusers"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createChatUserCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChatUserModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update chatUser.
     
     - parameter updateChatUserCommand: (body)  (optional)
     - returns: AnyPublisher<ChatUserModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ChatusersPut(updateChatUserCommand: UpdateChatUserCommand? = nil) -> AnyPublisher<ChatUserModel, Error> {
        var requestTask: RequestTask?
        return Future<ChatUserModel, Error> { promise in
            requestTask = apiV2ChatusersPutWithRequestBuilder(updateChatUserCommand: updateChatUserCommand).execute { result in
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
     Update chatUser.
     - PUT /api/v2/chatusers
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter updateChatUserCommand: (body)  (optional)
     - returns: RequestBuilder<ChatUserModel> 
     */
    open class func apiV2ChatusersPutWithRequestBuilder(updateChatUserCommand: UpdateChatUserCommand? = nil) -> RequestBuilder<ChatUserModel> {
        let localVariablePath = "/api/v2/chatusers"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateChatUserCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChatUserModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get chatUser.
     
     - parameter userId: (path)  
     - returns: AnyPublisher<ChatUserModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ChatusersUserIdGet(userId: UUID) -> AnyPublisher<ChatUserModel, Error> {
        var requestTask: RequestTask?
        return Future<ChatUserModel, Error> { promise in
            requestTask = apiV2ChatusersUserIdGetWithRequestBuilder(userId: userId).execute { result in
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
     Get chatUser.
     - GET /api/v2/chatusers/{userId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter userId: (path)  
     - returns: RequestBuilder<ChatUserModel> 
     */
    open class func apiV2ChatusersUserIdGetWithRequestBuilder(userId: UUID) -> RequestBuilder<ChatUserModel> {
        var localVariablePath = "/api/v2/chatusers/{userId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChatUserModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
