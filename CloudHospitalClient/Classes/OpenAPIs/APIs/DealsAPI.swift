//
// DealsAPI.swift
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

open class DealsAPI {

    /**
     Get deal.
     
     - parameter dealId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: AnyPublisher<DealModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2DealsDealIdGet(dealId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> AnyPublisher<DealModel, Error> {
        var requestTask: RequestTask?
        return Future<DealModel, Error> { promise in
            requestTask = apiV2DealsDealIdGetWithRequestBuilder(dealId: dealId, languageCode: languageCode, returnDefaultValue: returnDefaultValue).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Get deal.
     - GET /api/v2/deals/{dealId}
     - parameter dealId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: RequestBuilder<DealModel> 
     */
    open class func apiV2DealsDealIdGetWithRequestBuilder(dealId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> RequestBuilder<DealModel> {
        var localVariablePath = "/api/v2/deals/{dealId}"
        let dealIdPreEscape = "\(APIHelper.mapValueToPathItem(dealId))"
        let dealIdPostEscape = dealIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{dealId}", with: dealIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
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

        let localVariableRequestBuilder: RequestBuilder<DealModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all DealPackage.
     
     - parameter dealId: (path)  
     - parameter relatedDealPackageId: (query)  (optional)
     - parameter dealName: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: AnyPublisher<DealPackagesModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2DealsDealIdPackagesGet(dealId: UUID, relatedDealPackageId: UUID? = nil, dealName: String? = nil, name: String? = nil, countryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, languageCode: String? = nil, showHidden: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> AnyPublisher<DealPackagesModel, Error> {
        var requestTask: RequestTask?
        return Future<DealPackagesModel, Error> { promise in
            requestTask = apiV2DealsDealIdPackagesGetWithRequestBuilder(dealId: dealId, relatedDealPackageId: relatedDealPackageId, dealName: dealName, name: name, countryId: countryId, hospitalId: hospitalId, hospitalName: hospitalName, languageCode: languageCode, showHidden: showHidden, page: page, limit: limit, lastRetrieved: lastRetrieved).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Get all DealPackage.
     - GET /api/v2/deals/{dealId}/packages
     - parameter dealId: (path)  
     - parameter relatedDealPackageId: (query)  (optional)
     - parameter dealName: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<DealPackagesModel> 
     */
    open class func apiV2DealsDealIdPackagesGetWithRequestBuilder(dealId: UUID, relatedDealPackageId: UUID? = nil, dealName: String? = nil, name: String? = nil, countryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, languageCode: String? = nil, showHidden: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<DealPackagesModel> {
        var localVariablePath = "/api/v2/deals/{dealId}/packages"
        let dealIdPreEscape = "\(APIHelper.mapValueToPathItem(dealId))"
        let dealIdPostEscape = dealIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{dealId}", with: dealIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "RelatedDealPackageId": relatedDealPackageId?.encodeToJSON(),
            "DealName": dealName?.encodeToJSON(),
            "Name": name?.encodeToJSON(),
            "CountryId": countryId?.encodeToJSON(),
            "HospitalId": hospitalId?.encodeToJSON(),
            "HospitalName": hospitalName?.encodeToJSON(),
            "LanguageCode": languageCode?.encodeToJSON(),
            "ShowHidden": showHidden?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DealPackagesModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get DealPackage.
     
     - parameter dealId: (path)  
     - parameter packageId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: AnyPublisher<DealPackageModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2DealsDealIdPackagesPackageIdGet(dealId: UUID, packageId: UUID, languageCode: String? = nil) -> AnyPublisher<DealPackageModel, Error> {
        var requestTask: RequestTask?
        return Future<DealPackageModel, Error> { promise in
            requestTask = apiV2DealsDealIdPackagesPackageIdGetWithRequestBuilder(dealId: dealId, packageId: packageId, languageCode: languageCode).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Get DealPackage.
     - GET /api/v2/deals/{dealId}/packages/{packageId}
     - parameter dealId: (path)  
     - parameter packageId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: RequestBuilder<DealPackageModel> 
     */
    open class func apiV2DealsDealIdPackagesPackageIdGetWithRequestBuilder(dealId: UUID, packageId: UUID, languageCode: String? = nil) -> RequestBuilder<DealPackageModel> {
        var localVariablePath = "/api/v2/deals/{dealId}/packages/{packageId}"
        let dealIdPreEscape = "\(APIHelper.mapValueToPathItem(dealId))"
        let dealIdPostEscape = dealIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{dealId}", with: dealIdPostEscape, options: .literal, range: nil)
        let packageIdPreEscape = "\(APIHelper.mapValueToPathItem(packageId))"
        let packageIdPostEscape = packageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{packageId}", with: packageIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DealPackageModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all DealService.
     
     - parameter dealId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: AnyPublisher<DealServicesModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2DealsDealIdServicesGet(dealId: UUID, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> AnyPublisher<DealServicesModel, Error> {
        var requestTask: RequestTask?
        return Future<DealServicesModel, Error> { promise in
            requestTask = apiV2DealsDealIdServicesGetWithRequestBuilder(dealId: dealId, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Get all DealService.
     - GET /api/v2/deals/{dealId}/services
     - parameter dealId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<DealServicesModel> 
     */
    open class func apiV2DealsDealIdServicesGetWithRequestBuilder(dealId: UUID, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<DealServicesModel> {
        var localVariablePath = "/api/v2/deals/{dealId}/services"
        let dealIdPreEscape = "\(APIHelper.mapValueToPathItem(dealId))"
        let dealIdPostEscape = dealIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{dealId}", with: dealIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "LanguageCode": languageCode?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DealServicesModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get DealService.
     
     - parameter dealId: (path)  
     - parameter serviceId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: AnyPublisher<DealServiceModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2DealsDealIdServicesServiceIdGet(dealId: UUID, serviceId: UUID, languageCode: String? = nil) -> AnyPublisher<DealServiceModel, Error> {
        var requestTask: RequestTask?
        return Future<DealServiceModel, Error> { promise in
            requestTask = apiV2DealsDealIdServicesServiceIdGetWithRequestBuilder(dealId: dealId, serviceId: serviceId, languageCode: languageCode).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Get DealService.
     - GET /api/v2/deals/{dealId}/services/{serviceId}
     - parameter dealId: (path)  
     - parameter serviceId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: RequestBuilder<DealServiceModel> 
     */
    open class func apiV2DealsDealIdServicesServiceIdGetWithRequestBuilder(dealId: UUID, serviceId: UUID, languageCode: String? = nil) -> RequestBuilder<DealServiceModel> {
        var localVariablePath = "/api/v2/deals/{dealId}/services/{serviceId}"
        let dealIdPreEscape = "\(APIHelper.mapValueToPathItem(dealId))"
        let dealIdPostEscape = dealIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{dealId}", with: dealIdPostEscape, options: .literal, range: nil)
        let serviceIdPreEscape = "\(APIHelper.mapValueToPathItem(serviceId))"
        let serviceIdPostEscape = serviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{serviceId}", with: serviceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DealServiceModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all deals.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter specialtyName: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter specialtyTypeName: (query)  (optional)
     - parameter serviceId: (query)  (optional)
     - parameter serviceName: (query)  (optional)
     - parameter exceptHospitalId: (query)  (optional)
     - parameter exceptDealId: (query)  (optional)
     - parameter ids: (query)  (optional)
     - parameter serviceDuration: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: AnyPublisher<DealsModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2DealsGet(id: UUID? = nil, name: String? = nil, marketingType: MarketingType? = nil, countryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, serviceId: UUID? = nil, serviceName: String? = nil, exceptHospitalId: UUID? = nil, exceptDealId: UUID? = nil, ids: [UUID]? = nil, serviceDuration: Int? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> AnyPublisher<DealsModel, Error> {
        var requestTask: RequestTask?
        return Future<DealsModel, Error> { promise in
            requestTask = apiV2DealsGetWithRequestBuilder(id: id, name: name, marketingType: marketingType, countryId: countryId, hospitalId: hospitalId, hospitalName: hospitalName, specialtyId: specialtyId, specialtyName: specialtyName, specialtyTypeId: specialtyTypeId, specialtyTypeName: specialtyTypeName, serviceId: serviceId, serviceName: serviceName, exceptHospitalId: exceptHospitalId, exceptDealId: exceptDealId, ids: ids, serviceDuration: serviceDuration, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Get all deals.
     - GET /api/v2/deals
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter specialtyName: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter specialtyTypeName: (query)  (optional)
     - parameter serviceId: (query)  (optional)
     - parameter serviceName: (query)  (optional)
     - parameter exceptHospitalId: (query)  (optional)
     - parameter exceptDealId: (query)  (optional)
     - parameter ids: (query)  (optional)
     - parameter serviceDuration: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<DealsModel> 
     */
    open class func apiV2DealsGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, marketingType: MarketingType? = nil, countryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, serviceId: UUID? = nil, serviceName: String? = nil, exceptHospitalId: UUID? = nil, exceptDealId: UUID? = nil, ids: [UUID]? = nil, serviceDuration: Int? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<DealsModel> {
        let localVariablePath = "/api/v2/deals"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "Name": name?.encodeToJSON(),
            "MarketingType": marketingType?.encodeToJSON(),
            "CountryId": countryId?.encodeToJSON(),
            "HospitalId": hospitalId?.encodeToJSON(),
            "HospitalName": hospitalName?.encodeToJSON(),
            "SpecialtyId": specialtyId?.encodeToJSON(),
            "SpecialtyName": specialtyName?.encodeToJSON(),
            "SpecialtyTypeId": specialtyTypeId?.encodeToJSON(),
            "SpecialtyTypeName": specialtyTypeName?.encodeToJSON(),
            "ServiceId": serviceId?.encodeToJSON(),
            "ServiceName": serviceName?.encodeToJSON(),
            "ExceptHospitalId": exceptHospitalId?.encodeToJSON(),
            "ExceptDealId": exceptDealId?.encodeToJSON(),
            "Ids": ids?.encodeToJSON(),
            "ServiceDuration": serviceDuration?.encodeToJSON(),
            "LanguageCode": languageCode?.encodeToJSON(),
            "ShowHidden": showHidden?.encodeToJSON(),
            "ReturnDefaultValue": returnDefaultValue?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DealsModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all deals.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter specialtyName: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter specialtyTypeName: (query)  (optional)
     - parameter serviceId: (query)  (optional)
     - parameter serviceName: (query)  (optional)
     - parameter exceptHospitalId: (query)  (optional)
     - parameter exceptDealId: (query)  (optional)
     - parameter ids: (query)  (optional)
     - parameter serviceDuration: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: AnyPublisher<DealsSimpleModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2DealsSimpleGet(id: UUID? = nil, name: String? = nil, marketingType: MarketingType? = nil, countryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, serviceId: UUID? = nil, serviceName: String? = nil, exceptHospitalId: UUID? = nil, exceptDealId: UUID? = nil, ids: [UUID]? = nil, serviceDuration: Int? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> AnyPublisher<DealsSimpleModel, Error> {
        var requestTask: RequestTask?
        return Future<DealsSimpleModel, Error> { promise in
            requestTask = apiV2DealsSimpleGetWithRequestBuilder(id: id, name: name, marketingType: marketingType, countryId: countryId, hospitalId: hospitalId, hospitalName: hospitalName, specialtyId: specialtyId, specialtyName: specialtyName, specialtyTypeId: specialtyTypeId, specialtyTypeName: specialtyTypeName, serviceId: serviceId, serviceName: serviceName, exceptHospitalId: exceptHospitalId, exceptDealId: exceptDealId, ids: ids, serviceDuration: serviceDuration, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Get all deals.
     - GET /api/v2/deals/simple
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter specialtyName: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter specialtyTypeName: (query)  (optional)
     - parameter serviceId: (query)  (optional)
     - parameter serviceName: (query)  (optional)
     - parameter exceptHospitalId: (query)  (optional)
     - parameter exceptDealId: (query)  (optional)
     - parameter ids: (query)  (optional)
     - parameter serviceDuration: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<DealsSimpleModel> 
     */
    open class func apiV2DealsSimpleGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, marketingType: MarketingType? = nil, countryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, serviceId: UUID? = nil, serviceName: String? = nil, exceptHospitalId: UUID? = nil, exceptDealId: UUID? = nil, ids: [UUID]? = nil, serviceDuration: Int? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<DealsSimpleModel> {
        let localVariablePath = "/api/v2/deals/simple"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "Name": name?.encodeToJSON(),
            "MarketingType": marketingType?.encodeToJSON(),
            "CountryId": countryId?.encodeToJSON(),
            "HospitalId": hospitalId?.encodeToJSON(),
            "HospitalName": hospitalName?.encodeToJSON(),
            "SpecialtyId": specialtyId?.encodeToJSON(),
            "SpecialtyName": specialtyName?.encodeToJSON(),
            "SpecialtyTypeId": specialtyTypeId?.encodeToJSON(),
            "SpecialtyTypeName": specialtyTypeName?.encodeToJSON(),
            "ServiceId": serviceId?.encodeToJSON(),
            "ServiceName": serviceName?.encodeToJSON(),
            "ExceptHospitalId": exceptHospitalId?.encodeToJSON(),
            "ExceptDealId": exceptDealId?.encodeToJSON(),
            "Ids": ids?.encodeToJSON(),
            "ServiceDuration": serviceDuration?.encodeToJSON(),
            "LanguageCode": languageCode?.encodeToJSON(),
            "ShowHidden": showHidden?.encodeToJSON(),
            "ReturnDefaultValue": returnDefaultValue?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DealsSimpleModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get deal by slug.
     
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: AnyPublisher<DealModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2DealsSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> AnyPublisher<DealModel, Error> {
        var requestTask: RequestTask?
        return Future<DealModel, Error> { promise in
            requestTask = apiV2DealsSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Get deal by slug.
     - GET /api/v2/deals/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: RequestBuilder<DealModel> 
     */
    open class func apiV2DealsSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> RequestBuilder<DealModel> {
        var localVariablePath = "/api/v2/deals/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
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

        let localVariableRequestBuilder: RequestBuilder<DealModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
