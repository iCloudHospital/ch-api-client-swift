//
// BookingsAPI.swift
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

open class BookingsAPI {

    /**
     Get booking.
     
     - parameter bookingId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<BookingModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2BookingsBookingIdGet(bookingId: UUID, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<BookingModel, Error> {
        return Future<BookingModel, Error>.init { promise in
            apiV2BookingsBookingIdGetWithRequestBuilder(bookingId: bookingId, languageCode: languageCode).execute(apiResponseQueue) { result -> Void in
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
     Get booking.
     - GET /api/v2/bookings/{bookingId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter bookingId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: RequestBuilder<BookingModel> 
     */
    open class func apiV2BookingsBookingIdGetWithRequestBuilder(bookingId: UUID, languageCode: String? = nil) -> RequestBuilder<BookingModel> {
        var localVariablePath = "/api/v2/bookings/{bookingId}"
        let bookingIdPreEscape = "\(APIHelper.mapValueToPathItem(bookingId))"
        let bookingIdPostEscape = bookingIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{bookingId}", with: bookingIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BookingModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Pay booking.
     
     - parameter bookingId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<String, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2BookingsBookingIdPayPost(bookingId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<String, Error> {
        return Future<String, Error>.init { promise in
            apiV2BookingsBookingIdPayPostWithRequestBuilder(bookingId: bookingId).execute(apiResponseQueue) { result -> Void in
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
     Pay booking.
     - POST /api/v2/bookings/{bookingId}/pay
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter bookingId: (path)  
     - returns: RequestBuilder<String> 
     */
    open class func apiV2BookingsBookingIdPayPostWithRequestBuilder(bookingId: UUID) -> RequestBuilder<String> {
        var localVariablePath = "/api/v2/bookings/{bookingId}/pay"
        let bookingIdPreEscape = "\(APIHelper.mapValueToPathItem(bookingId))"
        let bookingIdPostEscape = bookingIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{bookingId}", with: bookingIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update booking.
     
     - parameter bookingId: (path)  
     - parameter updateBookingCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<BookingModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2BookingsBookingIdPut(bookingId: UUID, updateBookingCommand: UpdateBookingCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<BookingModel, Error> {
        return Future<BookingModel, Error>.init { promise in
            apiV2BookingsBookingIdPutWithRequestBuilder(bookingId: bookingId, updateBookingCommand: updateBookingCommand).execute(apiResponseQueue) { result -> Void in
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
     Update booking.
     - PUT /api/v2/bookings/{bookingId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter bookingId: (path)  
     - parameter updateBookingCommand: (body)  (optional)
     - returns: RequestBuilder<BookingModel> 
     */
    open class func apiV2BookingsBookingIdPutWithRequestBuilder(bookingId: UUID, updateBookingCommand: UpdateBookingCommand? = nil) -> RequestBuilder<BookingModel> {
        var localVariablePath = "/api/v2/bookings/{bookingId}"
        let bookingIdPreEscape = "\(APIHelper.mapValueToPathItem(bookingId))"
        let bookingIdPostEscape = bookingIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{bookingId}", with: bookingIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateBookingCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BookingModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all bookings.
     
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter dealId: (query)  (optional)
     - parameter dealName: (query)  (optional)
     - parameter isOpen: (query)  (optional)
     - parameter isCompleted: (query)  (optional)
     - parameter status: (query)  (optional)
     - parameter dealPackageId: (query)  (optional)
     - parameter sortRequestDate: (query)  (optional)
     - parameter sortConfirmedDateStart: (query)  (optional)
     - parameter isExternal: (query)  (optional)
     - parameter paymentEnabled: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<BookingsModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2BookingsGet(hospitalId: UUID? = nil, hospitalName: String? = nil, dealId: UUID? = nil, dealName: String? = nil, isOpen: Bool? = nil, isCompleted: Bool? = nil, status: BookingStatus? = nil, dealPackageId: UUID? = nil, sortRequestDate: SortingOrder? = nil, sortConfirmedDateStart: SortingOrder? = nil, isExternal: Bool? = nil, paymentEnabled: Bool? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<BookingsModel, Error> {
        return Future<BookingsModel, Error>.init { promise in
            apiV2BookingsGetWithRequestBuilder(hospitalId: hospitalId, hospitalName: hospitalName, dealId: dealId, dealName: dealName, isOpen: isOpen, isCompleted: isCompleted, status: status, dealPackageId: dealPackageId, sortRequestDate: sortRequestDate, sortConfirmedDateStart: sortConfirmedDateStart, isExternal: isExternal, paymentEnabled: paymentEnabled, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved).execute(apiResponseQueue) { result -> Void in
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
     Get all bookings.
     - GET /api/v2/bookings
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter dealId: (query)  (optional)
     - parameter dealName: (query)  (optional)
     - parameter isOpen: (query)  (optional)
     - parameter isCompleted: (query)  (optional)
     - parameter status: (query)  (optional)
     - parameter dealPackageId: (query)  (optional)
     - parameter sortRequestDate: (query)  (optional)
     - parameter sortConfirmedDateStart: (query)  (optional)
     - parameter isExternal: (query)  (optional)
     - parameter paymentEnabled: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<BookingsModel> 
     */
    open class func apiV2BookingsGetWithRequestBuilder(hospitalId: UUID? = nil, hospitalName: String? = nil, dealId: UUID? = nil, dealName: String? = nil, isOpen: Bool? = nil, isCompleted: Bool? = nil, status: BookingStatus? = nil, dealPackageId: UUID? = nil, sortRequestDate: SortingOrder? = nil, sortConfirmedDateStart: SortingOrder? = nil, isExternal: Bool? = nil, paymentEnabled: Bool? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<BookingsModel> {
        let localVariablePath = "/api/v2/bookings"
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "HospitalId": hospitalId?.encodeToJSON(),
            "HospitalName": hospitalName?.encodeToJSON(),
            "DealId": dealId?.encodeToJSON(),
            "DealName": dealName?.encodeToJSON(),
            "IsOpen": isOpen?.encodeToJSON(),
            "IsCompleted": isCompleted?.encodeToJSON(),
            "Status": status?.encodeToJSON(),
            "DealPackageId": dealPackageId?.encodeToJSON(),
            "SortRequestDate": sortRequestDate?.encodeToJSON(),
            "SortConfirmedDateStart": sortConfirmedDateStart?.encodeToJSON(),
            "IsExternal": isExternal?.encodeToJSON(),
            "PaymentEnabled": paymentEnabled?.encodeToJSON(),
            "LanguageCode": languageCode?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BookingsModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create booking.
     
     - parameter requestId: (path)  
     - parameter createBookingCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<BookingModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2BookingsRequestIdPost(requestId: UUID, createBookingCommand: CreateBookingCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<BookingModel, Error> {
        return Future<BookingModel, Error>.init { promise in
            apiV2BookingsRequestIdPostWithRequestBuilder(requestId: requestId, createBookingCommand: createBookingCommand).execute(apiResponseQueue) { result -> Void in
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
     Create booking.
     - POST /api/v2/bookings/{requestId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter requestId: (path)  
     - parameter createBookingCommand: (body)  (optional)
     - returns: RequestBuilder<BookingModel> 
     */
    open class func apiV2BookingsRequestIdPostWithRequestBuilder(requestId: UUID, createBookingCommand: CreateBookingCommand? = nil) -> RequestBuilder<BookingModel> {
        var localVariablePath = "/api/v2/bookings/{requestId}"
        let requestIdPreEscape = "\(APIHelper.mapValueToPathItem(requestId))"
        let requestIdPostEscape = requestIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{requestId}", with: requestIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createBookingCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BookingModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
