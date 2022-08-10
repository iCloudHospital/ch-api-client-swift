# AppVersionAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2AppversionPlatformGet**](AppVersionAPI.md#apiv2appversionplatformget) | **GET** /api/v2/appversion/{platform} | 


# **apiV2AppversionPlatformGet**
```swift
    open class func apiV2AppversionPlatformGet(platform: Platform, completion: @escaping (_ data: AppVersionModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let platform = Platform() // Platform | 

AppVersionAPI.apiV2AppversionPlatformGet(platform: platform) { (response, error) in
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
 **platform** | [**Platform**](.md) |  | 

### Return type

[**AppVersionModel**](AppVersionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

