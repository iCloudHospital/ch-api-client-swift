//
// ConsultationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ConsultationsAPI {

    /**
     Get consultation.
     
     - parameter consultationId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: ConsultationModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ConsultationsConsultationIdGet(consultationId: UUID, languageCode: String? = nil) async throws -> ConsultationModel {
        let requestBuilder = apiV2ConsultationsConsultationIdGetWithRequestBuilder(consultationId: consultationId, languageCode: languageCode)
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
     Get consultation.
     - GET /api/v2/consultations/{consultationId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter consultationId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: RequestBuilder<ConsultationModel> 
     */
    open class func apiV2ConsultationsConsultationIdGetWithRequestBuilder(consultationId: UUID, languageCode: String? = nil) -> RequestBuilder<ConsultationModel> {
        var localVariablePath = "/api/v2/consultations/{consultationId}"
        let consultationIdPreEscape = "\(APIHelper.mapValueToPathItem(consultationId))"
        let consultationIdPostEscape = consultationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{consultationId}", with: consultationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": (wrappedValue: languageCode?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ConsultationModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Pay consultation.
     
     - parameter consultationId: (path)  
     - returns: String
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ConsultationsConsultationIdPayPost(consultationId: UUID) async throws -> String {
        let requestBuilder = apiV2ConsultationsConsultationIdPayPostWithRequestBuilder(consultationId: consultationId)
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
     Pay consultation.
     - POST /api/v2/consultations/{consultationId}/pay
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter consultationId: (path)  
     - returns: RequestBuilder<String> 
     */
    open class func apiV2ConsultationsConsultationIdPayPostWithRequestBuilder(consultationId: UUID) -> RequestBuilder<String> {
        var localVariablePath = "/api/v2/consultations/{consultationId}/pay"
        let consultationIdPreEscape = "\(APIHelper.mapValueToPathItem(consultationId))"
        let consultationIdPostEscape = consultationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{consultationId}", with: consultationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update consultation.
     
     - parameter consultationId: (path)  
     - parameter updateConsultationCommand: (body)  (optional)
     - returns: ConsultationModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ConsultationsConsultationIdPut(consultationId: UUID, updateConsultationCommand: UpdateConsultationCommand? = nil) async throws -> ConsultationModel {
        let requestBuilder = apiV2ConsultationsConsultationIdPutWithRequestBuilder(consultationId: consultationId, updateConsultationCommand: updateConsultationCommand)
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
     Update consultation.
     - PUT /api/v2/consultations/{consultationId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter consultationId: (path)  
     - parameter updateConsultationCommand: (body)  (optional)
     - returns: RequestBuilder<ConsultationModel> 
     */
    open class func apiV2ConsultationsConsultationIdPutWithRequestBuilder(consultationId: UUID, updateConsultationCommand: UpdateConsultationCommand? = nil) -> RequestBuilder<ConsultationModel> {
        var localVariablePath = "/api/v2/consultations/{consultationId}"
        let consultationIdPreEscape = "\(APIHelper.mapValueToPathItem(consultationId))"
        let consultationIdPostEscape = consultationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{consultationId}", with: consultationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateConsultationCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ConsultationModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get all consultations.
     
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter doctorId: (query)  (optional)
     - parameter doctorName: (query)  (optional)
     - parameter dealId: (query)  (optional)
     - parameter dealName: (query)  (optional)
     - parameter isOpen: (query)  (optional)
     - parameter isCompleted: (query)  (optional)
     - parameter status: (query)  (optional)
     - parameter consultationType: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: ConsultationsModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ConsultationsGet(hospitalId: UUID? = nil, hospitalName: String? = nil, doctorId: UUID? = nil, doctorName: String? = nil, dealId: UUID? = nil, dealName: String? = nil, isOpen: Bool? = nil, isCompleted: Bool? = nil, status: ConsultationStatus? = nil, consultationType: ConsultationType? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) async throws -> ConsultationsModel {
        let requestBuilder = apiV2ConsultationsGetWithRequestBuilder(hospitalId: hospitalId, hospitalName: hospitalName, doctorId: doctorId, doctorName: doctorName, dealId: dealId, dealName: dealName, isOpen: isOpen, isCompleted: isCompleted, status: status, consultationType: consultationType, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved)
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
     Get all consultations.
     - GET /api/v2/consultations
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter doctorId: (query)  (optional)
     - parameter doctorName: (query)  (optional)
     - parameter dealId: (query)  (optional)
     - parameter dealName: (query)  (optional)
     - parameter isOpen: (query)  (optional)
     - parameter isCompleted: (query)  (optional)
     - parameter status: (query)  (optional)
     - parameter consultationType: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<ConsultationsModel> 
     */
    open class func apiV2ConsultationsGetWithRequestBuilder(hospitalId: UUID? = nil, hospitalName: String? = nil, doctorId: UUID? = nil, doctorName: String? = nil, dealId: UUID? = nil, dealName: String? = nil, isOpen: Bool? = nil, isCompleted: Bool? = nil, status: ConsultationStatus? = nil, consultationType: ConsultationType? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<ConsultationsModel> {
        let localVariablePath = "/api/v2/consultations"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "HospitalId": (wrappedValue: hospitalId?.encodeToJSON(), isExplode: true),
            "HospitalName": (wrappedValue: hospitalName?.encodeToJSON(), isExplode: true),
            "DoctorId": (wrappedValue: doctorId?.encodeToJSON(), isExplode: true),
            "DoctorName": (wrappedValue: doctorName?.encodeToJSON(), isExplode: true),
            "DealId": (wrappedValue: dealId?.encodeToJSON(), isExplode: true),
            "DealName": (wrappedValue: dealName?.encodeToJSON(), isExplode: true),
            "IsOpen": (wrappedValue: isOpen?.encodeToJSON(), isExplode: true),
            "IsCompleted": (wrappedValue: isCompleted?.encodeToJSON(), isExplode: true),
            "Status": (wrappedValue: status?.encodeToJSON(), isExplode: true),
            "ConsultationType": (wrappedValue: consultationType?.encodeToJSON(), isExplode: true),
            "LanguageCode": (wrappedValue: languageCode?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "lastRetrieved": (wrappedValue: lastRetrieved?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ConsultationsModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create consultation.
     
     - parameter requestId: (path)  
     - parameter createConsultationCommand: (body)  (optional)
     - returns: ConsultationModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ConsultationsRequestIdPost(requestId: UUID, createConsultationCommand: CreateConsultationCommand? = nil) async throws -> ConsultationModel {
        let requestBuilder = apiV2ConsultationsRequestIdPostWithRequestBuilder(requestId: requestId, createConsultationCommand: createConsultationCommand)
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
     Create consultation.
     - POST /api/v2/consultations/{requestId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter requestId: (path)  
     - parameter createConsultationCommand: (body)  (optional)
     - returns: RequestBuilder<ConsultationModel> 
     */
    open class func apiV2ConsultationsRequestIdPostWithRequestBuilder(requestId: UUID, createConsultationCommand: CreateConsultationCommand? = nil) -> RequestBuilder<ConsultationModel> {
        var localVariablePath = "/api/v2/consultations/{requestId}"
        let requestIdPreEscape = "\(APIHelper.mapValueToPathItem(requestId))"
        let requestIdPostEscape = requestIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{requestId}", with: requestIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createConsultationCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ConsultationModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
