//
// ConsultationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class ConsultationsAPI {
    /**
     Approve consultation.
     
     - parameter consultationId: (path)  
     - parameter approveConsultationCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ConsultationsConsultationIdApprovePost(consultationId: UUID, approveConsultationCommand: ApproveConsultationCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1ConsultationsConsultationIdApprovePostWithRequestBuilder(consultationId: consultationId, approveConsultationCommand: approveConsultationCommand).execute(apiResponseQueue) { result -> Void in
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
     Approve consultation.
     - POST /api/v1/consultations/{consultationId}/approve
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter consultationId: (path)  
     - parameter approveConsultationCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1ConsultationsConsultationIdApprovePostWithRequestBuilder(consultationId: UUID, approveConsultationCommand: ApproveConsultationCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/consultations/{consultationId}/approve"
        let consultationIdPreEscape = "\(APIHelper.mapValueToPathItem(consultationId))"
        let consultationIdPostEscape = consultationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{consultationId}", with: consultationIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: approveConsultationCommand)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Cancel consultation.
     
     - parameter consultationId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ConsultationsConsultationIdCancelPost(consultationId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1ConsultationsConsultationIdCancelPostWithRequestBuilder(consultationId: consultationId).execute(apiResponseQueue) { result -> Void in
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
     Cancel consultation.
     - POST /api/v1/consultations/{consultationId}/cancel
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter consultationId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1ConsultationsConsultationIdCancelPostWithRequestBuilder(consultationId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/consultations/{consultationId}/cancel"
        let consultationIdPreEscape = "\(APIHelper.mapValueToPathItem(consultationId))"
        let consultationIdPostEscape = consultationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{consultationId}", with: consultationIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Delete consultation.
     
     - parameter consultationId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ConsultationsConsultationIdDelete(consultationId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1ConsultationsConsultationIdDeleteWithRequestBuilder(consultationId: consultationId).execute(apiResponseQueue) { result -> Void in
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
     Delete consultation.
     - DELETE /api/v1/consultations/{consultationId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter consultationId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1ConsultationsConsultationIdDeleteWithRequestBuilder(consultationId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/consultations/{consultationId}"
        let consultationIdPreEscape = "\(APIHelper.mapValueToPathItem(consultationId))"
        let consultationIdPostEscape = consultationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{consultationId}", with: consultationIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get consultation.
     
     - parameter consultationId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ConsultationViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ConsultationsConsultationIdGet(consultationId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<ConsultationViewModel, Error> {
        return Future<ConsultationViewModel, Error>.init { promise in
            apiV1ConsultationsConsultationIdGetWithRequestBuilder(consultationId: consultationId).execute(apiResponseQueue) { result -> Void in
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
     Get consultation.
     - GET /api/v1/consultations/{consultationId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter consultationId: (path)  
     - returns: RequestBuilder<ConsultationViewModel> 
     */
    open class func apiV1ConsultationsConsultationIdGetWithRequestBuilder(consultationId: UUID) -> RequestBuilder<ConsultationViewModel> {
        var path = "/api/v1/consultations/{consultationId}"
        let consultationIdPreEscape = "\(APIHelper.mapValueToPathItem(consultationId))"
        let consultationIdPostEscape = consultationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{consultationId}", with: consultationIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ConsultationViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Pay consultation.
     
     - parameter consultationId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<String, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ConsultationsConsultationIdPayPost(consultationId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<String, Error> {
        return Future<String, Error>.init { promise in
            apiV1ConsultationsConsultationIdPayPostWithRequestBuilder(consultationId: consultationId).execute(apiResponseQueue) { result -> Void in
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
     Pay consultation.
     - POST /api/v1/consultations/{consultationId}/pay
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter consultationId: (path)  
     - returns: RequestBuilder<String> 
     */
    open class func apiV1ConsultationsConsultationIdPayPostWithRequestBuilder(consultationId: UUID) -> RequestBuilder<String> {
        var path = "/api/v1/consultations/{consultationId}/pay"
        let consultationIdPreEscape = "\(APIHelper.mapValueToPathItem(consultationId))"
        let consultationIdPostEscape = consultationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{consultationId}", with: consultationIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Update consultation.
     
     - parameter consultationId: (path)  
     - parameter updateConsultationCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ConsultationsConsultationIdPut(consultationId: UUID, updateConsultationCommand: UpdateConsultationCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1ConsultationsConsultationIdPutWithRequestBuilder(consultationId: consultationId, updateConsultationCommand: updateConsultationCommand).execute(apiResponseQueue) { result -> Void in
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
     Update consultation.
     - PUT /api/v1/consultations/{consultationId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter consultationId: (path)  
     - parameter updateConsultationCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1ConsultationsConsultationIdPutWithRequestBuilder(consultationId: UUID, updateConsultationCommand: UpdateConsultationCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/consultations/{consultationId}"
        let consultationIdPreEscape = "\(APIHelper.mapValueToPathItem(consultationId))"
        let consultationIdPostEscape = consultationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{consultationId}", with: consultationIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateConsultationCommand)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Reject consultation.
     
     - parameter consultationId: (path)  
     - parameter rejectConsultationCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ConsultationsConsultationIdRejectPost(consultationId: UUID, rejectConsultationCommand: RejectConsultationCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1ConsultationsConsultationIdRejectPostWithRequestBuilder(consultationId: consultationId, rejectConsultationCommand: rejectConsultationCommand).execute(apiResponseQueue) { result -> Void in
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
     Reject consultation.
     - POST /api/v1/consultations/{consultationId}/reject
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter consultationId: (path)  
     - parameter rejectConsultationCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1ConsultationsConsultationIdRejectPostWithRequestBuilder(consultationId: UUID, rejectConsultationCommand: RejectConsultationCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/consultations/{consultationId}/reject"
        let consultationIdPreEscape = "\(APIHelper.mapValueToPathItem(consultationId))"
        let consultationIdPostEscape = consultationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{consultationId}", with: consultationIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: rejectConsultationCommand)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get all consultations.
     
     - parameter searchString: (query)  (optional)
     - parameter isOpen: (query)  (optional)
     - parameter isCompleted: (query)  (optional)
     - parameter status: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ConsultationsViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ConsultationsGet(searchString: String? = nil, isOpen: Bool? = nil, isCompleted: Bool? = nil, status: ConsultationStatus? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<ConsultationsViewModel, Error> {
        return Future<ConsultationsViewModel, Error>.init { promise in
            apiV1ConsultationsGetWithRequestBuilder(searchString: searchString, isOpen: isOpen, isCompleted: isCompleted, status: status, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
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
     Get all consultations.
     - GET /api/v1/consultations
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter searchString: (query)  (optional)
     - parameter isOpen: (query)  (optional)
     - parameter isCompleted: (query)  (optional)
     - parameter status: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<ConsultationsViewModel> 
     */
    open class func apiV1ConsultationsGetWithRequestBuilder(searchString: String? = nil, isOpen: Bool? = nil, isCompleted: Bool? = nil, status: ConsultationStatus? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<ConsultationsViewModel> {
        let path = "/api/v1/consultations"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "SearchString": searchString?.encodeToJSON(),
            "IsOpen": isOpen?.encodeToJSON(),
            "IsCompleted": isCompleted?.encodeToJSON(),
            "Status": status?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
            "Current": current?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ConsultationsViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Create consultation.
     
     - parameter requestId: (path)  
     - parameter createConsultationCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UUID, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ConsultationsRequestIdPost(requestId: UUID, createConsultationCommand: CreateConsultationCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<UUID, Error> {
        return Future<UUID, Error>.init { promise in
            apiV1ConsultationsRequestIdPostWithRequestBuilder(requestId: requestId, createConsultationCommand: createConsultationCommand).execute(apiResponseQueue) { result -> Void in
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
     Create consultation.
     - POST /api/v1/consultations/{requestId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter requestId: (path)  
     - parameter createConsultationCommand: (body)  (optional)
     - returns: RequestBuilder<UUID> 
     */
    open class func apiV1ConsultationsRequestIdPostWithRequestBuilder(requestId: UUID, createConsultationCommand: CreateConsultationCommand? = nil) -> RequestBuilder<UUID> {
        var path = "/api/v1/consultations/{requestId}"
        let requestIdPreEscape = "\(APIHelper.mapValueToPathItem(requestId))"
        let requestIdPostEscape = requestIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{requestId}", with: requestIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createConsultationCommand)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UUID>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
