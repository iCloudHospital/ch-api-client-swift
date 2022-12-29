//
// AccountsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AccountsAPI {

    /**

     - parameter changeEmailModel: (body)  (optional)
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1AccountsChangeEmailPost(changeEmailModel: ChangeEmailModel? = nil) async throws {
        let requestBuilder = apiV1AccountsChangeEmailPostWithRequestBuilder(changeEmailModel: changeEmailModel)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case .success:
                        continuation.resume(returning: ())
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

    /**
     - POST /api/v1/accounts/changeEmail
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter changeEmailModel: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1AccountsChangeEmailPostWithRequestBuilder(changeEmailModel: ChangeEmailModel? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/accounts/changeEmail"
        let localVariableURLString = CloudHospitalClientAPI.identityBasePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: changeEmailModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = CloudHospitalClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter setPasswordRequestModel: (body)  (optional)
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1AccountsChangePasswordPost(setPasswordRequestModel: SetPasswordRequestModel? = nil) async throws {
        let requestBuilder = apiV1AccountsChangePasswordPostWithRequestBuilder(setPasswordRequestModel: setPasswordRequestModel)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case .success:
                        continuation.resume(returning: ())
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

    /**
     - POST /api/v1/accounts/changePassword
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter setPasswordRequestModel: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1AccountsChangePasswordPostWithRequestBuilder(setPasswordRequestModel: SetPasswordRequestModel? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/accounts/changePassword"
        let localVariableURLString = CloudHospitalClientAPI.identityBasePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setPasswordRequestModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = CloudHospitalClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter confirmEmailModel: (body)  (optional)
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1AccountsConfirmEmailPost(confirmEmailModel: ConfirmEmailModel? = nil) async throws {
        let requestBuilder = apiV1AccountsConfirmEmailPostWithRequestBuilder(confirmEmailModel: confirmEmailModel)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case .success:
                        continuation.resume(returning: ())
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

    /**
     - POST /api/v1/accounts/confirmEmail
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter confirmEmailModel: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1AccountsConfirmEmailPostWithRequestBuilder(confirmEmailModel: ConfirmEmailModel? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/accounts/confirmEmail"
        let localVariableURLString = CloudHospitalClientAPI.identityBasePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: confirmEmailModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = CloudHospitalClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1AccountsDelete() async throws {
        let requestBuilder = apiV1AccountsDeleteWithRequestBuilder()
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case .success:
                        continuation.resume(returning: ())
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

    /**
     - DELETE /api/v1/accounts
     - OAuth:
       - type: oauth2
       - name: oauth2
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1AccountsDeleteWithRequestBuilder() -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/accounts"
        let localVariableURLString = CloudHospitalClientAPI.identityBasePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = CloudHospitalClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter forgotPasswordViewModel: (body)  (optional)
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1AccountsForgotPasswordPost(forgotPasswordViewModel: ForgotPasswordViewModel? = nil) async throws {
        let requestBuilder = apiV1AccountsForgotPasswordPostWithRequestBuilder(forgotPasswordViewModel: forgotPasswordViewModel)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case .success:
                        continuation.resume(returning: ())
                    case let .failure(error):
                        if case let ErrorResponse.error(status, _, _, _) = error {
                            if status == 200 {
                                continuation.resume(returning: ())
                            } else {
                                continuation.resume(throwing: error)
                            }
                        } else {
                            continuation.resume(throwing: error)
                        }
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

    /**
     - POST /api/v1/accounts/forgotPassword
     - parameter forgotPasswordViewModel: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1AccountsForgotPasswordPostWithRequestBuilder(forgotPasswordViewModel: ForgotPasswordViewModel? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/accounts/forgotPassword"
        let localVariableURLString = CloudHospitalClientAPI.identityBasePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: forgotPasswordViewModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = CloudHospitalClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1AccountsGet() async throws {
        let requestBuilder = apiV1AccountsGetWithRequestBuilder()
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case .success:
                        continuation.resume(returning: ())
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

    /**
     - GET /api/v1/accounts
     - OAuth:
       - type: oauth2
       - name: oauth2
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1AccountsGetWithRequestBuilder() -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/accounts"
        let localVariableURLString = CloudHospitalClientAPI.identityBasePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = CloudHospitalClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - parameter registerViewModel: (body)  (optional)
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1AccountsPost(registerViewModel: RegisterViewModel? = nil) async throws {
        let requestBuilder = apiV1AccountsPostWithRequestBuilder(registerViewModel: registerViewModel)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case .success:
                        continuation.resume(returning: ())
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

    /**
     - POST /api/v1/accounts
     - parameter registerViewModel: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1AccountsPostWithRequestBuilder(registerViewModel: RegisterViewModel? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/accounts"
        let localVariableURLString = CloudHospitalClientAPI.identityBasePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: registerViewModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = CloudHospitalClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter resetPasswordViewModel: (body)  (optional)
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1AccountsResetPasswordPost(resetPasswordViewModel: ResetPasswordViewModel? = nil) async throws {
        let requestBuilder = apiV1AccountsResetPasswordPostWithRequestBuilder(resetPasswordViewModel: resetPasswordViewModel)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case .success:
                        continuation.resume(returning: ())
                    case let .failure(error):
                        if case let ErrorResponse.error(status, _, _, _) = error {
                            if status == 200 {
                                continuation.resume(returning: ())
                            } else {
                                continuation.resume(throwing: error)
                            }
                        } else {
                            continuation.resume(throwing: error)
                        }
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

    /**
     - POST /api/v1/accounts/resetPassword
     - parameter resetPasswordViewModel: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1AccountsResetPasswordPostWithRequestBuilder(resetPasswordViewModel: ResetPasswordViewModel? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/accounts/resetPassword"
        let localVariableURLString = CloudHospitalClientAPI.identityBasePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: resetPasswordViewModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = CloudHospitalClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1AccountsSendVerificationEmailPost() async throws {
        let requestBuilder = apiV1AccountsSendVerificationEmailPostWithRequestBuilder()
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case .success:
                        continuation.resume(returning: ())
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

    /**
     - POST /api/v1/accounts/sendVerificationEmail
     - OAuth:
       - type: oauth2
       - name: oauth2
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1AccountsSendVerificationEmailPostWithRequestBuilder() -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/accounts/sendVerificationEmail"
        let localVariableURLString = CloudHospitalClientAPI.identityBasePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = CloudHospitalClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
