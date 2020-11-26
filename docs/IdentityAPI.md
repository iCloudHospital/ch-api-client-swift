# IdentityAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1IdentityGet**](IdentityAPI.md#apiv1identityget) | **GET** /api/v1/identity | Get current user&#39;s Identity claims.


# **apiV1IdentityGet**
```swift
    open class func apiV1IdentityGet(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get current user's Identity claims.

Smaple request:        GET /api/v1/identity

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


// Get current user's Identity claims.
IdentityAPI.apiV1IdentityGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

