# LanguagesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2LanguagesCodeGet**](LanguagesAPI.md#apiv2languagescodeget) | **GET** /api/v2/languages/{code} | Get Language by code.
[**apiV2LanguagesGet**](LanguagesAPI.md#apiv2languagesget) | **GET** /api/v2/languages | Get all Languages.
[**apiV2LanguagesIdGet**](LanguagesAPI.md#apiv2languagesidget) | **GET** /api/v2/languages/{id} | Get Language.


# **apiV2LanguagesCodeGet**
```swift
    open class func apiV2LanguagesCodeGet(code: String, completion: @escaping (_ data: LanguageModel?, _ error: Error?) -> Void)
```

Get Language by code.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let code = "code_example" // String | 

// Get Language by code.
LanguagesAPI.apiV2LanguagesCodeGet(code: code) { (response, error) in
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
 **code** | **String** |  | 

### Return type

[**LanguageModel**](LanguageModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2LanguagesGet**
```swift
    open class func apiV2LanguagesGet(id: UUID? = nil, name: String? = nil, code: String? = nil, description: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: LanguagesModel?, _ error: Error?) -> Void)
```

Get all Languages.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let code = "code_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all Languages.
LanguagesAPI.apiV2LanguagesGet(id: id, name: name, code: code, description: description, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **id** | **UUID** |  | [optional] 
 **name** | **String** |  | [optional] 
 **code** | **String** |  | [optional] 
 **description** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**LanguagesModel**](LanguagesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2LanguagesIdGet**
```swift
    open class func apiV2LanguagesIdGet(id: UUID, completion: @escaping (_ data: LanguageModel?, _ error: Error?) -> Void)
```

Get Language.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID | 

// Get Language.
LanguagesAPI.apiV2LanguagesIdGet(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

[**LanguageModel**](LanguageModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

