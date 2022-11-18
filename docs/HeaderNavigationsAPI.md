# HeaderNavigationsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2HeadernavigationsLanguageCodeGet**](HeaderNavigationsAPI.md#apiv2headernavigationslanguagecodeget) | **GET** /api/v2/headernavigations/{languageCode} | Get all HeaderNavigationItems


# **apiV2HeadernavigationsLanguageCodeGet**
```swift
    open class func apiV2HeadernavigationsLanguageCodeGet(languageCode: String, completion: @escaping (_ data: [HeaderNavigationItemModel]?, _ error: Error?) -> Void)
```

Get all HeaderNavigationItems

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let languageCode = "languageCode_example" // String | 

// Get all HeaderNavigationItems
HeaderNavigationsAPI.apiV2HeadernavigationsLanguageCodeGet(languageCode: languageCode) { (response, error) in
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
 **languageCode** | **String** |  | 

### Return type

[**[HeaderNavigationItemModel]**](HeaderNavigationItemModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

