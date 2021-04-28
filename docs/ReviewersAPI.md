# ReviewersAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ReviewersGet**](ReviewersAPI.md#apiv1reviewersget) | **GET** /api/v1/reviewers | Get all reviewers.
[**apiV1ReviewersReviewerIdGet**](ReviewersAPI.md#apiv1reviewersrevieweridget) | **GET** /api/v1/reviewers/{reviewerId} | Get reviewer.
[**apiV1ReviewersSlugsSlugGet**](ReviewersAPI.md#apiv1reviewersslugsslugget) | **GET** /api/v1/reviewers/slugs/{slug} | Get reviewer by slug.


# **apiV1ReviewersGet**
```swift
    open class func apiV1ReviewersGet(id: UUID? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: ReviewersViewModel?, _ error: Error?) -> Void)
```

Get all reviewers.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all reviewers.
ReviewersAPI.apiV1ReviewersGet(id: id, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **languageCode** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**ReviewersViewModel**](ReviewersViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ReviewersReviewerIdGet**
```swift
    open class func apiV1ReviewersReviewerIdGet(reviewerId: UUID, languageCode: String? = nil, completion: @escaping (_ data: ReviewerViewModel?, _ error: Error?) -> Void)
```

Get reviewer.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let reviewerId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional) (default to "")

// Get reviewer.
ReviewersAPI.apiV1ReviewersReviewerIdGet(reviewerId: reviewerId, languageCode: languageCode) { (response, error) in
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
 **reviewerId** | [**UUID**](.md) |  | 
 **languageCode** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**ReviewerViewModel**](ReviewerViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ReviewersSlugsSlugGet**
```swift
    open class func apiV1ReviewersSlugsSlugGet(slug: String, languageCode: String? = nil, completion: @escaping (_ data: ReviewerViewModel?, _ error: Error?) -> Void)
```

Get reviewer by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional) (default to "")

// Get reviewer by slug.
ReviewersAPI.apiV1ReviewersSlugsSlugGet(slug: slug, languageCode: languageCode) { (response, error) in
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

[**ReviewerViewModel**](ReviewerViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

