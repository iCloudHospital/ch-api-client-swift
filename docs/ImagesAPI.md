# ImagesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ImagesPost**](ImagesAPI.md#apiv2imagespost) | **POST** /api/v2/images | 


# **apiV2ImagesPost**
```swift
    open class func apiV2ImagesPost(files: [URL]? = nil, completion: @escaping (_ data: [MediaModel]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let files = [URL(string: "https://example.com")!] // [URL] |  (optional)

ImagesAPI.apiV2ImagesPost(files: files) { (response, error) in
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
 **files** | [**[URL]**](URL.md) |  | [optional] 

### Return type

[**[MediaModel]**](MediaModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

