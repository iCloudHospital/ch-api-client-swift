# CacheAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1CacheKeyDelete**](CacheAPI.md#apiv1cachekeydelete) | **DELETE** /api/v1/cache/{key} | Remove cache with specified key


# **apiV1CacheKeyDelete**
```swift
    open class func apiV1CacheKeyDelete(key: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Remove cache with specified key

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let key = "key_example" // String | 

// Remove cache with specified key
CacheAPI.apiV1CacheKeyDelete(key: key) { (response, error) in
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
 **key** | **String** |  | 

### Return type

**Bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

