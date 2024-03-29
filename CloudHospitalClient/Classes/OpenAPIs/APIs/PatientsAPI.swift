//
// PatientsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PatientsAPI {

    /**
     Delete Patient.
     
     - parameter patientId: (path)  
     - returns: Bool
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2PatientsPatientIdDelete(patientId: UUID) async throws -> Bool {
        let requestBuilder = apiV2PatientsPatientIdDeleteWithRequestBuilder(patientId: patientId)
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
                    case let .success(response):
                        continuation.resume(returning: response.body)
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
     Delete Patient.
     - DELETE /api/v2/patients/{patientId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter patientId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV2PatientsPatientIdDeleteWithRequestBuilder(patientId: UUID) -> RequestBuilder<Bool> {
        var localVariablePath = "/api/v2/patients/{patientId}"
        let patientIdPreEscape = "\(APIHelper.mapValueToPathItem(patientId))"
        let patientIdPostEscape = patientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{patientId}", with: patientIdPostEscape, options: .literal, range: nil)
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
     Get Patient.
     
     - parameter patientId: (path)  
     - returns: PatientModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2PatientsPatientIdGet(patientId: UUID) async throws -> PatientModel {
        let requestBuilder = apiV2PatientsPatientIdGetWithRequestBuilder(patientId: patientId)
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
                    case let .success(response):
                        continuation.resume(returning: response.body)
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
     Get Patient.
     - GET /api/v2/patients/{patientId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter patientId: (path)  
     - returns: RequestBuilder<PatientModel> 
     */
    open class func apiV2PatientsPatientIdGetWithRequestBuilder(patientId: UUID) -> RequestBuilder<PatientModel> {
        var localVariablePath = "/api/v2/patients/{patientId}"
        let patientIdPreEscape = "\(APIHelper.mapValueToPathItem(patientId))"
        let patientIdPostEscape = patientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{patientId}", with: patientIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PatientModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update Patient.
     
     - parameter patientId: (path)  
     - parameter updatePatientCommand: (body)  (optional)
     - returns: PatientModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2PatientsPatientIdPut(patientId: UUID, updatePatientCommand: UpdatePatientCommand? = nil) async throws -> PatientModel {
        let requestBuilder = apiV2PatientsPatientIdPutWithRequestBuilder(patientId: patientId, updatePatientCommand: updatePatientCommand)
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
                    case let .success(response):
                        continuation.resume(returning: response.body)
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
     Update Patient.
     - PUT /api/v2/patients/{patientId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter patientId: (path)  
     - parameter updatePatientCommand: (body)  (optional)
     - returns: RequestBuilder<PatientModel> 
     */
    open class func apiV2PatientsPatientIdPutWithRequestBuilder(patientId: UUID, updatePatientCommand: UpdatePatientCommand? = nil) -> RequestBuilder<PatientModel> {
        var localVariablePath = "/api/v2/patients/{patientId}"
        let patientIdPreEscape = "\(APIHelper.mapValueToPathItem(patientId))"
        let patientIdPostEscape = patientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{patientId}", with: patientIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updatePatientCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PatientModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create a Patient.
     
     - parameter createPatientCommand: (body)  (optional)
     - returns: PatientModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2PatientsPost(createPatientCommand: CreatePatientCommand? = nil) async throws -> PatientModel {
        let requestBuilder = apiV2PatientsPostWithRequestBuilder(createPatientCommand: createPatientCommand)
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
                    case let .success(response):
                        continuation.resume(returning: response.body)
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
     Create a Patient.
     - POST /api/v2/patients
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter createPatientCommand: (body)  (optional)
     - returns: RequestBuilder<PatientModel> 
     */
    open class func apiV2PatientsPostWithRequestBuilder(createPatientCommand: CreatePatientCommand? = nil) -> RequestBuilder<PatientModel> {
        let localVariablePath = "/api/v2/patients"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createPatientCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PatientModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
