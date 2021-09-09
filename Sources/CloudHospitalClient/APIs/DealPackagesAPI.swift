//
// DealPackagesAPI.swift
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

open class DealPackagesAPI {

    /**
     Delete deal package.
     
     - parameter dealId: (path)  
     - parameter packageId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1DealsDealIdPackagesPackageIdDelete(dealId: UUID, packageId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1DealsDealIdPackagesPackageIdDeleteWithRequestBuilder(dealId: dealId, packageId: packageId).execute(apiResponseQueue) { result -> Void in
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
     Delete deal package.
     - DELETE /api/v1/deals/{dealId}/packages/{packageId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter dealId: (path)  
     - parameter packageId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1DealsDealIdPackagesPackageIdDeleteWithRequestBuilder(dealId: UUID, packageId: UUID) -> RequestBuilder<Bool> {
        var localVariablePath = "/api/v1/deals/{dealId}/packages/{packageId}"
        let dealIdPreEscape = "\(APIHelper.mapValueToPathItem(dealId))"
        let dealIdPostEscape = dealIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{dealId}", with: dealIdPostEscape, options: .literal, range: nil)
        let packageIdPreEscape = "\(APIHelper.mapValueToPathItem(packageId))"
        let packageIdPostEscape = packageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{packageId}", with: packageIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get deal package.
     
     - parameter dealId: (path)  
     - parameter packageId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<DealPackageViewModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1DealsDealIdPackagesPackageIdGet(dealId: UUID, packageId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<DealPackageViewModel, Error> {
        return Future<DealPackageViewModel, Error>.init { promise in
            apiV1DealsDealIdPackagesPackageIdGetWithRequestBuilder(dealId: dealId, packageId: packageId).execute(apiResponseQueue) { result -> Void in
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
     Get deal package.
     - GET /api/v1/deals/{dealId}/packages/{packageId}
     - parameter dealId: (path)  
     - parameter packageId: (path)  
     - returns: RequestBuilder<DealPackageViewModel> 
     */
    open class func apiV1DealsDealIdPackagesPackageIdGetWithRequestBuilder(dealId: UUID, packageId: UUID) -> RequestBuilder<DealPackageViewModel> {
        var localVariablePath = "/api/v1/deals/{dealId}/packages/{packageId}"
        let dealIdPreEscape = "\(APIHelper.mapValueToPathItem(dealId))"
        let dealIdPostEscape = dealIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{dealId}", with: dealIdPostEscape, options: .literal, range: nil)
        let packageIdPreEscape = "\(APIHelper.mapValueToPathItem(packageId))"
        let packageIdPostEscape = packageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{packageId}", with: packageIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DealPackageViewModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update deal package.
     
     - parameter dealId: (path)  
     - parameter packageId: (path)  
     - parameter updateDealPackageCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1DealsDealIdPackagesPackageIdPut(dealId: UUID, packageId: UUID, updateDealPackageCommand: UpdateDealPackageCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1DealsDealIdPackagesPackageIdPutWithRequestBuilder(dealId: dealId, packageId: packageId, updateDealPackageCommand: updateDealPackageCommand).execute(apiResponseQueue) { result -> Void in
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
     Update deal package.
     - PUT /api/v1/deals/{dealId}/packages/{packageId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter dealId: (path)  
     - parameter packageId: (path)  
     - parameter updateDealPackageCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1DealsDealIdPackagesPackageIdPutWithRequestBuilder(dealId: UUID, packageId: UUID, updateDealPackageCommand: UpdateDealPackageCommand? = nil) -> RequestBuilder<Bool> {
        var localVariablePath = "/api/v1/deals/{dealId}/packages/{packageId}"
        let dealIdPreEscape = "\(APIHelper.mapValueToPathItem(dealId))"
        let dealIdPostEscape = dealIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{dealId}", with: dealIdPostEscape, options: .literal, range: nil)
        let packageIdPreEscape = "\(APIHelper.mapValueToPathItem(packageId))"
        let packageIdPostEscape = packageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{packageId}", with: packageIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateDealPackageCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create deal package.
     
     - parameter dealId: (path)  
     - parameter createDealPackageCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<UUID, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1DealsDealIdPackagesPost(dealId: UUID, createDealPackageCommand: CreateDealPackageCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<UUID, Error> {
        return Future<UUID, Error>.init { promise in
            apiV1DealsDealIdPackagesPostWithRequestBuilder(dealId: dealId, createDealPackageCommand: createDealPackageCommand).execute(apiResponseQueue) { result -> Void in
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
     Create deal package.
     - POST /api/v1/deals/{dealId}/packages
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter dealId: (path)  
     - parameter createDealPackageCommand: (body)  (optional)
     - returns: RequestBuilder<UUID> 
     */
    open class func apiV1DealsDealIdPackagesPostWithRequestBuilder(dealId: UUID, createDealPackageCommand: CreateDealPackageCommand? = nil) -> RequestBuilder<UUID> {
        var localVariablePath = "/api/v1/deals/{dealId}/packages"
        let dealIdPreEscape = "\(APIHelper.mapValueToPathItem(dealId))"
        let dealIdPostEscape = dealIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{dealId}", with: dealIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createDealPackageCommand)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UUID>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
