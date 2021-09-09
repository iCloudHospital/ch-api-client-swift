# YoutubesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1YoutubesGet**](YoutubesAPI.md#apiv1youtubesget) | **GET** /api/v1/youtubes | Get all youtubes.
[**apiV1YoutubesPost**](YoutubesAPI.md#apiv1youtubespost) | **POST** /api/v1/youtubes | Create an youtube.
[**apiV1YoutubesSlugsSlugGet**](YoutubesAPI.md#apiv1youtubesslugsslugget) | **GET** /api/v1/youtubes/slugs/{slug} | Get youtube by slug.
[**apiV1YoutubesYoutubeIdDelete**](YoutubesAPI.md#apiv1youtubesyoutubeiddelete) | **DELETE** /api/v1/youtubes/{youtubeId} | Delete youtube.
[**apiV1YoutubesYoutubeIdGet**](YoutubesAPI.md#apiv1youtubesyoutubeidget) | **GET** /api/v1/youtubes/{youtubeId} | Get youtube.
[**apiV1YoutubesYoutubeIdPut**](YoutubesAPI.md#apiv1youtubesyoutubeidput) | **PUT** /api/v1/youtubes/{youtubeId} | Update youtube.


# **apiV1YoutubesGet**
```swift
    open class func apiV1YoutubesGet(id: UUID? = nil, title: String? = nil, normalizedTitle: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, tag: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: YoutubesViewModel?, _ error: Error?) -> Void)
```

Get all youtubes.

Sample request:        GET /api/v1/youtubes

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let title = "title_example" // String |  (optional)
let normalizedTitle = "normalizedTitle_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let tag = "tag_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all youtubes.
YoutubesAPI.apiV1YoutubesGet(id: id, title: title, normalizedTitle: normalizedTitle, description: description, marketingType: marketingType, tag: tag, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **normalizedTitle** | **String** |  | [optional] 
 **description** | **String** |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **tag** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**YoutubesViewModel**](YoutubesViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1YoutubesPost**
```swift
    open class func apiV1YoutubesPost(createYoutubeCommand: CreateYoutubeCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create an youtube.

Sample request:        POST /api/v1/youtubes      {          \"title\": \"Samsung Hospital Youtube\",          \"description\": \"This is an youtube.\",          \"body\": \"youtube body here\",          \"status\": \"Draft\",          \"hospitalId\": 1,          \"tags\": [            {              \"value\": \"string\",              \"order\": 0              }          ],          \"medias\": [            {              \"mediaType\": \"Photo\",              \"url\": \"string\",              \"thumbnailUrl\": \"string\",              \"description\": \"string\",              \"order\": 0            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createYoutubeCommand = CreateYoutubeCommand(title: "title_example", description: "description_example", url: "url_example", youtubeTags: [YoutubeTagItemViewModel(youtubeId: 123, tagId: "tagId_example", order: 123)], marketingType: MarketingType()) // CreateYoutubeCommand |  (optional)

// Create an youtube.
YoutubesAPI.apiV1YoutubesPost(createYoutubeCommand: createYoutubeCommand) { (response, error) in
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
 **createYoutubeCommand** | [**CreateYoutubeCommand**](CreateYoutubeCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1YoutubesSlugsSlugGet**
```swift
    open class func apiV1YoutubesSlugsSlugGet(slug: String, completion: @escaping (_ data: YoutubeViewModel?, _ error: Error?) -> Void)
```

Get youtube by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 

// Get youtube by slug.
YoutubesAPI.apiV1YoutubesSlugsSlugGet(slug: slug) { (response, error) in
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

### Return type

[**YoutubeViewModel**](YoutubeViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1YoutubesYoutubeIdDelete**
```swift
    open class func apiV1YoutubesYoutubeIdDelete(youtubeId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete youtube.

Sample request:        DELETE /api/v1/youtubes/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let youtubeId = 987 // UUID | 

// Delete youtube.
YoutubesAPI.apiV1YoutubesYoutubeIdDelete(youtubeId: youtubeId) { (response, error) in
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
 **youtubeId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1YoutubesYoutubeIdGet**
```swift
    open class func apiV1YoutubesYoutubeIdGet(youtubeId: UUID, completion: @escaping (_ data: YoutubeViewModel?, _ error: Error?) -> Void)
```

Get youtube.

Sample request:        GET /api/v1/youtubes/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let youtubeId = 987 // UUID | 

// Get youtube.
YoutubesAPI.apiV1YoutubesYoutubeIdGet(youtubeId: youtubeId) { (response, error) in
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
 **youtubeId** | [**UUID**](.md) |  | 

### Return type

[**YoutubeViewModel**](YoutubeViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1YoutubesYoutubeIdPut**
```swift
    open class func apiV1YoutubesYoutubeIdPut(youtubeId: UUID, updateYoutubeCommand: UpdateYoutubeCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update youtube.

Sample request:        PUT /api/v1/youtubes/1      {          \"title\": \"Samsung Hospital Youtube\",          \"description\": \"This is an youtube.\",                  \"tags\": [            {              \"value\": \"youtubetag1\",              \"order\": 0            },            {              \"value\": \"youtubetag2\",              \"order\": 0            }          ],          \"medias\": [            {              \"mediaType\": \"Photo\",              \"url\": \"string\",              \"thumbnailUrl\": \"string\",              \"description\": \"string\",              \"order\": 0            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let youtubeId = 987 // UUID | 
let updateYoutubeCommand = UpdateYoutubeCommand(title: "title_example", slug: "slug_example", description: "description_example", url: "url_example", youtubeTags: [YoutubeTagItemViewModel(youtubeId: 123, tagId: "tagId_example", order: 123)], marketingType: MarketingType()) // UpdateYoutubeCommand |  (optional)

// Update youtube.
YoutubesAPI.apiV1YoutubesYoutubeIdPut(youtubeId: youtubeId, updateYoutubeCommand: updateYoutubeCommand) { (response, error) in
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
 **youtubeId** | [**UUID**](.md) |  | 
 **updateYoutubeCommand** | [**UpdateYoutubeCommand**](UpdateYoutubeCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

