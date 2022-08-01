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
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ProfilesChangeemailPost(changeEmailCommand: ChangeEmailCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV2ProfilesChangeemailPostWithRequestBuilder(changeEmailCommand: changeEmailCommand).execute(apiResponseQueue) { result -> Void in
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
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: changeEmailCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Configm email.
     
     - parameter confirmEmailCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ProfilesConfirmemailPost(confirmEmailCommand: ConfirmEmailCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV2ProfilesConfirmemailPostWithRequestBuilder(confirmEmailCommand: confirmEmailCommand).execute(apiResponseQueue) { result -> Void in
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
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: confirmEmailCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Profile.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UserModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ProfilesGet(apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<UserModel, Error> {
        return Future<UserModel, Error>.init { promise in
            apiV2ProfilesGetWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Get Profile.
     - GET /api/v2/profiles
     - OAuth:
       - type: oauth2
       - name: oauth2
     - returns: RequestBuilder<UserModel> 
     */
    open class func apiV2ProfilesGetWithRequestBuilder() -> RequestBuilder<UserModel> {
        let localVariablePath = "/api/v2/profiles"
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update Profile.
     
     - parameter updateProfileCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UserModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ProfilesPut(updateProfileCommand: UpdateProfileCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<UserModel, Error> {
        return Future<UserModel, Error>.init { promise in
            apiV2ProfilesPutWithRequestBuilder(updateProfileCommand: updateProfileCommand).execute(apiResponseQueue) { result -> Void in
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
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateProfileCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
