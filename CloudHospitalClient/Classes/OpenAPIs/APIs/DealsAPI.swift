//
// DealsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class DealsAPI {
    /**
     Delete deal.
     
     - parameter dealId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1DealsDealIdDelete(dealId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: Bool?,_ error: Error?) -> Void)) {
        apiV1DealsDealIdDeleteWithRequestBuilder(dealId: dealId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete deal.
     - DELETE /api/v1/deals/{dealId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter dealId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1DealsDealIdDeleteWithRequestBuilder(dealId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/deals/{dealId}"
        let dealIdPreEscape = "\(APIHelper.mapValueToPathItem(dealId))"
        let dealIdPostEscape = dealIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{dealId}", with: dealIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get deal.
     
     - parameter dealId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1DealsDealIdGet(dealId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: DealViewModel?,_ error: Error?) -> Void)) {
        apiV1DealsDealIdGetWithRequestBuilder(dealId: dealId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get deal.
     - GET /api/v1/deals/{dealId}
     - parameter dealId: (path)  
     - returns: RequestBuilder<DealViewModel> 
     */
    open class func apiV1DealsDealIdGetWithRequestBuilder(dealId: UUID) -> RequestBuilder<DealViewModel> {
        var path = "/api/v1/deals/{dealId}"
        let dealIdPreEscape = "\(APIHelper.mapValueToPathItem(dealId))"
        let dealIdPostEscape = dealIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{dealId}", with: dealIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<DealViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update deal.
     
     - parameter dealId: (path)  
     - parameter updateDealCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1DealsDealIdPut(dealId: UUID, updateDealCommand: UpdateDealCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: Bool?,_ error: Error?) -> Void)) {
        apiV1DealsDealIdPutWithRequestBuilder(dealId: dealId, updateDealCommand: updateDealCommand).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update deal.
     - PUT /api/v1/deals/{dealId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter dealId: (path)  
     - parameter updateDealCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1DealsDealIdPutWithRequestBuilder(dealId: UUID, updateDealCommand: UpdateDealCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/deals/{dealId}"
        let dealIdPreEscape = "\(APIHelper.mapValueToPathItem(dealId))"
        let dealIdPostEscape = dealIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{dealId}", with: dealIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateDealCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
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
     - parameter specialtyTypeId: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1DealsGet(id: UUID? = nil, name: String? = nil, marketingType: MarketingType? = nil, countryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, specialtyId: UUID? = nil, specialtyTypeId: UUID? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: DealsViewModel?,_ error: Error?) -> Void)) {
        apiV1DealsGetWithRequestBuilder(id: id, name: name, marketingType: marketingType, countryId: countryId, hospitalId: hospitalId, hospitalName: hospitalName, specialtyId: specialtyId, specialtyTypeId: specialtyTypeId, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all deals.
     - GET /api/v1/deals
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter specialtyId: (query)  (optional)
     - parameter specialtyTypeId: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<DealsViewModel> 
     */
    open class func apiV1DealsGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, marketingType: MarketingType? = nil, countryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, specialtyId: UUID? = nil, specialtyTypeId: UUID? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<DealsViewModel> {
        let path = "/api/v1/deals"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(), 
            "Name": name?.encodeToJSON(), 
            "MarketingType": marketingType?.encodeToJSON(), 
            "CountryId": countryId?.encodeToJSON(), 
            "HospitalId": hospitalId?.encodeToJSON(), 
            "HospitalName": hospitalName?.encodeToJSON(), 
            "SpecialtyId": specialtyId?.encodeToJSON(), 
            "SpecialtyTypeId": specialtyTypeId?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON(), 
            "Current": current?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<DealsViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create deal.
     
     - parameter createDealCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1DealsPost(createDealCommand: CreateDealCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: UUID?,_ error: Error?) -> Void)) {
        apiV1DealsPostWithRequestBuilder(createDealCommand: createDealCommand).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create deal.
     - POST /api/v1/deals
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter createDealCommand: (body)  (optional)
     - returns: RequestBuilder<UUID> 
     */
    open class func apiV1DealsPostWithRequestBuilder(createDealCommand: CreateDealCommand? = nil) -> RequestBuilder<UUID> {
        let path = "/api/v1/deals"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createDealCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<UUID>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get deal by slug.
     
     - parameter slug: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1DealsSlugsSlugGet(slug: String, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: DealViewModel?,_ error: Error?) -> Void)) {
        apiV1DealsSlugsSlugGetWithRequestBuilder(slug: slug).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get deal by slug.
     - GET /api/v1/deals/slugs/{slug}
     - parameter slug: (path)  
     - returns: RequestBuilder<DealViewModel> 
     */
    open class func apiV1DealsSlugsSlugGetWithRequestBuilder(slug: String) -> RequestBuilder<DealViewModel> {
        var path = "/api/v1/deals/slugs/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<DealViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
