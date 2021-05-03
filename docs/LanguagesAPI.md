# LanguagesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1LanguagesCodeGet**](LanguagesAPI.md#apiv1languagescodeget) | **GET** /api/v1/languages/{code} | Get a language by code
[**apiV1LanguagesGet**](LanguagesAPI.md#apiv1languagesget) | **GET** /api/v1/languages | Get all languages.
[**apiV1LanguagesIdGet**](LanguagesAPI.md#apiv1languagesidget) | **GET** /api/v1/languages/{id} | Get a language by id


# **apiV1LanguagesCodeGet**
```swift
    open class func apiV1LanguagesCodeGet(code: String, completion: @escaping (_ data: LanguageViewModel?, _ error: Error?) -> Void)
```

Get a language by code

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let code = "code_example" // String | 

// Get a language by code
LanguagesAPI.apiV1LanguagesCodeGet(code: code) { (response, error) in
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

[**LanguageViewModel**](LanguageViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1LanguagesGet**
```swift
    open class func apiV1LanguagesGet(id: UUID? = nil, name: String? = nil, code: String? = nil, description: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: LanguagesViewModel?, _ error: Error?) -> Void)
```

Get all languages.

Sample request:        GET: /api/v1/languages

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
let current = true // Bool |  (optional)

// Get all languages.
LanguagesAPI.apiV1LanguagesGet(id: id, name: name, code: code, description: description, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **name** | **String** |  | [optional] 
 **code** | **String** |  | [optional] 
 **description** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**LanguagesViewModel**](LanguagesViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1LanguagesIdGet**
```swift
    open class func apiV1LanguagesIdGet(id: UUID, completion: @escaping (_ data: LanguageViewModel?, _ error: Error?) -> Void)
```

Get a language by id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID | 

// Get a language by id
LanguagesAPI.apiV1LanguagesIdGet(id: id) { (response, error) in
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
 **id** | [**UUID**](.md) |  | 

### Return type

[**LanguageViewModel**](LanguageViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

