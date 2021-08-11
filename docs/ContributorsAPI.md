# ContributorsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ContributorsContributorIdGet**](ContributorsAPI.md#apiv1contributorscontributoridget) | **GET** /api/v1/contributors/{contributorId} | Get contributor.
[**apiV1ContributorsGet**](ContributorsAPI.md#apiv1contributorsget) | **GET** /api/v1/contributors | Get all contributors.
[**apiV1ContributorsSlugsSlugGet**](ContributorsAPI.md#apiv1contributorsslugsslugget) | **GET** /api/v1/contributors/slugs/{slug} | Get contributor by slug.


# **apiV1ContributorsContributorIdGet**
```swift
    open class func apiV1ContributorsContributorIdGet(contributorId: UUID, languageCode: String? = nil, completion: @escaping (_ data: ContributorViewModel?, _ error: Error?) -> Void)
```

Get contributor.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let contributorId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional) (default to "")

// Get contributor.
ContributorsAPI.apiV1ContributorsContributorIdGet(contributorId: contributorId, languageCode: languageCode) { (response, error) in
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
 **contributorId** | [**UUID**](.md) |  | 
 **languageCode** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**ContributorViewModel**](ContributorViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ContributorsGet**
```swift
    open class func apiV1ContributorsGet(id: UUID? = nil, languageCode: String? = nil, interviewerOnly: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: ContributorsViewModel?, _ error: Error?) -> Void)
```

Get all contributors.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let interviewerOnly = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all contributors.
ContributorsAPI.apiV1ContributorsGet(id: id, languageCode: languageCode, interviewerOnly: interviewerOnly, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **interviewerOnly** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**ContributorsViewModel**](ContributorsViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ContributorsSlugsSlugGet**
```swift
    open class func apiV1ContributorsSlugsSlugGet(slug: String, languageCode: String? = nil, completion: @escaping (_ data: ContributorViewModel?, _ error: Error?) -> Void)
```

Get contributor by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional) (default to "")

// Get contributor by slug.
ContributorsAPI.apiV1ContributorsSlugsSlugGet(slug: slug, languageCode: languageCode) { (response, error) in
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

[**ContributorViewModel**](ContributorViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

