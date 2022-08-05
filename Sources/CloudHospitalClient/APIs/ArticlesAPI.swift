//
// ArticlesAPI.swift
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

open class ArticlesAPI {

    /**
     Get ArticleContributor.
     
     - parameter articleId: (path)  
     - parameter contributorId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ArticleContributorModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ArticlesArticleIdContributorsContributorIdGet(articleId: UUID, contributorId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<ArticleContributorModel, Error> {
        return Future<ArticleContributorModel, Error>.init { promise in
            apiV2ArticlesArticleIdContributorsContributorIdGetWithRequestBuilder(articleId: articleId, contributorId: contributorId).execute(apiResponseQueue) { result -> Void in
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
     Get ArticleContributor.
     - GET /api/v2/articles/{articleId}/contributors/{contributorId}
     - parameter articleId: (path)  
     - parameter contributorId: (path)  
     - returns: RequestBuilder<ArticleContributorModel> 
     */
    open class func apiV2ArticlesArticleIdContributorsContributorIdGetWithRequestBuilder(articleId: UUID, contributorId: UUID) -> RequestBuilder<ArticleContributorModel> {
        var localVariablePath = "/api/v2/articles/{articleId}/contributors/{contributorId}"
        let articleIdPreEscape = "\(APIHelper.mapValueToPathItem(articleId))"
        let articleIdPostEscape = articleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{articleId}", with: articleIdPostEscape, options: .literal, range: nil)
        let contributorIdPreEscape = "\(APIHelper.mapValueToPathItem(contributorId))"
        let contributorIdPostEscape = contributorIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contributorId}", with: contributorIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ArticleContributorModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     GetAll ArticleContributors.
     
     - parameter articleId: (path)  
     - parameter articleName: (query)  (optional)
     - parameter contributorId: (query)  (optional)
     - parameter contributorName: (query)  (optional)
     - parameter email: (query)  (optional)
     - parameter website: (query)  (optional)
     - parameter contributionType: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ArticleContributorsModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ArticlesArticleIdContributorsGet(articleId: UUID, articleName: String? = nil, contributorId: UUID? = nil, contributorName: String? = nil, email: String? = nil, website: String? = nil, contributionType: ContributionType? = nil, languageCode: String? = nil, showHidden: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<ArticleContributorsModel, Error> {
        return Future<ArticleContributorsModel, Error>.init { promise in
            apiV2ArticlesArticleIdContributorsGetWithRequestBuilder(articleId: articleId, articleName: articleName, contributorId: contributorId, contributorName: contributorName, email: email, website: website, contributionType: contributionType, languageCode: languageCode, showHidden: showHidden, page: page, limit: limit, lastRetrieved: lastRetrieved).execute(apiResponseQueue) { result -> Void in
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
     GetAll ArticleContributors.
     - GET /api/v2/articles/{articleId}/contributors
     - parameter articleId: (path)  
     - parameter articleName: (query)  (optional)
     - parameter contributorId: (query)  (optional)
     - parameter contributorName: (query)  (optional)
     - parameter email: (query)  (optional)
     - parameter website: (query)  (optional)
     - parameter contributionType: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<ArticleContributorsModel> 
     */
    open class func apiV2ArticlesArticleIdContributorsGetWithRequestBuilder(articleId: UUID, articleName: String? = nil, contributorId: UUID? = nil, contributorName: String? = nil, email: String? = nil, website: String? = nil, contributionType: ContributionType? = nil, languageCode: String? = nil, showHidden: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<ArticleContributorsModel> {
        var localVariablePath = "/api/v2/articles/{articleId}/contributors"
        let articleIdPreEscape = "\(APIHelper.mapValueToPathItem(articleId))"
        let articleIdPostEscape = articleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{articleId}", with: articleIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ArticleName": articleName?.encodeToJSON(),
            "ContributorId": contributorId?.encodeToJSON(),
            "ContributorName": contributorName?.encodeToJSON(),
            "Email": email?.encodeToJSON(),
            "Website": website?.encodeToJSON(),
            "ContributionType": contributionType?.encodeToJSON(),
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

        let localVariableRequestBuilder: RequestBuilder<ArticleContributorsModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get Article.
     
     - parameter articleId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ArticleModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ArticlesArticleIdGet(articleId: UUID, languageCode: String? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<ArticleModel, Error> {
        return Future<ArticleModel, Error>.init { promise in
            apiV2ArticlesArticleIdGetWithRequestBuilder(articleId: articleId, languageCode: languageCode).execute(apiResponseQueue) { result -> Void in
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
     Get Article.
     - GET /api/v2/articles/{articleId}
     - parameter articleId: (path)  
     - parameter languageCode: (query)  (optional)
     - returns: RequestBuilder<ArticleModel> 
     */
    open class func apiV2ArticlesArticleIdGetWithRequestBuilder(articleId: UUID, languageCode: String? = nil) -> RequestBuilder<ArticleModel> {
        var localVariablePath = "/api/v2/articles/{articleId}"
        let articleIdPreEscape = "\(APIHelper.mapValueToPathItem(articleId))"
        let articleIdPostEscape = articleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{articleId}", with: articleIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ArticleModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all ArticleMedias.
     
     - parameter articleId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<MediasModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ArticlesArticleIdMediasGet(articleId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<MediasModel, Error> {
        return Future<MediasModel, Error>.init { promise in
            apiV2ArticlesArticleIdMediasGetWithRequestBuilder(articleId: articleId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved).execute(apiResponseQueue) { result -> Void in
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
     Get all ArticleMedias.
     - GET /api/v2/articles/{articleId}/medias
     - parameter articleId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<MediasModel> 
     */
    open class func apiV2ArticlesArticleIdMediasGetWithRequestBuilder(articleId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<MediasModel> {
        var localVariablePath = "/api/v2/articles/{articleId}/medias"
        let articleIdPreEscape = "\(APIHelper.mapValueToPathItem(articleId))"
        let articleIdPostEscape = articleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{articleId}", with: articleIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "MediaType": mediaType?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MediasModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get ArticleMedia.
     
     - parameter articleId: (path)  
     - parameter mediaId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<MediaModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ArticlesArticleIdMediasMediaIdGet(articleId: UUID, mediaId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<MediaModel, Error> {
        return Future<MediaModel, Error>.init { promise in
            apiV2ArticlesArticleIdMediasMediaIdGetWithRequestBuilder(articleId: articleId, mediaId: mediaId).execute(apiResponseQueue) { result -> Void in
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
     Get ArticleMedia.
     - GET /api/v2/articles/{articleId}/medias/{mediaId}
     - parameter articleId: (path)  
     - parameter mediaId: (path)  
     - returns: RequestBuilder<MediaModel> 
     */
    open class func apiV2ArticlesArticleIdMediasMediaIdGetWithRequestBuilder(articleId: UUID, mediaId: UUID) -> RequestBuilder<MediaModel> {
        var localVariablePath = "/api/v2/articles/{articleId}/medias/{mediaId}"
        let articleIdPreEscape = "\(APIHelper.mapValueToPathItem(articleId))"
        let articleIdPostEscape = articleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{articleId}", with: articleIdPostEscape, options: .literal, range: nil)
        let mediaIdPreEscape = "\(APIHelper.mapValueToPathItem(mediaId))"
        let mediaIdPostEscape = mediaIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mediaId}", with: mediaIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MediaModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all ArticleSource.
     
     - parameter articleId: (path)  
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ArticleSourcesModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ArticlesArticleIdSourcesGet(articleId: UUID, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<ArticleSourcesModel, Error> {
        return Future<ArticleSourcesModel, Error>.init { promise in
            apiV2ArticlesArticleIdSourcesGetWithRequestBuilder(articleId: articleId, page: page, limit: limit, lastRetrieved: lastRetrieved).execute(apiResponseQueue) { result -> Void in
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
     Get all ArticleSource.
     - GET /api/v2/articles/{articleId}/sources
     - parameter articleId: (path)  
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<ArticleSourcesModel> 
     */
    open class func apiV2ArticlesArticleIdSourcesGetWithRequestBuilder(articleId: UUID, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<ArticleSourcesModel> {
        var localVariablePath = "/api/v2/articles/{articleId}/sources"
        let articleIdPreEscape = "\(APIHelper.mapValueToPathItem(articleId))"
        let articleIdPostEscape = articleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{articleId}", with: articleIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ArticleSourcesModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get ArticleSource.
     
     - parameter articleId: (path)  
     - parameter sourceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SourceModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ArticlesArticleIdSourcesSourceIdGet(articleId: UUID, sourceId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<SourceModel, Error> {
        return Future<SourceModel, Error>.init { promise in
            apiV2ArticlesArticleIdSourcesSourceIdGetWithRequestBuilder(articleId: articleId, sourceId: sourceId).execute(apiResponseQueue) { result -> Void in
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
     Get ArticleSource.
     - GET /api/v2/articles/{articleId}/sources/{sourceId}
     - parameter articleId: (path)  
     - parameter sourceId: (path)  
     - returns: RequestBuilder<SourceModel> 
     */
    open class func apiV2ArticlesArticleIdSourcesSourceIdGetWithRequestBuilder(articleId: UUID, sourceId: UUID) -> RequestBuilder<SourceModel> {
        var localVariablePath = "/api/v2/articles/{articleId}/sources/{sourceId}"
        let articleIdPreEscape = "\(APIHelper.mapValueToPathItem(articleId))"
        let articleIdPostEscape = articleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{articleId}", with: articleIdPostEscape, options: .literal, range: nil)
        let sourceIdPreEscape = "\(APIHelper.mapValueToPathItem(sourceId))"
        let sourceIdPostEscape = sourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{sourceId}", with: sourceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SourceModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     GetAll ArticleTags.
     
     - parameter articleId: (path)  
     - parameter tagId: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ArticleTagsModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ArticlesArticleIdTagsGet(articleId: UUID, tagId: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<ArticleTagsModel, Error> {
        return Future<ArticleTagsModel, Error>.init { promise in
            apiV2ArticlesArticleIdTagsGetWithRequestBuilder(articleId: articleId, tagId: tagId, page: page, limit: limit, lastRetrieved: lastRetrieved).execute(apiResponseQueue) { result -> Void in
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
     GetAll ArticleTags.
     - GET /api/v2/articles/{articleId}/tags
     - parameter articleId: (path)  
     - parameter tagId: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<ArticleTagsModel> 
     */
    open class func apiV2ArticlesArticleIdTagsGetWithRequestBuilder(articleId: UUID, tagId: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<ArticleTagsModel> {
        var localVariablePath = "/api/v2/articles/{articleId}/tags"
        let articleIdPreEscape = "\(APIHelper.mapValueToPathItem(articleId))"
        let articleIdPostEscape = articleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{articleId}", with: articleIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "TagId": tagId?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ArticleTagsModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get ArticleTag.
     
     - parameter articleId: (path)  
     - parameter tagId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ArticleTagModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ArticlesArticleIdTagsTagIdGet(articleId: UUID, tagId: String, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<ArticleTagModel, Error> {
        return Future<ArticleTagModel, Error>.init { promise in
            apiV2ArticlesArticleIdTagsTagIdGetWithRequestBuilder(articleId: articleId, tagId: tagId).execute(apiResponseQueue) { result -> Void in
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
     Get ArticleTag.
     - GET /api/v2/articles/{articleId}/tags/{tagId}
     - parameter articleId: (path)  
     - parameter tagId: (path)  
     - returns: RequestBuilder<ArticleTagModel> 
     */
    open class func apiV2ArticlesArticleIdTagsTagIdGetWithRequestBuilder(articleId: UUID, tagId: String) -> RequestBuilder<ArticleTagModel> {
        var localVariablePath = "/api/v2/articles/{articleId}/tags/{tagId}"
        let articleIdPreEscape = "\(APIHelper.mapValueToPathItem(articleId))"
        let articleIdPostEscape = articleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{articleId}", with: articleIdPostEscape, options: .literal, range: nil)
        let tagIdPreEscape = "\(APIHelper.mapValueToPathItem(tagId))"
        let tagIdPostEscape = tagIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{tagId}", with: tagIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ArticleTagModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all Articles.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter userId: (query)  (optional)
     - parameter userName: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter tag: (query)  (optional)
     - parameter exceptArticleId: (query)  (optional)
     - parameter exceptHospitalId: (query)  (optional)
     - parameter contributorId: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ArticlesModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ArticlesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, userId: UUID? = nil, userName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, countryId: UUID? = nil, tag: String? = nil, exceptArticleId: UUID? = nil, exceptHospitalId: UUID? = nil, contributorId: UUID? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<ArticlesModel, Error> {
        return Future<ArticlesModel, Error>.init { promise in
            apiV2ArticlesGetWithRequestBuilder(id: id, name: name, description: description, marketingType: marketingType, userId: userId, userName: userName, hospitalId: hospitalId, hospitalName: hospitalName, countryId: countryId, tag: tag, exceptArticleId: exceptArticleId, exceptHospitalId: exceptHospitalId, contributorId: contributorId, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved).execute(apiResponseQueue) { result -> Void in
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
     Get all Articles.
     - GET /api/v2/articles
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter userId: (query)  (optional)
     - parameter userName: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter hospitalName: (query)  (optional)
     - parameter countryId: (query)  (optional)
     - parameter tag: (query)  (optional)
     - parameter exceptArticleId: (query)  (optional)
     - parameter exceptHospitalId: (query)  (optional)
     - parameter contributorId: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<ArticlesModel> 
     */
    open class func apiV2ArticlesGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, userId: UUID? = nil, userName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, countryId: UUID? = nil, tag: String? = nil, exceptArticleId: UUID? = nil, exceptHospitalId: UUID? = nil, contributorId: UUID? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<ArticlesModel> {
        let localVariablePath = "/api/v2/articles"
        let localVariableURLString = CloudHospitalClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "Name": name?.encodeToJSON(),
            "Description": description?.encodeToJSON(),
            "MarketingType": marketingType?.encodeToJSON(),
            "UserId": userId?.encodeToJSON(),
            "UserName": userName?.encodeToJSON(),
            "HospitalId": hospitalId?.encodeToJSON(),
            "HospitalName": hospitalName?.encodeToJSON(),
            "CountryId": countryId?.encodeToJSON(),
            "Tag": tag?.encodeToJSON(),
            "ExceptArticleId": exceptArticleId?.encodeToJSON(),
            "ExceptHospitalId": exceptHospitalId?.encodeToJSON(),
            "ContributorId": contributorId?.encodeToJSON(),
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

        let localVariableRequestBuilder: RequestBuilder<ArticlesModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**

     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<ArticleModel, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2ArticlesSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClient.apiResponseQueue) -> AnyPublisher<ArticleModel, Error> {
        return Future<ArticleModel, Error>.init { promise in
            apiV2ArticlesSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue).execute(apiResponseQueue) { result -> Void in
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
     - GET /api/v2/articles/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: RequestBuilder<ArticleModel> 
     */
    open class func apiV2ArticlesSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> RequestBuilder<ArticleModel> {
        var localVariablePath = "/api/v2/articles/{slug}"
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

        let localVariableRequestBuilder: RequestBuilder<ArticleModel>.Type = CloudHospitalClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}