//
// BookingsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BookingsAPI {

    /**
     Get booking.
     
     - parameter bookingId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: BookingModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2BookingsBookingIdGet(bookingId: UUID, languageCode: String? = nil) async throws -> BookingModel {
        let requestBuilder = apiV2BookingsBookingIdGetWithRequestBuilder(bookingId: bookingId, languageCode: languageCode)
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

        let localVariableRequestBuilder: RequestBuilder<BookingModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Pay booking.
     
     - parameter bookingId: (path)  
     - returns: String
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2BookingsBookingIdPayPost(bookingId: UUID) async throws -> String {
        let requestBuilder = apiV2BookingsBookingIdPayPostWithRequestBuilder(bookingId: bookingId)
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
     Update booking.
     
     - parameter bookingId: (path)  
     - parameter updateBookingCommand: (body)  (optional)
     - returns: BookingModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2BookingsBookingIdPut(bookingId: UUID, updateBookingCommand: UpdateBookingCommand? = nil) async throws -> BookingModel {
        let requestBuilder = apiV2BookingsBookingIdPutWithRequestBuilder(bookingId: bookingId, updateBookingCommand: updateBookingCommand)
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
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateBookingCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BookingModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
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
     - returns: BookingsModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2BookingsGet(hospitalId: UUID? = nil, hospitalName: String? = nil, dealId: UUID? = nil, dealName: String? = nil, isOpen: Bool? = nil, isCompleted: Bool? = nil, status: BookingStatus? = nil, dealPackageId: UUID? = nil, sortRequestDate: SortingOrder? = nil, sortConfirmedDateStart: SortingOrder? = nil, isExternal: Bool? = nil, paymentEnabled: Bool? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) async throws -> BookingsModel {
        let requestBuilder = apiV2BookingsGetWithRequestBuilder(hospitalId: hospitalId, hospitalName: hospitalName, dealId: dealId, dealName: dealName, isOpen: isOpen, isCompleted: isCompleted, status: status, dealPackageId: dealPackageId, sortRequestDate: sortRequestDate, sortConfirmedDateStart: sortConfirmedDateStart, isExternal: isExternal, paymentEnabled: paymentEnabled, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved)
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
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "HospitalId": (wrappedValue: hospitalId?.encodeToJSON(), isExplode: true),
            "HospitalName": (wrappedValue: hospitalName?.encodeToJSON(), isExplode: true),
            "DealId": (wrappedValue: dealId?.encodeToJSON(), isExplode: true),
            "DealName": (wrappedValue: dealName?.encodeToJSON(), isExplode: true),
            "IsOpen": (wrappedValue: isOpen?.encodeToJSON(), isExplode: true),
            "IsCompleted": (wrappedValue: isCompleted?.encodeToJSON(), isExplode: true),
            "Status": (wrappedValue: status?.encodeToJSON(), isExplode: true),
            "DealPackageId": (wrappedValue: dealPackageId?.encodeToJSON(), isExplode: true),
            "SortRequestDate": (wrappedValue: sortRequestDate?.encodeToJSON(), isExplode: true),
            "SortConfirmedDateStart": (wrappedValue: sortConfirmedDateStart?.encodeToJSON(), isExplode: true),
            "IsExternal": (wrappedValue: isExternal?.encodeToJSON(), isExplode: true),
            "PaymentEnabled": (wrappedValue: paymentEnabled?.encodeToJSON(), isExplode: true),
            "LanguageCode": (wrappedValue: languageCode?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "lastRetrieved": (wrappedValue: lastRetrieved?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BookingsModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create booking.
     
     - parameter requestId: (path)  
     - parameter createBookingCommand: (body)  (optional)
     - returns: BookingModel
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2BookingsRequestIdPost(requestId: UUID, createBookingCommand: CreateBookingCommand? = nil) async throws -> BookingModel {
        let requestBuilder = apiV2BookingsRequestIdPostWithRequestBuilder(requestId: requestId, createBookingCommand: createBookingCommand)
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
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createBookingCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BookingModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
