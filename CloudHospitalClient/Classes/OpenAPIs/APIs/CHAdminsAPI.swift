//
// CHAdminsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Combine



open class CHAdminsAPI {
    /**
     Delete cloud hospital admin user.
     
     - parameter chAdminId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ChadminsChAdminIdDelete(chAdminId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1ChadminsChAdminIdDeleteWithRequestBuilder(chAdminId: chAdminId).execute(apiResponseQueue) { result -> Void in
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
     Delete cloud hospital admin user.
     - DELETE /api/v1/chadmins/{chAdminId}
     - Sample request:        DELETE /api/v1/chadmins/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter chAdminId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1ChadminsChAdminIdDeleteWithRequestBuilder(chAdminId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/chadmins/{chAdminId}"
        let chAdminIdPreEscape = "\(APIHelper.mapValueToPathItem(chAdminId))"
        let chAdminIdPostEscape = chAdminIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{chAdminId}", with: chAdminIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get cloud hospital admin user by id.
     
     - parameter chAdminId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<CHAdminViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ChadminsChAdminIdGet(chAdminId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<CHAdminViewModel, Error> {
        return Future<CHAdminViewModel, Error>.init { promise in
            apiV1ChadminsChAdminIdGetWithRequestBuilder(chAdminId: chAdminId).execute(apiResponseQueue) { result -> Void in
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
     Get cloud hospital admin user by id.
     - GET /api/v1/chadmins/{chAdminId}
     - Sample request:        GET /api/v1/chadmins/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter chAdminId: (path)  
     - returns: RequestBuilder<CHAdminViewModel> 
     */
    open class func apiV1ChadminsChAdminIdGetWithRequestBuilder(chAdminId: UUID) -> RequestBuilder<CHAdminViewModel> {
        var path = "/api/v1/chadmins/{chAdminId}"
        let chAdminIdPreEscape = "\(APIHelper.mapValueToPathItem(chAdminId))"
        let chAdminIdPostEscape = chAdminIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{chAdminId}", with: chAdminIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<CHAdminViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update cloud hospital admin user.
     
     - parameter chAdminId: (path)  
     - parameter updateCHAdminCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ChadminsChAdminIdPut(chAdminId: UUID, updateCHAdminCommand: UpdateCHAdminCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1ChadminsChAdminIdPutWithRequestBuilder(chAdminId: chAdminId, updateCHAdminCommand: updateCHAdminCommand).execute(apiResponseQueue) { result -> Void in
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
     Update cloud hospital admin user.
     - PUT /api/v1/chadmins/{chAdminId}
     - Sample request:        PUT /api/v1/chadmins/1      {          \"email\": \"adminupdate@icloudhospital.com\",          \"firstName\": \"Cloud\",          \"lastName\": \"Hospital\",          \"photo\": \"https://cloudhospitalblob.blob.core.windows.net/assets/Cloud_Hospital_Logo_blue.png\",          \"photoThumbnail\": \"https://cloudhospitalblob.blob.core.windows.net/assets/Cloud_Hospital_Logo_blue.png\",          \"gender\": \"NotSpecified\",          \"dateOfBirth\": \"2020-02-22T09:09:19.082Z\",          \"locations\": [              {                  \"locationType\": \"LivesIn\",                  \"latitude\": 0,                  \"longitude\": 0,                  \"country\": \"string\",                  \"state\": \"string\",                  \"county\": \"string\",                  \"city\": \"string\",                  \"zipCode\": \"string\",                  \"address\": \"string\"              }          ]      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter chAdminId: (path)  
     - parameter updateCHAdminCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1ChadminsChAdminIdPutWithRequestBuilder(chAdminId: UUID, updateCHAdminCommand: UpdateCHAdminCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/chadmins/{chAdminId}"
        let chAdminIdPreEscape = "\(APIHelper.mapValueToPathItem(chAdminId))"
        let chAdminIdPostEscape = chAdminIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{chAdminId}", with: chAdminIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateCHAdminCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get cloud hospital admin users.
     
     - parameter id: (query)  (optional)
     - parameter fullname: (query)  (optional)
     - parameter email: (query)  (optional)
     - parameter gender: (query)  (optional)
     - parameter dateOfBirth: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<CHAdminsViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ChadminsGet(id: UUID? = nil, fullname: String? = nil, email: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<CHAdminsViewModel, Error> {
        return Future<CHAdminsViewModel, Error>.init { promise in
            apiV1ChadminsGetWithRequestBuilder(id: id, fullname: fullname, email: email, gender: gender, dateOfBirth: dateOfBirth, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
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
     Get cloud hospital admin users.
     - GET /api/v1/chadmins
     - Sample request:        GET /api/v1/chadmin      {          \"pageQueryFilter\": {              \"page\": 1,              \"limit\": 20,              \"lastRetrived\": \"2020-02-05T08:40\"          },          \"searchString\": \"admin\"      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter id: (query)  (optional)
     - parameter fullname: (query)  (optional)
     - parameter email: (query)  (optional)
     - parameter gender: (query)  (optional)
     - parameter dateOfBirth: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<CHAdminsViewModel> 
     */
    open class func apiV1ChadminsGetWithRequestBuilder(id: UUID? = nil, fullname: String? = nil, email: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<CHAdminsViewModel> {
        let path = "/api/v1/chadmins"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(), 
            "Fullname": fullname?.encodeToJSON(), 
            "Email": email?.encodeToJSON(), 
            "Gender": gender?.encodeToJSON(), 
            "DateOfBirth": dateOfBirth?.encodeToJSON(), 
            "Created": created?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON(), 
            "Current": current?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<CHAdminsViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create cloud hospital admin user.
     
     - parameter createCHAdminCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UUID, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1ChadminsPost(createCHAdminCommand: CreateCHAdminCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<UUID, Error> {
        return Future<UUID, Error>.init { promise in
            apiV1ChadminsPostWithRequestBuilder(createCHAdminCommand: createCHAdminCommand).execute(apiResponseQueue) { result -> Void in
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
     Create cloud hospital admin user.
     - POST /api/v1/chadmins
     - Sample request:        POST /api/v1/chadmins      {          \"firstName\": \"Cloud\",          \"lastName\": \"Hospital\",          \"photo\": \"https://cloudhospitalblob.blob.core.windows.net/assets/Cloud_Hospital_Logo_blue.png\",          \"photoThumbnail\": \"https://cloudhospitalblob.blob.core.windows.net/assets/Cloud_Hospital_Logo_blue.png\",          \"gender\": \"NotSpecified\",          \"dateOfBirth\": \"2020-02-22T09:09:19.082Z\",          \"locations\": [              {                  \"locationType\": \"LivesIn\",                  \"latitude\": 0,                  \"longitude\": 0,                  \"country\": \"string\",                  \"state\": \"string\",                  \"county\": \"string\",                  \"city\": \"string\",                  \"zipCode\": \"string\",                  \"address\": \"string\"              }          ]      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter createCHAdminCommand: (body)  (optional)
     - returns: RequestBuilder<UUID> 
     */
    open class func apiV1ChadminsPostWithRequestBuilder(createCHAdminCommand: CreateCHAdminCommand? = nil) -> RequestBuilder<UUID> {
        let path = "/api/v1/chadmins"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createCHAdminCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<UUID>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
