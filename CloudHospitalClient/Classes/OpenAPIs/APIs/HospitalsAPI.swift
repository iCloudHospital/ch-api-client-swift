//
// HospitalsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Combine



open class HospitalsAPI {
    /**

     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter serviceId: (query)  (optional)
     - parameter exceptHospitalId: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<HospitalsViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsCurrentGet(id: UUID? = nil, name: String? = nil, description: String? = nil, countryId: UUID? = nil, created: Date? = nil, marketingType: MarketingType? = nil, specialtyTypeId: UUID? = nil, specialtyId: UUID? = nil, serviceId: UUID? = nil, exceptHospitalId: UUID? = nil, showHidden: Bool? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<HospitalsViewModel, Error> {
        return Future<HospitalsViewModel, Error>.init { promise in
            apiV1HospitalsCurrentGetWithRequestBuilder(id: id, name: name, description: description, countryId: countryId, created: created, marketingType: marketingType, specialtyTypeId: specialtyTypeId, specialtyId: specialtyId, serviceId: serviceId, exceptHospitalId: exceptHospitalId, showHidden: showHidden, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/v1/hospitals/current
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter serviceId: (query)  (optional)
     - parameter exceptHospitalId: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<HospitalsViewModel> 
     */
    open class func apiV1HospitalsCurrentGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, description: String? = nil, countryId: UUID? = nil, created: Date? = nil, marketingType: MarketingType? = nil, specialtyTypeId: UUID? = nil, specialtyId: UUID? = nil, serviceId: UUID? = nil, exceptHospitalId: UUID? = nil, showHidden: Bool? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<HospitalsViewModel> {
        let path = "/api/v1/hospitals/current"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(), 
            "Name": name?.encodeToJSON(), 
            "Description": description?.encodeToJSON(), 
            "CountryId": countryId?.encodeToJSON(), 
            "Created": created?.encodeToJSON(), 
            "MarketingType": marketingType?.encodeToJSON(), 
            "SpecialtyTypeId": specialtyTypeId?.encodeToJSON(), 
            "SpecialtyId": specialtyId?.encodeToJSON(), 
            "ServiceId": serviceId?.encodeToJSON(), 
            "ExceptHospitalId": exceptHospitalId?.encodeToJSON(), 
            "ShowHidden": showHidden?.encodeToJSON(), 
            "LanguageCode": languageCode?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON(), 
            "Current": current?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<HospitalsViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all hospitals.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter serviceId: (query)  (optional)
     - parameter exceptHospitalId: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<HospitalsViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsGet(id: UUID? = nil, name: String? = nil, description: String? = nil, countryId: UUID? = nil, created: Date? = nil, marketingType: MarketingType? = nil, specialtyTypeId: UUID? = nil, specialtyId: UUID? = nil, serviceId: UUID? = nil, exceptHospitalId: UUID? = nil, showHidden: Bool? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<HospitalsViewModel, Error> {
        return Future<HospitalsViewModel, Error>.init { promise in
            apiV1HospitalsGetWithRequestBuilder(id: id, name: name, description: description, countryId: countryId, created: created, marketingType: marketingType, specialtyTypeId: specialtyTypeId, specialtyId: specialtyId, serviceId: serviceId, exceptHospitalId: exceptHospitalId, showHidden: showHidden, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
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
     Get all hospitals.
     - GET /api/v1/hospitals
     - Sample request:        GET /api/v1/hospitals      {          \"pageQueryFilter\": {              \"page\": 1,              \"limit\": 20,              \"lastRetrived\": \"2020-02-05T08:40\"          },          \"searchString\": \"Samsung\"      }
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter serviceId: (query)  (optional)
     - parameter exceptHospitalId: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<HospitalsViewModel> 
     */
    open class func apiV1HospitalsGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, description: String? = nil, countryId: UUID? = nil, created: Date? = nil, marketingType: MarketingType? = nil, specialtyTypeId: UUID? = nil, specialtyId: UUID? = nil, serviceId: UUID? = nil, exceptHospitalId: UUID? = nil, showHidden: Bool? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<HospitalsViewModel> {
        let path = "/api/v1/hospitals"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(), 
            "Name": name?.encodeToJSON(), 
            "Description": description?.encodeToJSON(), 
            "CountryId": countryId?.encodeToJSON(), 
            "Created": created?.encodeToJSON(), 
            "MarketingType": marketingType?.encodeToJSON(), 
            "SpecialtyTypeId": specialtyTypeId?.encodeToJSON(), 
            "SpecialtyId": specialtyId?.encodeToJSON(), 
            "ServiceId": serviceId?.encodeToJSON(), 
            "ExceptHospitalId": exceptHospitalId?.encodeToJSON(), 
            "ShowHidden": showHidden?.encodeToJSON(), 
            "LanguageCode": languageCode?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON(), 
            "Current": current?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<HospitalsViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete hospital.
     
     - parameter hospitalId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdDelete(hospitalId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1HospitalsHospitalIdDeleteWithRequestBuilder(hospitalId: hospitalId).execute(apiResponseQueue) { result -> Void in
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
     Delete hospital.
     - DELETE /api/v1/hospitals/{hospitalId}
     - Sample request:        DELETE /api/v1/hospitals/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdDeleteWithRequestBuilder(hospitalId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/hospitals/{hospitalId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get hospita.
     
     - parameter hospitalId: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<HospitalViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdGet(hospitalId: UUID, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<HospitalViewModel, Error> {
        return Future<HospitalViewModel, Error>.init { promise in
            apiV1HospitalsHospitalIdGetWithRequestBuilder(hospitalId: hospitalId, languageCode: languageCode).execute(apiResponseQueue) { result -> Void in
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
     Get hospita.
     - GET /api/v1/hospitals/{hospitalId}
     - Sample request:        GET /api/v1/hospitals/1
     - parameter hospitalId: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - returns: RequestBuilder<HospitalViewModel> 
     */
    open class func apiV1HospitalsHospitalIdGetWithRequestBuilder(hospitalId: UUID, languageCode: String? = nil) -> RequestBuilder<HospitalViewModel> {
        var path = "/api/v1/hospitals/{hospitalId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<HospitalViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update hospital.
     
     - parameter hospitalId: (path)  
     - parameter updateHospitalCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdPut(hospitalId: UUID, updateHospitalCommand: UpdateHospitalCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1HospitalsHospitalIdPutWithRequestBuilder(hospitalId: hospitalId, updateHospitalCommand: updateHospitalCommand).execute(apiResponseQueue) { result -> Void in
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
     Update hospital.
     - PUT /api/v1/hospitals/{hospitalId}
     - Sameple request:        PUT /api/v1/hospitals      {          \"overview\": \"Overview of Samsung Medical Center\",          \"bedsCount\": 2436,          \"operationsPerYear\": 44,          \"foundationYear\": 2012,          \"departmentsCount\": 200,          \"medicalStaffCount\": 1200,      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter updateHospitalCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdPutWithRequestBuilder(hospitalId: UUID, updateHospitalCommand: UpdateHospitalCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/hospitals/{hospitalId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateHospitalCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a hospital.
     
     - parameter createHospitalCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UUID, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsPost(createHospitalCommand: CreateHospitalCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<UUID, Error> {
        return Future<UUID, Error>.init { promise in
            apiV1HospitalsPostWithRequestBuilder(createHospitalCommand: createHospitalCommand).execute(apiResponseQueue) { result -> Void in
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
     Create a hospital.
     - POST /api/v1/hospitals
     - Sample request:        POST /api/v1/hospitals      {          \"name\": \"Samsung Medical Center\",          \"description\": \"Comprehensive Cancer Center in Seoul, South Korea is nationally ranked in 1 adult specialty.\",          \"logo\": \"http://www.samsunghospital.com/home/main/index.do\",          \"overview\": \"Overview of Samsung Medical Center\",          \"bedsCount\": 1436,          \"operationsPerYear\": 34,          \"foundationYear\": 2012,          \"departmentsCount\": 20,          \"medicalStaffCount\": 600,          \"countryId\": 1,          \"awards\": [            {              \"name\": \"Award1\",              \"image\": \"string\",              \"date\": \"2020-02-05T09:29:19.240Z\"            },            {              \"name\": \"Award2\",              \"image\": \"string\",              \"date\": \"2020-02-05T09:29:19.240Z\"            }          ],          \"medias\": [            {              \"mediaType\": \"Photo\",              \"url\": \"https://cloudhospitalblob.blob.core.windows.net/imagecontainer/SamsungMedicalCenter.jpg\",              \"thumbnailUrl\": \"https://cloudhospitalblob.blob.core.windows.net/thumbnailcontainer/SamsungMedicalCenter.jpg\",              \"description\": \"string\",              \"order\": 0            },            {              \"mediaType\": \"Video\",              \"url\": \"string\",              \"description\": \"string\",              \"order\": 1            }          ],          \"location\": {            \"latitude\": 37.4881568,            \"longitude\": 127.0855952,            \"country\": \"Korea\",            \"state\": \"string\",            \"county\": \"Gangnamgu\",            \"city\": \"Seoul\",            \"zipCode\": \"12345\",            \"address\": \"Il-won ro 81\"          }      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter createHospitalCommand: (body)  (optional)
     - returns: RequestBuilder<UUID> 
     */
    open class func apiV1HospitalsPostWithRequestBuilder(createHospitalCommand: CreateHospitalCommand? = nil) -> RequestBuilder<UUID> {
        let path = "/api/v1/hospitals"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createHospitalCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<UUID>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get hospital by slug.
     
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<HospitalViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsSlugsSlugGet(slug: String, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<HospitalViewModel, Error> {
        return Future<HospitalViewModel, Error>.init { promise in
            apiV1HospitalsSlugsSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode).execute(apiResponseQueue) { result -> Void in
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
     Get hospital by slug.
     - GET /api/v1/hospitals/slugs/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - returns: RequestBuilder<HospitalViewModel> 
     */
    open class func apiV1HospitalsSlugsSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil) -> RequestBuilder<HospitalViewModel> {
        var path = "/api/v1/hospitals/slugs/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<HospitalViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
