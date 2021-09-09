//
// GroupChannelsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class GroupChannelsAPI {
    /**

     - parameter channelUrl: (path)  
     - parameter inviteSendBirdGroupChannelCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SendBirdGroupChannelViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1GroupchannelsChannelUrlInvitePost(channelUrl: String, inviteSendBirdGroupChannelCommand: InviteSendBirdGroupChannelCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<SendBirdGroupChannelViewModel, Error> {
        return Future<SendBirdGroupChannelViewModel, Error>.init { promise in
            apiV1GroupchannelsChannelUrlInvitePostWithRequestBuilder(channelUrl: channelUrl, inviteSendBirdGroupChannelCommand: inviteSendBirdGroupChannelCommand).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/v1/groupchannels/{channelUrl}/invite
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter channelUrl: (path)  
     - parameter inviteSendBirdGroupChannelCommand: (body)  (optional)
     - returns: RequestBuilder<SendBirdGroupChannelViewModel> 
     */
    open class func apiV1GroupchannelsChannelUrlInvitePostWithRequestBuilder(channelUrl: String, inviteSendBirdGroupChannelCommand: InviteSendBirdGroupChannelCommand? = nil) -> RequestBuilder<SendBirdGroupChannelViewModel> {
        var path = "/api/v1/groupchannels/{channelUrl}/invite"
        let channelUrlPreEscape = "\(APIHelper.mapValueToPathItem(channelUrl))"
        let channelUrlPostEscape = channelUrlPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{channelUrl}", with: channelUrlPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inviteSendBirdGroupChannelCommand)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SendBirdGroupChannelViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter dealId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SendBirdGroupChannelViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1GroupchannelsDealDealIdGet(dealId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<SendBirdGroupChannelViewModel, Error> {
        return Future<SendBirdGroupChannelViewModel, Error>.init { promise in
            apiV1GroupchannelsDealDealIdGetWithRequestBuilder(dealId: dealId).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/v1/groupchannels/deal/{dealId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter dealId: (path)  
     - returns: RequestBuilder<SendBirdGroupChannelViewModel> 
     */
    open class func apiV1GroupchannelsDealDealIdGetWithRequestBuilder(dealId: UUID) -> RequestBuilder<SendBirdGroupChannelViewModel> {
        var path = "/api/v1/groupchannels/deal/{dealId}"
        let dealIdPreEscape = "\(APIHelper.mapValueToPathItem(dealId))"
        let dealIdPostEscape = dealIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{dealId}", with: dealIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SendBirdGroupChannelViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter dealId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1GroupchannelsDealDealIdPost(dealId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1GroupchannelsDealDealIdPostWithRequestBuilder(dealId: dealId).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/v1/groupchannels/deal/{dealId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter dealId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func apiV1GroupchannelsDealDealIdPostWithRequestBuilder(dealId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/groupchannels/deal/{dealId}"
        let dealIdPreEscape = "\(APIHelper.mapValueToPathItem(dealId))"
        let dealIdPostEscape = dealIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{dealId}", with: dealIdPostEscape, options: .literal, range: nil)
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

     - parameter doctorId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SendBirdGroupChannelViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1GroupchannelsDoctorDoctorIdGet(doctorId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<SendBirdGroupChannelViewModel, Error> {
        return Future<SendBirdGroupChannelViewModel, Error>.init { promise in
            apiV1GroupchannelsDoctorDoctorIdGetWithRequestBuilder(doctorId: doctorId).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/v1/groupchannels/doctor/{doctorId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter doctorId: (path)  
     - returns: RequestBuilder<SendBirdGroupChannelViewModel> 
     */
    open class func apiV1GroupchannelsDoctorDoctorIdGetWithRequestBuilder(doctorId: UUID) -> RequestBuilder<SendBirdGroupChannelViewModel> {
        var path = "/api/v1/groupchannels/doctor/{doctorId}"
        let doctorIdPreEscape = "\(APIHelper.mapValueToPathItem(doctorId))"
        let doctorIdPostEscape = doctorIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{doctorId}", with: doctorIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SendBirdGroupChannelViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter doctorId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1GroupchannelsDoctorDoctorIdPost(doctorId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1GroupchannelsDoctorDoctorIdPostWithRequestBuilder(doctorId: doctorId).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/v1/groupchannels/doctor/{doctorId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter doctorId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func apiV1GroupchannelsDoctorDoctorIdPostWithRequestBuilder(doctorId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/groupchannels/doctor/{doctorId}"
        let doctorIdPreEscape = "\(APIHelper.mapValueToPathItem(doctorId))"
        let doctorIdPostEscape = doctorIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{doctorId}", with: doctorIdPostEscape, options: .literal, range: nil)
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

     - parameter hospitalId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SendBirdGroupChannelViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1GroupchannelsHospitalHospitalIdGet(hospitalId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<SendBirdGroupChannelViewModel, Error> {
        return Future<SendBirdGroupChannelViewModel, Error>.init { promise in
            apiV1GroupchannelsHospitalHospitalIdGetWithRequestBuilder(hospitalId: hospitalId).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/v1/groupchannels/hospital/{hospitalId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - returns: RequestBuilder<SendBirdGroupChannelViewModel> 
     */
    open class func apiV1GroupchannelsHospitalHospitalIdGetWithRequestBuilder(hospitalId: UUID) -> RequestBuilder<SendBirdGroupChannelViewModel> {
        var path = "/api/v1/groupchannels/hospital/{hospitalId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SendBirdGroupChannelViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**

     - parameter hospitalId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1GroupchannelsHospitalHospitalIdPost(hospitalId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1GroupchannelsHospitalHospitalIdPostWithRequestBuilder(hospitalId: hospitalId).execute(apiResponseQueue) { result -> Void in
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
     - POST /api/v1/groupchannels/hospital/{hospitalId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func apiV1GroupchannelsHospitalHospitalIdPostWithRequestBuilder(hospitalId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/groupchannels/hospital/{hospitalId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
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

     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1GroupchannelsIdGet(id: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1GroupchannelsIdGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/v1/groupchannels/{id}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter id: (path)  
     - returns: RequestBuilder<Bool> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func apiV1GroupchannelsIdGetWithRequestBuilder(id: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/groupchannels/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
