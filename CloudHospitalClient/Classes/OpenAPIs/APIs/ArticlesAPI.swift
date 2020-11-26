//
// ArticlesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class ArticlesAPI {
    /**
     Get all articles.
     
     - parameter id: (query)  (optional)
     - parameter title: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter status: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter userId: (query)  (optional)
     - parameter userName: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter tag: (query)  (optional)
     - parameter exceptHospitalId: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1HospitalsArticlesGet(id: UUID? = nil, title: String? = nil, description: String? = nil, status: ArticleStatus? = nil, marketingType: MarketingType? = nil, userId: UUID? = nil, userName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, countryId: UUID? = nil, tag: String? = nil, exceptHospitalId: UUID? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: ArticlesViewModel?,_ error: Error?) -> Void)) {
        apiV1HospitalsArticlesGetWithRequestBuilder(id: id, title: title, description: description, status: status, marketingType: marketingType, userId: userId, userName: userName, hospitalId: hospitalId, hospitalName: hospitalName, countryId: countryId, tag: tag, exceptHospitalId: exceptHospitalId, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all articles.
     - GET /api/v1/hospitals/articles
     - Sample request:        GET /api/v1/hospitals/1/articles
     - parameter id: (query)  (optional)
     - parameter title: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter status: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter userId: (query)  (optional)
     - parameter userName: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter tag: (query)  (optional)
     - parameter exceptHospitalId: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<ArticlesViewModel> 
     */
    open class func apiV1HospitalsArticlesGetWithRequestBuilder(id: UUID? = nil, title: String? = nil, description: String? = nil, status: ArticleStatus? = nil, marketingType: MarketingType? = nil, userId: UUID? = nil, userName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, countryId: UUID? = nil, tag: String? = nil, exceptHospitalId: UUID? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<ArticlesViewModel> {
        let path = "/api/v1/hospitals/articles"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(), 
            "Title": title?.encodeToJSON(), 
            "Description": description?.encodeToJSON(), 
            "Status": status?.encodeToJSON(), 
            "MarketingType": marketingType?.encodeToJSON(), 
            "UserId": userId?.encodeToJSON(), 
            "UserName": userName?.encodeToJSON(), 
            "HospitalId": hospitalId?.encodeToJSON(), 
            "HospitalName": hospitalName?.encodeToJSON(), 
            "CountryId": countryId?.encodeToJSON(), 
            "Tag": tag?.encodeToJSON(), 
            "ExceptHospitalId": exceptHospitalId?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON(), 
            "Current": current?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<ArticlesViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get article by slug.
     
     - parameter slug: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1HospitalsArticlesSlugsSlugGet(slug: String, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: ArticleViewModel?,_ error: Error?) -> Void)) {
        apiV1HospitalsArticlesSlugsSlugGetWithRequestBuilder(slug: slug).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get article by slug.
     - GET /api/v1/hospitals/articles/slugs/{slug}
     - parameter slug: (path)  
     - returns: RequestBuilder<ArticleViewModel> 
     */
    open class func apiV1HospitalsArticlesSlugsSlugGetWithRequestBuilder(slug: String) -> RequestBuilder<ArticleViewModel> {
        var path = "/api/v1/hospitals/articles/slugs/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ArticleViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete article.
     
     - parameter hospitalId: (path)  
     - parameter articleId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1HospitalsHospitalIdArticlesArticleIdDelete(hospitalId: UUID, articleId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: Bool?,_ error: Error?) -> Void)) {
        apiV1HospitalsHospitalIdArticlesArticleIdDeleteWithRequestBuilder(hospitalId: hospitalId, articleId: articleId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete article.
     - DELETE /api/v1/hospitals/{hospitalId}/articles/{articleId}
     - Sample request:        DELETE /api/v1/hospitals/1/articles/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter articleId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdArticlesArticleIdDeleteWithRequestBuilder(hospitalId: UUID, articleId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/hospitals/{hospitalId}/articles/{articleId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let articleIdPreEscape = "\(APIHelper.mapValueToPathItem(articleId))"
        let articleIdPostEscape = articleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{articleId}", with: articleIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get article.
     
     - parameter hospitalId: (path)  
     - parameter articleId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1HospitalsHospitalIdArticlesArticleIdGet(hospitalId: UUID, articleId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: ArticleViewModel?,_ error: Error?) -> Void)) {
        apiV1HospitalsHospitalIdArticlesArticleIdGetWithRequestBuilder(hospitalId: hospitalId, articleId: articleId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get article.
     - GET /api/v1/hospitals/{hospitalId}/articles/{articleId}
     - Sample request:        GET /api/v1/hospitals/1/articles/1
     - parameter hospitalId: (path)  
     - parameter articleId: (path)  
     - returns: RequestBuilder<ArticleViewModel> 
     */
    open class func apiV1HospitalsHospitalIdArticlesArticleIdGetWithRequestBuilder(hospitalId: UUID, articleId: UUID) -> RequestBuilder<ArticleViewModel> {
        var path = "/api/v1/hospitals/{hospitalId}/articles/{articleId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let articleIdPreEscape = "\(APIHelper.mapValueToPathItem(articleId))"
        let articleIdPostEscape = articleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{articleId}", with: articleIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ArticleViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update article.
     
     - parameter hospitalId: (path)  
     - parameter articleId: (path)  
     - parameter updateArticleCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1HospitalsHospitalIdArticlesArticleIdPut(hospitalId: UUID, articleId: UUID, updateArticleCommand: UpdateArticleCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: Bool?,_ error: Error?) -> Void)) {
        apiV1HospitalsHospitalIdArticlesArticleIdPutWithRequestBuilder(hospitalId: hospitalId, articleId: articleId, updateArticleCommand: updateArticleCommand).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update article.
     - PUT /api/v1/hospitals/{hospitalId}/articles/{articleId}
     - Sample request:        PUT /api/v1/hospitals/1/articles/1      {          \"title\": \"Samsung Hospital Article\",          \"description\": \"This is an article.\",          \"body\": \"updated article body here\",          \"status\": \"Draft\",          \"hospitalId\": 1,          \"tags\": [            {              \"value\": \"articletag1\",              \"order\": 0            },            {              \"value\": \"articletag2\",              \"order\": 0            }          ],          \"medias\": [            {              \"mediaType\": \"Photo\",              \"url\": \"string\",              \"thumbnailUrl\": \"string\",              \"description\": \"string\",              \"order\": 0            }          ]      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter articleId: (path)  
     - parameter updateArticleCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdArticlesArticleIdPutWithRequestBuilder(hospitalId: UUID, articleId: UUID, updateArticleCommand: UpdateArticleCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/hospitals/{hospitalId}/articles/{articleId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let articleIdPreEscape = "\(APIHelper.mapValueToPathItem(articleId))"
        let articleIdPostEscape = articleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{articleId}", with: articleIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateArticleCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create an article.
     
     - parameter hospitalId: (path)  
     - parameter createArticleCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1HospitalsHospitalIdArticlesPost(hospitalId: UUID, createArticleCommand: CreateArticleCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: UUID?,_ error: Error?) -> Void)) {
        apiV1HospitalsHospitalIdArticlesPostWithRequestBuilder(hospitalId: hospitalId, createArticleCommand: createArticleCommand).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create an article.
     - POST /api/v1/hospitals/{hospitalId}/articles
     - Sample request:        POST /api/v1/hospitals/1/articles      {          \"title\": \"Samsung Hospital Article\",          \"description\": \"This is an article.\",          \"body\": \"article body here\",          \"status\": \"Draft\",          \"hospitalId\": 1,          \"tags\": [            {              \"value\": \"string\",              \"order\": 0              }          ],          \"medias\": [            {              \"mediaType\": \"Photo\",              \"url\": \"string\",              \"thumbnailUrl\": \"string\",              \"description\": \"string\",              \"order\": 0            }          ]      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter createArticleCommand: (body)  (optional)
     - returns: RequestBuilder<UUID> 
     */
    open class func apiV1HospitalsHospitalIdArticlesPostWithRequestBuilder(hospitalId: UUID, createArticleCommand: CreateArticleCommand? = nil) -> RequestBuilder<UUID> {
        var path = "/api/v1/hospitals/{hospitalId}/articles"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createArticleCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<UUID>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
