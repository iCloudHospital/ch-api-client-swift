//
// ServicesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Combine



open class ServicesAPI {
    /**
     Create service.
     
     - parameter hospitalId: (path)  
     - parameter specialtyId: (path)  
     - parameter createServiceCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UUID, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesPost(hospitalId: UUID, specialtyId: UUID, createServiceCommand: CreateServiceCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<UUID, Error> {
        return Future<UUID, Error>.init { promise in
            apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesPostWithRequestBuilder(hospitalId: hospitalId, specialtyId: specialtyId, createServiceCommand: createServiceCommand).execute(apiResponseQueue) { result -> Void in
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
     Create service.
     - POST /api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/services
     - Sample request:        POST /api/v1/hospitals/1/specialties/1/services      {          \"name\": \"Heart check up\",          \"description\": \"Asan Hospital (Asan Medical Center) is the largest multidisciplinary medical center in South Korea, which can serve 2,700 patients at once.The key specialties in the hospital are organ transplant, oncology, cardiology, and cardiac surgery.Almost half of all heart transplants in South Korea are carried out (45%) at Asan.The success of organ transplants ranges from 90%. Every day, 11,800 outpatients and 2,550 inpatients are treated in Asan Hospital. Medical tourists from the USA, China, the UAE, Russia, Kazakhstan, and Mongolia choose Asan Hospital.\",          \"minPrice\": 2235,          \"maxPrice\": 2566,          \"priceReuqest\": false,          \"procedure\": \"Treatment\"      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter specialtyId: (path)  
     - parameter createServiceCommand: (body)  (optional)
     - returns: RequestBuilder<UUID> 
     */
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesPostWithRequestBuilder(hospitalId: UUID, specialtyId: UUID, createServiceCommand: CreateServiceCommand? = nil) -> RequestBuilder<UUID> {
        var path = "/api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/services"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let specialtyIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyId))"
        let specialtyIdPostEscape = specialtyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{specialtyId}", with: specialtyIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createServiceCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<UUID>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete service.
     
     - parameter hospitalId: (path)  
     - parameter specialtyId: (path)  
     - parameter serviceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdDelete(hospitalId: UUID, specialtyId: UUID, serviceId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdDeleteWithRequestBuilder(hospitalId: hospitalId, specialtyId: specialtyId, serviceId: serviceId).execute(apiResponseQueue) { result -> Void in
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
     Delete service.
     - DELETE /api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/services/{serviceId}
     - Sample request:        DELETE /api/v1/hospitals/1/specialties/1/services/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter specialtyId: (path)  
     - parameter serviceId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdDeleteWithRequestBuilder(hospitalId: UUID, specialtyId: UUID, serviceId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/services/{serviceId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let specialtyIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyId))"
        let specialtyIdPostEscape = specialtyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{specialtyId}", with: specialtyIdPostEscape, options: .literal, range: nil)
        let serviceIdPreEscape = "\(APIHelper.mapValueToPathItem(serviceId))"
        let serviceIdPostEscape = serviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{serviceId}", with: serviceIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get service.
     
     - parameter hospitalId: (path)  
     - parameter specialtyId: (path)  
     - parameter serviceId: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ServiceViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdGet(hospitalId: UUID, specialtyId: UUID, serviceId: UUID, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<ServiceViewModel, Error> {
        return Future<ServiceViewModel, Error>.init { promise in
            apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdGetWithRequestBuilder(hospitalId: hospitalId, specialtyId: specialtyId, serviceId: serviceId, languageCode: languageCode).execute(apiResponseQueue) { result -> Void in
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
     Get service.
     - GET /api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/services/{serviceId}
     - Sample request:        GET /api/v1/hospitals/1/specialties/1/services/1
     - parameter hospitalId: (path)  
     - parameter specialtyId: (path)  
     - parameter serviceId: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - returns: RequestBuilder<ServiceViewModel> 
     */
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdGetWithRequestBuilder(hospitalId: UUID, specialtyId: UUID, serviceId: UUID, languageCode: String? = nil) -> RequestBuilder<ServiceViewModel> {
        var path = "/api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/services/{serviceId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let specialtyIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyId))"
        let specialtyIdPostEscape = specialtyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{specialtyId}", with: specialtyIdPostEscape, options: .literal, range: nil)
        let serviceIdPreEscape = "\(APIHelper.mapValueToPathItem(serviceId))"
        let serviceIdPostEscape = serviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{serviceId}", with: serviceIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<ServiceViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update service.
     
     - parameter hospitalId: (path)  
     - parameter specialtyId: (path)  
     - parameter serviceId: (path)  
     - parameter updateServiceCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdPut(hospitalId: UUID, specialtyId: UUID, serviceId: UUID, updateServiceCommand: UpdateServiceCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdPutWithRequestBuilder(hospitalId: hospitalId, specialtyId: specialtyId, serviceId: serviceId, updateServiceCommand: updateServiceCommand).execute(apiResponseQueue) { result -> Void in
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
     Update service.
     - PUT /api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/services/{serviceId}
     - Sample request:        PUT /api/v1/hospitals/1/specialties/1/services/1      {          \"name\": \"Extended analysis of blood\",          \"description\": \"Extended analysis of blood description.\",          \"minPrice\": 1000,          \"maxPrice\": 2600,          \"priceReuqest\": false      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter specialtyId: (path)  
     - parameter serviceId: (path)  
     - parameter updateServiceCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdPutWithRequestBuilder(hospitalId: UUID, specialtyId: UUID, serviceId: UUID, updateServiceCommand: UpdateServiceCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/services/{serviceId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let specialtyIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyId))"
        let specialtyIdPostEscape = specialtyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{specialtyId}", with: specialtyIdPostEscape, options: .literal, range: nil)
        let serviceIdPreEscape = "\(APIHelper.mapValueToPathItem(serviceId))"
        let serviceIdPostEscape = serviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{serviceId}", with: serviceIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateServiceCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update service sequence.
     
     - parameter hospitalId: (path)  
     - parameter specialtyId: (path)  
     - parameter updateServiceSequenceCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesquencePut(hospitalId: UUID, specialtyId: UUID, updateServiceSequenceCommand: UpdateServiceSequenceCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesquencePutWithRequestBuilder(hospitalId: hospitalId, specialtyId: specialtyId, updateServiceSequenceCommand: updateServiceSequenceCommand).execute(apiResponseQueue) { result -> Void in
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
     Update service sequence.
     - PUT /api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/servicesquence
     - Smaple request:        PUT /api/v1/hospitals/1/specialties/1/servicesquence      {          \"serviceSequence\": [1, 3, 5]      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter specialtyId: (path)  
     - parameter updateServiceSequenceCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesquencePutWithRequestBuilder(hospitalId: UUID, specialtyId: UUID, updateServiceSequenceCommand: UpdateServiceSequenceCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/servicesquence"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let specialtyIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyId))"
        let specialtyIdPostEscape = specialtyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{specialtyId}", with: specialtyIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateServiceSequenceCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get all services.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter hospitalSlug: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter specialtyTypeName: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter procedure: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ServicesViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsServicesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, specialtyId: UUID? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, marketingType: MarketingType? = nil, procedure: Procedure? = nil, created: Date? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<ServicesViewModel, Error> {
        return Future<ServicesViewModel, Error>.init { promise in
            apiV1HospitalsServicesGetWithRequestBuilder(id: id, name: name, description: description, hospitalId: hospitalId, hospitalName: hospitalName, hospitalSlug: hospitalSlug, specialtyId: specialtyId, specialtyTypeId: specialtyTypeId, specialtyTypeName: specialtyTypeName, marketingType: marketingType, procedure: procedure, created: created, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
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
     Get all services.
     - GET /api/v1/hospitals/services
     - Sample request:        GET /api/v1/hospitals/services
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter hospitalSlug: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter specialtyTypeName: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter procedure: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<ServicesViewModel> 
     */
    open class func apiV1HospitalsServicesGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, description: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, specialtyId: UUID? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, marketingType: MarketingType? = nil, procedure: Procedure? = nil, created: Date? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<ServicesViewModel> {
        let path = "/api/v1/hospitals/services"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(), 
            "Name": name?.encodeToJSON(), 
            "Description": description?.encodeToJSON(), 
            "HospitalId": hospitalId?.encodeToJSON(), 
            "HospitalName": hospitalName?.encodeToJSON(), 
            "HospitalSlug": hospitalSlug?.encodeToJSON(), 
            "SpecialtyId": specialtyId?.encodeToJSON(), 
            "SpecialtyTypeId": specialtyTypeId?.encodeToJSON(), 
            "SpecialtyTypeName": specialtyTypeName?.encodeToJSON(), 
            "MarketingType": marketingType?.encodeToJSON(), 
            "Procedure": procedure?.encodeToJSON(), 
            "Created": created?.encodeToJSON(), 
            "LanguageCode": languageCode?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON(), 
            "Current": current?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<ServicesViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get service by slug.
     
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ServiceViewModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1HospitalsServicesSlugsSlugGet(slug: String, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<ServiceViewModel, Error> {
        return Future<ServiceViewModel, Error>.init { promise in
            apiV1HospitalsServicesSlugsSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode).execute(apiResponseQueue) { result -> Void in
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
     Get service by slug.
     - GET /api/v1/hospitals/services/slugs/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional, default to "")
     - returns: RequestBuilder<ServiceViewModel> 
     */
    open class func apiV1HospitalsServicesSlugsSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil) -> RequestBuilder<ServiceViewModel> {
        var path = "/api/v1/hospitals/services/slugs/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<ServiceViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
