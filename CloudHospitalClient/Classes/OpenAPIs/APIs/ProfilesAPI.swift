//
// ProfilesAPI.swift
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

open class ProfilesAPI {

    /**
     Change user's email on both Identity and Api.
     
     - parameter changeEmailCommand: (body)  (optional)
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ProfilesChangeemailPost(changeEmailCommand: ChangeEmailCommand? = nil) -> AnyPublisher<Bool, Error> {
        var requestTask: RequestTask?
        return Future<Bool, Error> { promise in
            requestTask = apiV2ProfilesChangeemailPostWithRequestBuilder(changeEmailCommand: changeEmailCommand).execute { result in
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
     Change user's email on both Identity and Api.
     - POST /api/v2/profiles/changeemail
     - Sample request:        POST /api/v1/profiles/changeEmail      {          \"email\": \"user@example.com\"      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter changeEmailCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV2ProfilesChangeemailPostWithRequestBuilder(changeEmailCommand: ChangeEmailCommand? = nil) -> RequestBuilder<Bool> {
        let localVariablePath = "/api/v2/profiles/changeemail"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: changeEmailCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Configm email.
     
     - parameter confirmEmailCommand: (body)  (optional)
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ProfilesConfirmemailPost(confirmEmailCommand: ConfirmEmailCommand? = nil) -> AnyPublisher<Bool, Error> {
        var requestTask: RequestTask?
        return Future<Bool, Error> { promise in
            requestTask = apiV2ProfilesConfirmemailPostWithRequestBuilder(confirmEmailCommand: confirmEmailCommand).execute { result in
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
     Configm email.
     - POST /api/v2/profiles/confirmemail
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter confirmEmailCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV2ProfilesConfirmemailPostWithRequestBuilder(confirmEmailCommand: ConfirmEmailCommand? = nil) -> RequestBuilder<Bool> {
        let localVariablePath = "/api/v2/profiles/confirmemail"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: confirmEmailCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Profile.
     
     - returns: AnyPublisher<UserModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ProfilesGet() -> AnyPublisher<UserModel, Error> {
        var requestTask: RequestTask?
        return Future<UserModel, Error> { promise in
            requestTask = apiV2ProfilesGetWithRequestBuilder().execute { result in
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
     Get Profile.
     - GET /api/v2/profiles
     - OAuth:
       - type: oauth2
       - name: oauth2
     - returns: RequestBuilder<UserModel> 
     */
    open class func apiV2ProfilesGetWithRequestBuilder() -> RequestBuilder<UserModel> {
        let localVariablePath = "/api/v2/profiles"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update Profile.
     
     - parameter updateProfileCommand: (body)  (optional)
     - returns: AnyPublisher<UserModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ProfilesPut(updateProfileCommand: UpdateProfileCommand? = nil) -> AnyPublisher<UserModel, Error> {
        var requestTask: RequestTask?
        return Future<UserModel, Error> { promise in
            requestTask = apiV2ProfilesPutWithRequestBuilder(updateProfileCommand: updateProfileCommand).execute { result in
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
     Update Profile.
     - PUT /api/v2/profiles
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter updateProfileCommand: (body)  (optional)
     - returns: RequestBuilder<UserModel> 
     */
    open class func apiV2ProfilesPutWithRequestBuilder(updateProfileCommand: UpdateProfileCommand? = nil) -> RequestBuilder<UserModel> {
        let localVariablePath = "/api/v2/profiles"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateProfileCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
