//
// HospitalReviewsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Combine



open class HospitalReviewsAPI {
    /**
     Delete review.
     
     - parameter hospitalId: (path)  
     - parameter patientId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdReviewsPatientIdDelete(hospitalId: UUID, patientId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1HospitalsHospitalIdReviewsPatientIdDeleteWithRequestBuilder(hospitalId: hospitalId, patientId: patientId).execute(apiResponseQueue) { result -> Void in
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
     Delete review.
     - DELETE /api/v1/hospitals/{hospitalId}/reviews/{patientId}
     - Sample request:        DELETE /api/v1/hospitals/1/reviews/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter patientId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdReviewsPatientIdDeleteWithRequestBuilder(hospitalId: UUID, patientId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/hospitals/{hospitalId}/reviews/{patientId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let patientIdPreEscape = "\(APIHelper.mapValueToPathItem(patientId))"
        let patientIdPostEscape = patientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{patientId}", with: patientIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get review.
     
     - parameter hospitalId: (path)  
     - parameter patientId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<HospitalReviewViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdReviewsPatientIdGet(hospitalId: UUID, patientId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<HospitalReviewViewModel, Error> {
        return Future<HospitalReviewViewModel, Error>.init { promise in
            apiV1HospitalsHospitalIdReviewsPatientIdGetWithRequestBuilder(hospitalId: hospitalId, patientId: patientId).execute(apiResponseQueue) { result -> Void in
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
     Get review.
     - GET /api/v1/hospitals/{hospitalId}/reviews/{patientId}
     - Sample request:        GET /api/v1/hospitals/1/reviews/1
     - parameter hospitalId: (path)  
     - parameter patientId: (path)  
     - returns: RequestBuilder<HospitalReviewViewModel> 
     */
    open class func apiV1HospitalsHospitalIdReviewsPatientIdGetWithRequestBuilder(hospitalId: UUID, patientId: UUID) -> RequestBuilder<HospitalReviewViewModel> {
        var path = "/api/v1/hospitals/{hospitalId}/reviews/{patientId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let patientIdPreEscape = "\(APIHelper.mapValueToPathItem(patientId))"
        let patientIdPostEscape = patientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{patientId}", with: patientIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<HospitalReviewViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update review.
     
     - parameter hospitalId: (path)  
     - parameter patientId: (path)  
     - parameter updateHospitalReviewCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdReviewsPatientIdPut(hospitalId: UUID, patientId: UUID, updateHospitalReviewCommand: UpdateHospitalReviewCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1HospitalsHospitalIdReviewsPatientIdPutWithRequestBuilder(hospitalId: hospitalId, patientId: patientId, updateHospitalReviewCommand: updateHospitalReviewCommand).execute(apiResponseQueue) { result -> Void in
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
     Update review.
     - PUT /api/v1/hospitals/{hospitalId}/reviews/{patientId}
     - Sample request:
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter patientId: (path)  
     - parameter updateHospitalReviewCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdReviewsPatientIdPutWithRequestBuilder(hospitalId: UUID, patientId: UUID, updateHospitalReviewCommand: UpdateHospitalReviewCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/hospitals/{hospitalId}/reviews/{patientId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let patientIdPreEscape = "\(APIHelper.mapValueToPathItem(patientId))"
        let patientIdPostEscape = patientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{patientId}", with: patientIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateHospitalReviewCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create review.
     
     - parameter hospitalId: (path)  
     - parameter patientId: (path)  
     - parameter createHospitalReviewCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<HospitalReview, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdReviewsPost(hospitalId: UUID, patientId: UUID, createHospitalReviewCommand: CreateHospitalReviewCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<HospitalReview, Error> {
        return Future<HospitalReview, Error>.init { promise in
            apiV1HospitalsHospitalIdReviewsPostWithRequestBuilder(hospitalId: hospitalId, patientId: patientId, createHospitalReviewCommand: createHospitalReviewCommand).execute(apiResponseQueue) { result -> Void in
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
     Create review.
     - POST /api/v1/hospitals/{hospitalId}/reviews
     - Sample request:        POST /api/v1/hospitals/1/reviews/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter patientId: (path)  
     - parameter createHospitalReviewCommand: (body)  (optional)
     - returns: RequestBuilder<HospitalReview> 
     */
    open class func apiV1HospitalsHospitalIdReviewsPostWithRequestBuilder(hospitalId: UUID, patientId: UUID, createHospitalReviewCommand: CreateHospitalReviewCommand? = nil) -> RequestBuilder<HospitalReview> {
        var path = "/api/v1/hospitals/{hospitalId}/reviews"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let patientIdPreEscape = "\(APIHelper.mapValueToPathItem(patientId))"
        let patientIdPostEscape = patientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{patientId}", with: patientIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createHospitalReviewCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<HospitalReview>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get all reviews.
     
     - parameter patientId: (query)  (optional)
     - parameter patientName: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter body: (query)  (optional)
     - parameter recommended: (query)  (optional)
     - parameter reviewCategory: (query)  (optional)
     - parameter rate: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<HospitalReviewsViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsReviewsGet(patientId: UUID? = nil, patientName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, body: String? = nil, recommended: Bool? = nil, reviewCategory: ReviewCategory? = nil, rate: Int? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<HospitalReviewsViewModel, Error> {
        return Future<HospitalReviewsViewModel, Error>.init { promise in
            apiV1HospitalsReviewsGetWithRequestBuilder(patientId: patientId, patientName: patientName, hospitalId: hospitalId, hospitalName: hospitalName, body: body, recommended: recommended, reviewCategory: reviewCategory, rate: rate, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
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
     Get all reviews.
     - GET /api/v1/hospitals/reviews
     - Sample request:        GET /api/v1/hospitals/reviews
     - parameter patientId: (query)  (optional)
     - parameter patientName: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter body: (query)  (optional)
     - parameter recommended: (query)  (optional)
     - parameter reviewCategory: (query)  (optional)
     - parameter rate: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<HospitalReviewsViewModel> 
     */
    open class func apiV1HospitalsReviewsGetWithRequestBuilder(patientId: UUID? = nil, patientName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, body: String? = nil, recommended: Bool? = nil, reviewCategory: ReviewCategory? = nil, rate: Int? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<HospitalReviewsViewModel> {
        let path = "/api/v1/hospitals/reviews"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "PatientId": patientId?.encodeToJSON(), 
            "PatientName": patientName?.encodeToJSON(), 
            "HospitalId": hospitalId?.encodeToJSON(), 
            "HospitalName": hospitalName?.encodeToJSON(), 
            "Body": body?.encodeToJSON(), 
            "Recommended": recommended?.encodeToJSON(), 
            "ReviewCategory": reviewCategory?.encodeToJSON(), 
            "Rate": rate?.encodeToJSON(), 
            "Created": created?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON(), 
            "Current": current?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<HospitalReviewsViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
