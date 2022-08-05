//
// ServicesAPI.swift
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

open class ServicesAPI {

    /**
     Get all HospitalServices.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter slug: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter hospitalSlug: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter specialtyName: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter specialtyTypeName: (query)  (optional)
     - parameter serviceCategoryId: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter procedure: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<HospitalServicesModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicesGet(id: UUID? = nil, name: String? = nil, slug: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, serviceCategoryId: UUID? = nil, marketingType: MarketingType? = nil, procedure: Procedure? = nil, created: Date? = nil, languageCode: String? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<HospitalServicesModel, Error> {
        return Future<HospitalServicesModel, Error>.init { promise in
            apiV2ServicesGetWithRequestBuilder(id: id, name: name, slug: slug, hospitalId: hospitalId, hospitalName: hospitalName, hospitalSlug: hospitalSlug, specialtyId: specialtyId, specialtyName: specialtyName, specialtyTypeId: specialtyTypeId, specialtyTypeName: specialtyTypeName, serviceCategoryId: serviceCategoryId, marketingType: marketingType, procedure: procedure, created: created, languageCode: languageCode, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved).execute(apiResponseQueue) { result -> Void in
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
     Get all HospitalServices.
     - GET /api/v2/services
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter slug: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter hospitalSlug: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter specialtyName: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter specialtyTypeName: (query)  (optional)
     - parameter serviceCategoryId: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter procedure: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<HospitalServicesModel> 
     */
    open class func apiV2ServicesGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, slug: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, serviceCategoryId: UUID? = nil, marketingType: MarketingType? = nil, procedure: Procedure? = nil, created: Date? = nil, languageCode: String? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<HospitalServicesModel> {
        let localVariablePath = "/api/v2/services"
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "Name": name?.encodeToJSON(),
            "Slug": slug?.encodeToJSON(),
            "HospitalId": hospitalId?.encodeToJSON(),
            "HospitalName": hospitalName?.encodeToJSON(),
            "HospitalSlug": hospitalSlug?.encodeToJSON(),
            "SpecialtyId": specialtyId?.encodeToJSON(),
            "SpecialtyName": specialtyName?.encodeToJSON(),
            "SpecialtyTypeId": specialtyTypeId?.encodeToJSON(),
            "SpecialtyTypeName": specialtyTypeName?.encodeToJSON(),
            "ServiceCategoryId": serviceCategoryId?.encodeToJSON(),
            "MarketingType": marketingType?.encodeToJSON(),
            "Procedure": procedure?.encodeToJSON(),
            "Created": created?.encodeToJSON(),
            "LanguageCode": languageCode?.encodeToJSON(),
            "ReturnDefaultValue": returnDefaultValue?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<HospitalServicesModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**

     - parameter serviceId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<HospitalServiceModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicesServiceIdGet(serviceId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<HospitalServiceModel, Error> {
        return Future<HospitalServiceModel, Error>.init { promise in
            apiV2ServicesServiceIdGetWithRequestBuilder(serviceId: serviceId, languageCode: languageCode, returnDefaultValue: returnDefaultValue).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/v2/services/{serviceId}
     - parameter serviceId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: RequestBuilder<HospitalServiceModel> 
     */
    open class func apiV2ServicesServiceIdGetWithRequestBuilder(serviceId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> RequestBuilder<HospitalServiceModel> {
        var localVariablePath = "/api/v2/services/{serviceId}"
        let serviceIdPreEscape = "\(APIHelper.mapValueToPathItem(serviceId))"
        let serviceIdPostEscape = serviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{serviceId}", with: serviceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
            "returnDefaultValue": returnDefaultValue?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<HospitalServiceModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**

     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<HospitalServiceModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ServicesSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<HospitalServiceModel, Error> {
        return Future<HospitalServiceModel, Error>.init { promise in
            apiV2ServicesSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/v2/services/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: RequestBuilder<HospitalServiceModel> 
     */
    open class func apiV2ServicesSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> RequestBuilder<HospitalServiceModel> {
        var localVariablePath = "/api/v2/services/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
            "returnDefaultValue": returnDefaultValue?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<HospitalServiceModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}