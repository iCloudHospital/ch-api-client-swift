# TagsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2TagsGet**](TagsAPI.md#apiv2tagsget) | **GET** /api/v2/tags | Get all Tags.
[**apiV2TagsTagIdGet**](TagsAPI.md#apiv2tagstagidget) | **GET** /api/v2/tags/{tagId} | Get Tag.


# **apiV2TagsGet**
```swift
    open class func apiV2TagsGet(tagId: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: TagsModel?, _ error: Error?) -> Void)
```

Get all Tags.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let tagId = "tagId_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all Tags.
TagsAPI.apiV2TagsGet(tagId: tagId, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **tagId** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**TagsModel**](TagsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TagsTagIdGet**
```swift
    open class func apiV2TagsTagIdGet(tagId: String, releatedTags: Bool? = nil, completion: @escaping (_ data: TagModel?, _ error: Error?) -> Void)
```

Get Tag.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let tagId = "tagId_example" // String | 
let releatedTags = true // Bool |  (optional)

// Get Tag.
TagsAPI.apiV2TagsTagIdGet(tagId: tagId, releatedTags: releatedTags) { (response, error) in
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
 **tagId** | **String** |  | 
 **releatedTags** | **Bool** |  | [optional] 

### Return type

[**TagModel**](TagModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

