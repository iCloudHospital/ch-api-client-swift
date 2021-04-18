# ArticlesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1HospitalsArticlesGet**](ArticlesAPI.md#apiv1hospitalsarticlesget) | **GET** /api/v1/hospitals/articles | Get all articles.
[**apiV1HospitalsArticlesSlugsSlugGet**](ArticlesAPI.md#apiv1hospitalsarticlesslugsslugget) | **GET** /api/v1/hospitals/articles/slugs/{slug} | Get article by slug.
[**apiV1HospitalsHospitalIdArticlesArticleIdDelete**](ArticlesAPI.md#apiv1hospitalshospitalidarticlesarticleiddelete) | **DELETE** /api/v1/hospitals/{hospitalId}/articles/{articleId} | Delete article.
[**apiV1HospitalsHospitalIdArticlesArticleIdGet**](ArticlesAPI.md#apiv1hospitalshospitalidarticlesarticleidget) | **GET** /api/v1/hospitals/{hospitalId}/articles/{articleId} | Get article.
[**apiV1HospitalsHospitalIdArticlesArticleIdPut**](ArticlesAPI.md#apiv1hospitalshospitalidarticlesarticleidput) | **PUT** /api/v1/hospitals/{hospitalId}/articles/{articleId} | Update article.
[**apiV1HospitalsHospitalIdArticlesPost**](ArticlesAPI.md#apiv1hospitalshospitalidarticlespost) | **POST** /api/v1/hospitals/{hospitalId}/articles | Create an article.


# **apiV1HospitalsArticlesGet**
```swift
    open class func apiV1HospitalsArticlesGet(id: UUID? = nil, title: String? = nil, description: String? = nil, status: ArticleStatus? = nil, marketingType: MarketingType? = nil, userId: UUID? = nil, userName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, countryId: UUID? = nil, tag: String? = nil, exceptHospitalId: UUID? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: ArticlesViewModel?, _ error: Error?) -> Void)
```

Get all articles.

Sample request:        GET /api/v1/hospitals/1/articles

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let title = "title_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let status = ArticleStatus() // ArticleStatus |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let userId = 987 // UUID |  (optional)
let userName = "userName_example" // String |  (optional)
let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let countryId = 987 // UUID |  (optional)
let tag = "tag_example" // String |  (optional)
let exceptHospitalId = 987 // UUID |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all articles.
ArticlesAPI.apiV1HospitalsArticlesGet(id: id, title: title, description: description, status: status, marketingType: marketingType, userId: userId, userName: userName, hospitalId: hospitalId, hospitalName: hospitalName, countryId: countryId, tag: tag, exceptHospitalId: exceptHospitalId, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **id** | [**UUID**](.md) |  | [optional] 
 **title** | **String** |  | [optional] 
 **description** | **String** |  | [optional] 
 **status** | [**ArticleStatus**](.md) |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **userId** | [**UUID**](.md) |  | [optional] 
 **userName** | **String** |  | [optional] 
 **hospitalId** | [**UUID**](.md) |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **countryId** | [**UUID**](.md) |  | [optional] 
 **tag** | **String** |  | [optional] 
 **exceptHospitalId** | [**UUID**](.md) |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**ArticlesViewModel**](ArticlesViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsArticlesSlugsSlugGet**
```swift
    open class func apiV1HospitalsArticlesSlugsSlugGet(slug: String, languageCode: String? = nil, completion: @escaping (_ data: ArticleViewModel?, _ error: Error?) -> Void)
```

Get article by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional) (default to "")

// Get article by slug.
ArticlesAPI.apiV1HospitalsArticlesSlugsSlugGet(slug: slug, languageCode: languageCode) { (response, error) in
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
 **languageCode** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**ArticleViewModel**](ArticleViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdArticlesArticleIdDelete**
```swift
    open class func apiV1HospitalsHospitalIdArticlesArticleIdDelete(hospitalId: UUID, articleId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete article.

Sample request:        DELETE /api/v1/hospitals/1/articles/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let articleId = 987 // UUID | 

// Delete article.
ArticlesAPI.apiV1HospitalsHospitalIdArticlesArticleIdDelete(hospitalId: hospitalId, articleId: articleId) { (response, error) in
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
 **hospitalId** | [**UUID**](.md) |  | 
 **articleId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdArticlesArticleIdGet**
```swift
    open class func apiV1HospitalsHospitalIdArticlesArticleIdGet(hospitalId: UUID, articleId: UUID, languageCode: String? = nil, completion: @escaping (_ data: ArticleViewModel?, _ error: Error?) -> Void)
```

Get article.

Sample request:        GET /api/v1/hospitals/1/articles/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let articleId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional) (default to "")

// Get article.
ArticlesAPI.apiV1HospitalsHospitalIdArticlesArticleIdGet(hospitalId: hospitalId, articleId: articleId, languageCode: languageCode) { (response, error) in
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
 **hospitalId** | [**UUID**](.md) |  | 
 **articleId** | [**UUID**](.md) |  | 
 **languageCode** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**ArticleViewModel**](ArticleViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdArticlesArticleIdPut**
```swift
    open class func apiV1HospitalsHospitalIdArticlesArticleIdPut(hospitalId: UUID, articleId: UUID, updateArticleCommand: UpdateArticleCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update article.

Sample request:        PUT /api/v1/hospitals/1/articles/1      {          \"title\": \"Samsung Hospital Article\",          \"description\": \"This is an article.\",          \"body\": \"updated article body here\",          \"status\": \"Draft\",          \"hospitalId\": 1,          \"tags\": [            {              \"value\": \"articletag1\",              \"order\": 0            },            {              \"value\": \"articletag2\",              \"order\": 0            }          ],          \"medias\": [            {              \"mediaType\": \"Photo\",              \"url\": \"string\",              \"thumbnailUrl\": \"string\",              \"description\": \"string\",              \"order\": 0            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let articleId = 987 // UUID | 
let updateArticleCommand = UpdateArticleCommand(title: "title_example", slug: "slug_example", description: "description_example", body: "body_example", status: ArticleStatus(), marketingType: ArticleStatus(), hospitalSlug: "hospitalSlug_example", articleTags: [{...}], medias: [{...}]) // UpdateArticleCommand |  (optional)

// Update article.
ArticlesAPI.apiV1HospitalsHospitalIdArticlesArticleIdPut(hospitalId: hospitalId, articleId: articleId, updateArticleCommand: updateArticleCommand) { (response, error) in
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
 **hospitalId** | [**UUID**](.md) |  | 
 **articleId** | [**UUID**](.md) |  | 
 **updateArticleCommand** | [**UpdateArticleCommand**](UpdateArticleCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdArticlesPost**
```swift
    open class func apiV1HospitalsHospitalIdArticlesPost(hospitalId: UUID, createArticleCommand: CreateArticleCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create an article.

Sample request:        POST /api/v1/hospitals/1/articles      {          \"title\": \"Samsung Hospital Article\",          \"description\": \"This is an article.\",          \"body\": \"article body here\",          \"status\": \"Draft\",          \"hospitalId\": 1,          \"tags\": [            {              \"value\": \"string\",              \"order\": 0              }          ],          \"medias\": [            {              \"mediaType\": \"Photo\",              \"url\": \"string\",              \"thumbnailUrl\": \"string\",              \"description\": \"string\",              \"order\": 0            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let createArticleCommand = CreateArticleCommand(title: "title_example", description: "description_example", body: "body_example", status: ArticleStatus(), marketingType: ArticleStatus(), articleTags: [{...}], medias: [{...}]) // CreateArticleCommand |  (optional)

// Create an article.
ArticlesAPI.apiV1HospitalsHospitalIdArticlesPost(hospitalId: hospitalId, createArticleCommand: createArticleCommand) { (response, error) in
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
 **hospitalId** | [**UUID**](.md) |  | 
 **createArticleCommand** | [**CreateArticleCommand**](CreateArticleCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

