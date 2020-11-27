//
// CountriesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

extension CloudHospitalClientAPI {


open class CountriesAPI {
    /**
     Delete country.
     
     - parameter countryId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1CountriesCountryIdDelete(countryId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: Bool?,_ error: Error?) -> Void)) {
        apiV1CountriesCountryIdDeleteWithRequestBuilder(countryId: countryId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete country.
     - DELETE /api/v1/countries/{countryId}
     - Sample request:        DELETE /api/v1/countries/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter countryId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1CountriesCountryIdDeleteWithRequestBuilder(countryId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/countries/{countryId}"
        let countryIdPreEscape = "\(APIHelper.mapValueToPathItem(countryId))"
        let countryIdPostEscape = countryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{countryId}", with: countryIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get country.
     
     - parameter countryId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1CountriesCountryIdGet(countryId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: CountryViewModel?,_ error: Error?) -> Void)) {
        apiV1CountriesCountryIdGetWithRequestBuilder(countryId: countryId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get country.
     - GET /api/v1/countries/{countryId}
     - Sample request:        GET /api/v1/countries/1
     - parameter countryId: (path)  
     - returns: RequestBuilder<CountryViewModel> 
     */
    open class func apiV1CountriesCountryIdGetWithRequestBuilder(countryId: UUID) -> RequestBuilder<CountryViewModel> {
        var path = "/api/v1/countries/{countryId}"
        let countryIdPreEscape = "\(APIHelper.mapValueToPathItem(countryId))"
        let countryIdPostEscape = countryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{countryId}", with: countryIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<CountryViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update country.
     
     - parameter countryId: (path)  
     - parameter updateCountryCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1CountriesCountryIdPut(countryId: UUID, updateCountryCommand: UpdateCountryCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: Bool?,_ error: Error?) -> Void)) {
        apiV1CountriesCountryIdPutWithRequestBuilder(countryId: countryId, updateCountryCommand: updateCountryCommand).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update country.
     - PUT /api/v1/countries/{countryId}
     - Sample request:        PUT /api/v1/countries/1      {          \"name\": \"USA\",          \"description\": \"United States of America\"          \"medias\": [            {              \"mediaType\": 0,              \"url\": \"https://cloudhospitalblob.blob.core.windows.net/imagecontainer/SouthKorea.png\",              \"thumbnailUrl\": \"https://cloudhospitalblob.blob.core.windows.net/thumbnailcontainer/SouthKorea.png\"              \"description\": \"string\",              \"order\": 0            },            {              \"mediaType\": 1,              \"url\": \"string\",              \"description\": \"string\",              \"order\": 1            }          ],      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter countryId: (path)  
     - parameter updateCountryCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1CountriesCountryIdPutWithRequestBuilder(countryId: UUID, updateCountryCommand: UpdateCountryCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/countries/{countryId}"
        let countryIdPreEscape = "\(APIHelper.mapValueToPathItem(countryId))"
        let countryIdPostEscape = countryIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{countryId}", with: countryIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateCountryCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get all countries.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter createdDate: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1CountriesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, createdDate: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: CountriesViewModel?,_ error: Error?) -> Void)) {
        apiV1CountriesGetWithRequestBuilder(id: id, name: name, description: description, createdDate: createdDate, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all countries.
     - GET /api/v1/countries
     - Sample request:        GET /api/v1/countries      {          \"countryPageQueryFilter\": {              \"page\": 1,              \"limit\": 20,              \"lastRetrived\": \"2020-02-05T08:40\"          }      }
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter createdDate: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<CountriesViewModel> 
     */
    open class func apiV1CountriesGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, description: String? = nil, createdDate: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<CountriesViewModel> {
        let path = "/api/v1/countries"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(), 
            "Name": name?.encodeToJSON(), 
            "Description": description?.encodeToJSON(), 
            "CreatedDate": createdDate?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON(), 
            "Current": current?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<CountriesViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create a country.
     
     - parameter createCountryCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1CountriesPost(createCountryCommand: CreateCountryCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: UUID?,_ error: Error?) -> Void)) {
        apiV1CountriesPostWithRequestBuilder(createCountryCommand: createCountryCommand).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a country.
     - POST /api/v1/countries
     - Sample request:        POST /api/v1/countries      {          \"name\": \"Korea\",          \"description\": \"Republic of Korea\",          \"medias\": [              {                  \"mediaType\": \"Photo\",                  \"url\": \"https://cloudhospitalblob.blob.core.windows.net/imagecontainer/SouthKorea.png\",                  \"thumbnailUrl\": \"https://cloudhospitalblob.blob.core.windows.net/thumbnailcontainer/SouthKorea.png\",                  \"description\": \"string\"              }          ]      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter createCountryCommand: (body)  (optional)
     - returns: RequestBuilder<UUID> 
     */
    open class func apiV1CountriesPostWithRequestBuilder(createCountryCommand: CreateCountryCommand? = nil) -> RequestBuilder<UUID> {
        let path = "/api/v1/countries"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createCountryCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<UUID>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get country by slug.
     
     - parameter slug: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1CountriesSlugsSlugGet(slug: String, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: CountryViewModel?,_ error: Error?) -> Void)) {
        apiV1CountriesSlugsSlugGetWithRequestBuilder(slug: slug).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get country by slug.
     - GET /api/v1/countries/slugs/{slug}
     - parameter slug: (path)  
     - returns: RequestBuilder<CountryViewModel> 
     */
    open class func apiV1CountriesSlugsSlugGetWithRequestBuilder(slug: String) -> RequestBuilder<CountryViewModel> {
        var path = "/api/v1/countries/slugs/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<CountryViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
}
