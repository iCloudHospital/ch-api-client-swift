//
// DoctorsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif

open class DoctorsAPI {
    /**
     Delete doctor.
     
     - parameter doctorId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1DoctorsDoctorIdDelete(doctorId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1DoctorsDoctorIdDeleteWithRequestBuilder(doctorId: doctorId).execute(apiResponseQueue) { result -> Void in
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
     Delete doctor.
     - DELETE /api/v1/doctors/{doctorId}
     - Sample request:        DELETE /api/v1/doctors/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter doctorId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1DoctorsDoctorIdDeleteWithRequestBuilder(doctorId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/doctors/{doctorId}"
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

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get hospital doctor.
     
     - parameter doctorId: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<DoctorViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1DoctorsDoctorIdGet(doctorId: UUID, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<DoctorViewModel, Error> {
        return Future<DoctorViewModel, Error>.init { promise in
            apiV1DoctorsDoctorIdGetWithRequestBuilder(doctorId: doctorId, languageCode: languageCode).execute(apiResponseQueue) { result -> Void in
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
     Get hospital doctor.
     - GET /api/v1/doctors/{doctorId}
     - Sample request:        GET /api/v1/doctors/1
     - parameter doctorId: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - returns: RequestBuilder<DoctorViewModel> 
     */
    open class func apiV1DoctorsDoctorIdGetWithRequestBuilder(doctorId: UUID, languageCode: String? = nil) -> RequestBuilder<DoctorViewModel> {
        var path = "/api/v1/doctors/{doctorId}"
        let doctorIdPreEscape = "\(APIHelper.mapValueToPathItem(doctorId))"
        let doctorIdPostEscape = doctorIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{doctorId}", with: doctorIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DoctorViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Update hospital doctor.
     
     - parameter doctorId: (path)  
     - parameter updateDoctorCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1DoctorsDoctorIdPut(doctorId: UUID, updateDoctorCommand: UpdateDoctorCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1DoctorsDoctorIdPutWithRequestBuilder(doctorId: doctorId, updateDoctorCommand: updateDoctorCommand).execute(apiResponseQueue) { result -> Void in
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
     Update hospital doctor.
     - PUT /api/v1/doctors/{doctorId}
     - Sample request:        PUT /api/v1/doctors/1      {          \"firstName\": \"string\",          \"lastName\": \"string\",          \"photo\": \"string\",          \"locations\": [            {              \"locationType\": \"LivesIn\",              \"latitude\": 0,              \"longitude\": 0,              \"country\": \"string\",              \"state\": \"string\",              \"county\": \"string\",              \"city\": \"string\",              \"zipCode\": \"string\",              \"address\": \"string\"            }          ]      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter doctorId: (path)  
     - parameter updateDoctorCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1DoctorsDoctorIdPutWithRequestBuilder(doctorId: UUID, updateDoctorCommand: UpdateDoctorCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/doctors/{doctorId}"
        let doctorIdPreEscape = "\(APIHelper.mapValueToPathItem(doctorId))"
        let doctorIdPostEscape = doctorIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{doctorId}", with: doctorIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateDoctorCommand)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get all hospital doctors.
     
     - parameter countryId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter consultationEnabled: (query)  (optional)
     - parameter exceptDoctorId: (query)  (optional)
     - parameter exceptDoctorIds: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter ids: (query)  (optional)
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
     - returns: AnyPublisher<DoctorsViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1DoctorsGet(countryId: UUID? = nil, hospitalId: UUID? = nil, marketingType: MarketingType? = nil, specialtyId: UUID? = nil, specialtyTypeId: UUID? = nil, consultationEnabled: Bool? = nil, exceptDoctorId: UUID? = nil, exceptDoctorIds: [UUID]? = nil, languageCode: String? = nil, ids: [UUID]? = nil, id: UUID? = nil, fullname: String? = nil, email: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<DoctorsViewModel, Error> {
        return Future<DoctorsViewModel, Error>.init { promise in
            apiV1DoctorsGetWithRequestBuilder(countryId: countryId, hospitalId: hospitalId, marketingType: marketingType, specialtyId: specialtyId, specialtyTypeId: specialtyTypeId, consultationEnabled: consultationEnabled, exceptDoctorId: exceptDoctorId, exceptDoctorIds: exceptDoctorIds, languageCode: languageCode, ids: ids, id: id, fullname: fullname, email: email, gender: gender, dateOfBirth: dateOfBirth, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
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
     Get all hospital doctors.
     - GET /api/v1/doctors
     - parameter countryId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter consultationEnabled: (query)  (optional)
     - parameter exceptDoctorId: (query)  (optional)
     - parameter exceptDoctorIds: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter ids: (query)  (optional)
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
     - returns: RequestBuilder<DoctorsViewModel> 
     */
    open class func apiV1DoctorsGetWithRequestBuilder(countryId: UUID? = nil, hospitalId: UUID? = nil, marketingType: MarketingType? = nil, specialtyId: UUID? = nil, specialtyTypeId: UUID? = nil, consultationEnabled: Bool? = nil, exceptDoctorId: UUID? = nil, exceptDoctorIds: [UUID]? = nil, languageCode: String? = nil, ids: [UUID]? = nil, id: UUID? = nil, fullname: String? = nil, email: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<DoctorsViewModel> {
        let path = "/api/v1/doctors"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "CountryId": countryId?.encodeToJSON(),
            "HospitalId": hospitalId?.encodeToJSON(),
            "MarketingType": marketingType?.encodeToJSON(),
            "SpecialtyId": specialtyId?.encodeToJSON(),
            "SpecialtyTypeId": specialtyTypeId?.encodeToJSON(),
            "ConsultationEnabled": consultationEnabled?.encodeToJSON(),
            "ExceptDoctorId": exceptDoctorId?.encodeToJSON(),
            "ExceptDoctorIds": exceptDoctorIds?.encodeToJSON(),
            "LanguageCode": languageCode?.encodeToJSON(),
            "Ids": ids?.encodeToJSON(),
            "Id": id?.encodeToJSON(),
            "Fullname": fullname?.encodeToJSON(),
            "Email": email?.encodeToJSON(),
            "Gender": gender?.encodeToJSON(),
            "DateOfBirth": dateOfBirth?.encodeToJSON(),
            "Created": created?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
            "Current": current?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DoctorsViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Create hospital doctor.
     
     - parameter createDoctorCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UUID, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1DoctorsPost(createDoctorCommand: CreateDoctorCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<UUID, Error> {
        return Future<UUID, Error>.init { promise in
            apiV1DoctorsPostWithRequestBuilder(createDoctorCommand: createDoctorCommand).execute(apiResponseQueue) { result -> Void in
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
     Create hospital doctor.
     - POST /api/v1/doctors
     - Sample request:        POST /api/v1/doctors      {          \"userName\": \"cloudDoctor\",          \"email\": \"doctor@icloudhospital.com\",          \"hospitalId\": 1,          \"firstName\": \"cloud\",          \"lastName\": \"doctor\",          \"photo\": \"string\",          \"photoThumbnail\": \"string\",          \"gender\": \"NotSpecified\",          \"dateOfBirth\": \"2020-02-22T17:57:32.048Z\",          \"locations\": [            {              \"locationType\": \"LivesIn\",              \"latitude\": 0,              \"longitude\": 0,              \"country\": \"string\",              \"state\": \"string\",              \"county\": \"string\",              \"city\": \"string\",              \"zipCode\": \"string\",              \"address\": \"string\"            }          ]      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter createDoctorCommand: (body)  (optional)
     - returns: RequestBuilder<UUID> 
     */
    open class func apiV1DoctorsPostWithRequestBuilder(createDoctorCommand: CreateDoctorCommand? = nil) -> RequestBuilder<UUID> {
        let path = "/api/v1/doctors"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createDoctorCommand)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UUID>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get hospital doctor by slug.
     
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<DoctorViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1DoctorsSlugsSlugGet(slug: String, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<DoctorViewModel, Error> {
        return Future<DoctorViewModel, Error>.init { promise in
            apiV1DoctorsSlugsSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode).execute(apiResponseQueue) { result -> Void in
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
     Get hospital doctor by slug.
     - GET /api/v1/doctors/slugs/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - returns: RequestBuilder<DoctorViewModel> 
     */
    open class func apiV1DoctorsSlugsSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil) -> RequestBuilder<DoctorViewModel> {
        var path = "/api/v1/doctors/slugs/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DoctorViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
