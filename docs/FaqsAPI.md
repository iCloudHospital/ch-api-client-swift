# FaqsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1FaqsFaqIdGet**](FaqsAPI.md#apiv1faqsfaqidget) | **GET** /api/v1/faqs/{faqId} | Get faq.
[**apiV1FaqsGet**](FaqsAPI.md#apiv1faqsget) | **GET** /api/v1/faqs | Get all faq.
[**apiV1FaqsSlugsSlugGet**](FaqsAPI.md#apiv1faqsslugsslugget) | **GET** /api/v1/faqs/slugs/{slug} | Get faq by slug.


# **apiV1FaqsFaqIdGet**
```swift
    open class func apiV1FaqsFaqIdGet(faqId: UUID, completion: @escaping (_ data: FaqViewModel?, _ error: Error?) -> Void)
```

Get faq.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let faqId = 987 // UUID | 

// Get faq.
FaqsAPI.apiV1FaqsFaqIdGet(faqId: faqId) { (response, error) in
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
 **faqId** | [**UUID**](.md) |  | 

### Return type

[**FaqViewModel**](FaqViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1FaqsGet**
```swift
    open class func apiV1FaqsGet(id: UUID? = nil, title: String? = nil, content: String? = nil, categoryId: UUID? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: FaqsViewModel?, _ error: Error?) -> Void)
```

Get all faq.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let title = "title_example" // String |  (optional)
let content = "content_example" // String |  (optional)
let categoryId = 987 // UUID |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all faq.
FaqsAPI.apiV1FaqsGet(id: id, title: title, content: content, categoryId: categoryId, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **content** | **String** |  | [optional] 
 **categoryId** | [**UUID**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**FaqsViewModel**](FaqsViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1FaqsSlugsSlugGet**
```swift
    open class func apiV1FaqsSlugsSlugGet(slug: String, completion: @escaping (_ data: FaqViewModel?, _ error: Error?) -> Void)
```

Get faq by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 

// Get faq by slug.
FaqsAPI.apiV1FaqsSlugsSlugGet(slug: slug) { (response, error) in
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

[**FaqViewModel**](FaqViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

