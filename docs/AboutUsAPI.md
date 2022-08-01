# AboutUsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2AboutusGet**](AboutUsAPI.md#apiv2aboutusget) | **GET** /api/v2/aboutus | Get all AboutUsList.
[**apiV2AboutusHospitalIdGet**](AboutUsAPI.md#apiv2aboutushospitalidget) | **GET** /api/v2/aboutus/{hospitalId} | Get AboutUs.
[**apiV2AboutusSlugGet**](AboutUsAPI.md#apiv2aboutusslugget) | **GET** /api/v2/aboutus/{slug} | 


# **apiV2AboutusGet**
```swift
    open class func apiV2AboutusGet(hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, name: String? = nil, languageCode: String? = nil, returnDefaultValue: Bool? = nil, confirmed: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: AboutUsPagesModel?, _ error: Error?) -> Void)
```

Get all AboutUsList.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let hospitalSlug = "hospitalSlug_example" // String |  (optional)
let name = "name_example" // String |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)
let confirmed = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all AboutUsList.
AboutUsAPI.apiV2AboutusGet(hospitalId: hospitalId, hospitalName: hospitalName, hospitalSlug: hospitalSlug, name: name, languageCode: languageCode, returnDefaultValue: returnDefaultValue, confirmed: confirmed, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **hospitalId** | [**UUID**](.md) |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **hospitalSlug** | **String** |  | [optional] 
 **name** | **String** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 
 **confirmed** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**AboutUsPagesModel**](AboutUsPagesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AboutusHospitalIdGet**
```swift
    open class func apiV2AboutusHospitalIdGet(hospitalId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: AboutUsPageModel?, _ error: Error?) -> Void)
```

Get AboutUs.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

// Get AboutUs.
AboutUsAPI.apiV2AboutusHospitalIdGet(hospitalId: hospitalId, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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
 **hospitalId** | [**UUID**](.md) |  | 
 **languageCode** | **String** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 

### Return type

[**AboutUsPageModel**](AboutUsPageModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AboutusSlugGet**
```swift
    open class func apiV2AboutusSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: AboutUsPageModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

AboutUsAPI.apiV2AboutusSlugGet(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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
 **languageCode** | **String** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 

### Return type

[**AboutUsPageModel**](AboutUsPageModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

