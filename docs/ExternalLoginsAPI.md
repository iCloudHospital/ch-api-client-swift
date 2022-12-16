# ExternalLoginsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ExternalLoginsDelete**](ExternalLoginsAPI.md#apiv1externalloginsdelete) | **DELETE** /api/v1/externalLogins | 
[**apiV1ExternalLoginsGet**](ExternalLoginsAPI.md#apiv1externalloginsget) | **GET** /api/v1/externalLogins | 
[**apiV1ExternalLoginsPost**](ExternalLoginsAPI.md#apiv1externalloginspost) | **POST** /api/v1/externalLogins | 
[**apiV1ExternalLoginsProviderKeyDelete**](ExternalLoginsAPI.md#apiv1externalloginsproviderkeydelete) | **DELETE** /api/v1/externalLogins/{provider}/{key} | 
[**apiV1ExternalLoginsProviderKeyGet**](ExternalLoginsAPI.md#apiv1externalloginsproviderkeyget) | **GET** /api/v1/externalLogins/{provider}/{key} | 
[**facebookPatch**](ExternalLoginsAPI.md#facebookpatch) | **PATCH** /facebook | 


# **apiV1ExternalLoginsDelete**
```swift
    open class func apiV1ExternalLoginsDelete(externalLoginInfo: ExternalLoginInfo? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let externalLoginInfo = ExternalLoginInfo(loginProvider: "loginProvider_example", providerKey: "providerKey_example", providerDisplayName: "providerDisplayName_example") // ExternalLoginInfo |  (optional)

ExternalLoginsAPI.apiV1ExternalLoginsDelete(externalLoginInfo: externalLoginInfo) { (response, error) in
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
 **externalLoginInfo** | [**ExternalLoginInfo**](ExternalLoginInfo.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ExternalLoginsGet**
```swift
    open class func apiV1ExternalLoginsGet(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


ExternalLoginsAPI.apiV1ExternalLoginsGet() { (response, error) in
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

# **apiV1ExternalLoginsPost**
```swift
    open class func apiV1ExternalLoginsPost(externalLoginInfo: ExternalLoginInfo? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let externalLoginInfo = ExternalLoginInfo(loginProvider: "loginProvider_example", providerKey: "providerKey_example", providerDisplayName: "providerDisplayName_example") // ExternalLoginInfo |  (optional)

ExternalLoginsAPI.apiV1ExternalLoginsPost(externalLoginInfo: externalLoginInfo) { (response, error) in
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
 **externalLoginInfo** | [**ExternalLoginInfo**](ExternalLoginInfo.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ExternalLoginsProviderKeyDelete**
```swift
    open class func apiV1ExternalLoginsProviderKeyDelete(provider: String, key: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let provider = "provider_example" // String | 
let key = "key_example" // String | 

ExternalLoginsAPI.apiV1ExternalLoginsProviderKeyDelete(provider: provider, key: key) { (response, error) in
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
 **provider** | **String** |  | 
 **key** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ExternalLoginsProviderKeyGet**
```swift
    open class func apiV1ExternalLoginsProviderKeyGet(provider: String, key: String, completion: @escaping (_ data: ExternalLoginListViewModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let provider = "provider_example" // String | 
let key = "key_example" // String | 

ExternalLoginsAPI.apiV1ExternalLoginsProviderKeyGet(provider: provider, key: key) { (response, error) in
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
 **provider** | **String** |  | 
 **key** | **String** |  | 

### Return type

[**ExternalLoginListViewModel**](ExternalLoginListViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **facebookPatch**
```swift
    open class func facebookPatch(apiVersion: String? = nil, facebookUserDataDeletionRequestModel: FacebookUserDataDeletionRequestModel? = nil, completion: @escaping (_ data: FacebookUserDataDeletionResponseModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let apiVersion = "apiVersion_example" // String |  (optional)
let facebookUserDataDeletionRequestModel = FacebookUserDataDeletionRequestModel(payload: "payload_example") // FacebookUserDataDeletionRequestModel |  (optional)

ExternalLoginsAPI.facebookPatch(apiVersion: apiVersion, facebookUserDataDeletionRequestModel: facebookUserDataDeletionRequestModel) { (response, error) in
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
 **apiVersion** | **String** |  | [optional] 
 **facebookUserDataDeletionRequestModel** | [**FacebookUserDataDeletionRequestModel**](FacebookUserDataDeletionRequestModel.md) |  | [optional] 

### Return type

[**FacebookUserDataDeletionResponseModel**](FacebookUserDataDeletionResponseModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

