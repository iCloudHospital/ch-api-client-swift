# ArticlesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ArticlesArticleIdContributorsContributorIdGet**](ArticlesAPI.md#apiv2articlesarticleidcontributorscontributoridget) | **GET** /api/v2/articles/{articleId}/contributors/{contributorId} | Get ArticleContributor.
[**apiV2ArticlesArticleIdContributorsGet**](ArticlesAPI.md#apiv2articlesarticleidcontributorsget) | **GET** /api/v2/articles/{articleId}/contributors | GetAll ArticleContributors.
[**apiV2ArticlesArticleIdGet**](ArticlesAPI.md#apiv2articlesarticleidget) | **GET** /api/v2/articles/{articleId} | Get Article.
[**apiV2ArticlesArticleIdMediasGet**](ArticlesAPI.md#apiv2articlesarticleidmediasget) | **GET** /api/v2/articles/{articleId}/medias | Get all ArticleMedias.
[**apiV2ArticlesArticleIdMediasMediaIdGet**](ArticlesAPI.md#apiv2articlesarticleidmediasmediaidget) | **GET** /api/v2/articles/{articleId}/medias/{mediaId} | Get ArticleMedia.
[**apiV2ArticlesArticleIdSourcesGet**](ArticlesAPI.md#apiv2articlesarticleidsourcesget) | **GET** /api/v2/articles/{articleId}/sources | Get all ArticleSource.
[**apiV2ArticlesArticleIdSourcesSourceIdGet**](ArticlesAPI.md#apiv2articlesarticleidsourcessourceidget) | **GET** /api/v2/articles/{articleId}/sources/{sourceId} | Get ArticleSource.
[**apiV2ArticlesArticleIdTagsGet**](ArticlesAPI.md#apiv2articlesarticleidtagsget) | **GET** /api/v2/articles/{articleId}/tags | GetAll ArticleTags.
[**apiV2ArticlesArticleIdTagsTagIdGet**](ArticlesAPI.md#apiv2articlesarticleidtagstagidget) | **GET** /api/v2/articles/{articleId}/tags/{tagId} | Get ArticleTag.
[**apiV2ArticlesGet**](ArticlesAPI.md#apiv2articlesget) | **GET** /api/v2/articles | Get all Articles.
[**apiV2ArticlesSlugGet**](ArticlesAPI.md#apiv2articlesslugget) | **GET** /api/v2/articles/{slug} | 


# **apiV2ArticlesArticleIdContributorsContributorIdGet**
```swift
    open class func apiV2ArticlesArticleIdContributorsContributorIdGet(articleId: UUID, contributorId: UUID, completion: @escaping (_ data: ArticleContributorModel?, _ error: Error?) -> Void)
```

Get ArticleContributor.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let articleId = 987 // UUID | 
let contributorId = 987 // UUID | 

// Get ArticleContributor.
ArticlesAPI.apiV2ArticlesArticleIdContributorsContributorIdGet(articleId: articleId, contributorId: contributorId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleId** | **UUID** |  | 
 **contributorId** | **UUID** |  | 

### Return type

[**ArticleContributorModel**](ArticleContributorModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ArticlesArticleIdContributorsGet**
```swift
    open class func apiV2ArticlesArticleIdContributorsGet(articleId: UUID, articleName: String? = nil, contributorId: UUID? = nil, contributorName: String? = nil, email: String? = nil, website: String? = nil, contributionType: ContributionType? = nil, languageCode: String? = nil, showHidden: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: ArticleContributorsModel?, _ error: Error?) -> Void)
```

GetAll ArticleContributors.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let articleId = 987 // UUID | 
let articleName = "articleName_example" // String |  (optional)
let contributorId = 987 // UUID |  (optional)
let contributorName = "contributorName_example" // String |  (optional)
let email = "email_example" // String |  (optional)
let website = "website_example" // String |  (optional)
let contributionType = ContributionType() // ContributionType |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let showHidden = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// GetAll ArticleContributors.
ArticlesAPI.apiV2ArticlesArticleIdContributorsGet(articleId: articleId, articleName: articleName, contributorId: contributorId, contributorName: contributorName, email: email, website: website, contributionType: contributionType, languageCode: languageCode, showHidden: showHidden, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleId** | **UUID** |  | 
 **articleName** | **String** |  | [optional] 
 **contributorId** | **UUID** |  | [optional] 
 **contributorName** | **String** |  | [optional] 
 **email** | **String** |  | [optional] 
 **website** | **String** |  | [optional] 
 **contributionType** | [**ContributionType**](.md) |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **showHidden** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**ArticleContributorsModel**](ArticleContributorsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ArticlesArticleIdGet**
```swift
    open class func apiV2ArticlesArticleIdGet(articleId: UUID, languageCode: String? = nil, completion: @escaping (_ data: ArticleModel?, _ error: Error?) -> Void)
```

Get Article.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let articleId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)

// Get Article.
ArticlesAPI.apiV2ArticlesArticleIdGet(articleId: articleId, languageCode: languageCode) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleId** | **UUID** |  | 
 **languageCode** | **String** |  | [optional] 

### Return type

[**ArticleModel**](ArticleModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ArticlesArticleIdMediasGet**
```swift
    open class func apiV2ArticlesArticleIdMediasGet(articleId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: MediasModel?, _ error: Error?) -> Void)
```

Get all ArticleMedias.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let articleId = 987 // UUID | 
let id = 987 // UUID |  (optional)
let mediaType = MediaType() // MediaType |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all ArticleMedias.
ArticlesAPI.apiV2ArticlesArticleIdMediasGet(articleId: articleId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleId** | **UUID** |  | 
 **id** | **UUID** |  | [optional] 
 **mediaType** | [**MediaType**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**MediasModel**](MediasModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ArticlesArticleIdMediasMediaIdGet**
```swift
    open class func apiV2ArticlesArticleIdMediasMediaIdGet(articleId: UUID, mediaId: UUID, completion: @escaping (_ data: MediaModel?, _ error: Error?) -> Void)
```

Get ArticleMedia.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let articleId = 987 // UUID | 
let mediaId = 987 // UUID | 

// Get ArticleMedia.
ArticlesAPI.apiV2ArticlesArticleIdMediasMediaIdGet(articleId: articleId, mediaId: mediaId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleId** | **UUID** |  | 
 **mediaId** | **UUID** |  | 

### Return type

[**MediaModel**](MediaModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ArticlesArticleIdSourcesGet**
```swift
    open class func apiV2ArticlesArticleIdSourcesGet(articleId: UUID, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: ArticleSourcesModel?, _ error: Error?) -> Void)
```

Get all ArticleSource.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let articleId = 987 // UUID | 
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all ArticleSource.
ArticlesAPI.apiV2ArticlesArticleIdSourcesGet(articleId: articleId, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleId** | **UUID** |  | 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**ArticleSourcesModel**](ArticleSourcesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ArticlesArticleIdSourcesSourceIdGet**
```swift
    open class func apiV2ArticlesArticleIdSourcesSourceIdGet(articleId: UUID, sourceId: UUID, completion: @escaping (_ data: SourceModel?, _ error: Error?) -> Void)
```

Get ArticleSource.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let articleId = 987 // UUID | 
let sourceId = 987 // UUID | 

// Get ArticleSource.
ArticlesAPI.apiV2ArticlesArticleIdSourcesSourceIdGet(articleId: articleId, sourceId: sourceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleId** | **UUID** |  | 
 **sourceId** | **UUID** |  | 

### Return type

[**SourceModel**](SourceModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ArticlesArticleIdTagsGet**
```swift
    open class func apiV2ArticlesArticleIdTagsGet(articleId: UUID, tagId: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: ArticleTagsModel?, _ error: Error?) -> Void)
```

GetAll ArticleTags.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let articleId = 987 // UUID | 
let tagId = "tagId_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// GetAll ArticleTags.
ArticlesAPI.apiV2ArticlesArticleIdTagsGet(articleId: articleId, tagId: tagId, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleId** | **UUID** |  | 
 **tagId** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**ArticleTagsModel**](ArticleTagsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ArticlesArticleIdTagsTagIdGet**
```swift
    open class func apiV2ArticlesArticleIdTagsTagIdGet(articleId: UUID, tagId: String, completion: @escaping (_ data: ArticleTagModel?, _ error: Error?) -> Void)
```

Get ArticleTag.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let articleId = 987 // UUID | 
let tagId = "tagId_example" // String | 

// Get ArticleTag.
ArticlesAPI.apiV2ArticlesArticleIdTagsTagIdGet(articleId: articleId, tagId: tagId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleId** | **UUID** |  | 
 **tagId** | **String** |  | 

### Return type

[**ArticleTagModel**](ArticleTagModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ArticlesGet**
```swift
    open class func apiV2ArticlesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, userId: UUID? = nil, userName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, countryId: UUID? = nil, tag: String? = nil, exceptArticleId: UUID? = nil, exceptHospitalId: UUID? = nil, contributorId: UUID? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: ArticlesModel?, _ error: Error?) -> Void)
```

Get all Articles.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let userId = 987 // UUID |  (optional)
let userName = "userName_example" // String |  (optional)
let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let countryId = 987 // UUID |  (optional)
let tag = "tag_example" // String |  (optional)
let exceptArticleId = 987 // UUID |  (optional)
let exceptHospitalId = 987 // UUID |  (optional)
let contributorId = 987 // UUID |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let showHidden = true // Bool |  (optional)
let returnDefaultValue = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all Articles.
ArticlesAPI.apiV2ArticlesGet(id: id, name: name, description: description, marketingType: marketingType, userId: userId, userName: userName, hospitalId: hospitalId, hospitalName: hospitalName, countryId: countryId, tag: tag, exceptArticleId: exceptArticleId, exceptHospitalId: exceptHospitalId, contributorId: contributorId, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** |  | [optional] 
 **name** | **String** |  | [optional] 
 **description** | **String** |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **userId** | **UUID** |  | [optional] 
 **userName** | **String** |  | [optional] 
 **hospitalId** | **UUID** |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **countryId** | **UUID** |  | [optional] 
 **tag** | **String** |  | [optional] 
 **exceptArticleId** | **UUID** |  | [optional] 
 **exceptHospitalId** | **UUID** |  | [optional] 
 **contributorId** | **UUID** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **showHidden** | **Bool** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**ArticlesModel**](ArticlesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ArticlesSlugGet**
```swift
    open class func apiV2ArticlesSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: ArticleModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

// 
ArticlesAPI.apiV2ArticlesSlugGet(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String** |  | 
 **languageCode** | **String** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 

### Return type

[**ArticleModel**](ArticleModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

