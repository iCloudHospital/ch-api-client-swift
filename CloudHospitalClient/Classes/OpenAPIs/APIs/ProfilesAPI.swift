//
// ProfilesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Combine



open class ProfilesAPI {
    /**
     Change user's email on both Identity and Api.
     
     - parameter changeEmailCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ProfilesChangeemailPost(changeEmailCommand: ChangeEmailCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1ProfilesChangeemailPostWithRequestBuilder(changeEmailCommand: changeEmailCommand).execute(apiResponseQueue) { result -> Void in
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
     Change user's email on both Identity and Api.
     - POST /api/v1/profiles/changeemail
     - Sample request:        POST /api/v1/profiles/changeEmail      {          \"email\": \"user@example.com\"      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter changeEmailCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1ProfilesChangeemailPostWithRequestBuilder(changeEmailCommand: ChangeEmailCommand? = nil) -> RequestBuilder<Bool> {
        let path = "/api/v1/profiles/changeemail"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: changeEmailCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter confirmEmailCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ProfilesConfirmemailPost(confirmEmailCommand: ConfirmEmailCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1ProfilesConfirmemailPostWithRequestBuilder(confirmEmailCommand: confirmEmailCommand).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/v1/profiles/confirmemail
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter confirmEmailCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1ProfilesConfirmemailPostWithRequestBuilder(confirmEmailCommand: ConfirmEmailCommand? = nil) -> RequestBuilder<Bool> {
        let path = "/api/v1/profiles/confirmemail"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: confirmEmailCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get current user's profile.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UserViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ProfilesGet(apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<UserViewModel, Error> {
        return Future<UserViewModel, Error>.init { promise in
            apiV1ProfilesGetWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Get current user's profile.
     - GET /api/v1/profiles
     - Sample request:        GET /api/v1/profiles
     - OAuth:
       - type: oauth2
       - name: oauth2
     - returns: RequestBuilder<UserViewModel> 
     */
    open class func apiV1ProfilesGetWithRequestBuilder() -> RequestBuilder<UserViewModel> {
        let path = "/api/v1/profiles"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<UserViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
