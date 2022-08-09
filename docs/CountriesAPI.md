# CountriesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2CountriesCountryIdGet**](CountriesAPI.md#apiv2countriescountryidget) | **GET** /api/v2/countries/{countryId} | 
[**apiV2CountriesCountryIdMediasGet**](CountriesAPI.md#apiv2countriescountryidmediasget) | **GET** /api/v2/countries/{countryId}/medias | Get all CountryMedias.
[**apiV2CountriesCountryIdMediasMediaIdGet**](CountriesAPI.md#apiv2countriescountryidmediasmediaidget) | **GET** /api/v2/countries/{countryId}/medias/{mediaId} | Get CountryMedia.
[**apiV2CountriesGet**](CountriesAPI.md#apiv2countriesget) | **GET** /api/v2/countries | Get all countries.
[**apiV2CountriesSlugGet**](CountriesAPI.md#apiv2countriesslugget) | **GET** /api/v2/countries/{slug} | 


# **apiV2CountriesCountryIdGet**
```swift
    open class func apiV2CountriesCountryIdGet(countryId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: CountryModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let countryId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

CountriesAPI.apiV2CountriesCountryIdGet(countryId: countryId, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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
 **countryId** | [**UUID**](.md) |  | 
 **languageCode** | **String** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 

### Return type

[**CountryModel**](CountryModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CountriesCountryIdMediasGet**
```swift
    open class func apiV2CountriesCountryIdMediasGet(countryId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: MediasModel?, _ error: Error?) -> Void)
```

Get all CountryMedias.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let countryId = 987 // UUID | 
let id = 987 // UUID |  (optional)
let mediaType = MediaType() // MediaType |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all CountryMedias.
CountriesAPI.apiV2CountriesCountryIdMediasGet(countryId: countryId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **countryId** | [**UUID**](.md) |  | 
 **id** | [**UUID**](.md) |  | [optional] 
 **mediaType** | [**MediaType**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**MediasModel**](MediasModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CountriesCountryIdMediasMediaIdGet**
```swift
    open class func apiV2CountriesCountryIdMediasMediaIdGet(countryId: UUID, mediaId: UUID, completion: @escaping (_ data: MediaModel?, _ error: Error?) -> Void)
```

Get CountryMedia.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let countryId = 987 // UUID | 
let mediaId = 987 // UUID | 

// Get CountryMedia.
CountriesAPI.apiV2CountriesCountryIdMediasMediaIdGet(countryId: countryId, mediaId: mediaId) { (response, error) in
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
 **countryId** | [**UUID**](.md) |  | 
 **mediaId** | [**UUID**](.md) |  | 

### Return type

[**MediaModel**](MediaModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CountriesGet**
```swift
    open class func apiV2CountriesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, createdDate: Date? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: CountriesModel?, _ error: Error?) -> Void)
```

Get all countries.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let createdDate = Date() // Date |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let showHidden = true // Bool |  (optional)
let returnDefaultValue = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all countries.
CountriesAPI.apiV2CountriesGet(id: id, name: name, description: description, createdDate: createdDate, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **description** | **String** |  | [optional] 
 **createdDate** | **Date** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **showHidden** | **Bool** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**CountriesModel**](CountriesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CountriesSlugGet**
```swift
    open class func apiV2CountriesSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: CountryModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

CountriesAPI.apiV2CountriesSlugGet(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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

[**CountryModel**](CountryModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

