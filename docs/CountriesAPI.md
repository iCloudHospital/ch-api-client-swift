# CountriesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1CountriesCountryIdDelete**](CountriesAPI.md#apiv1countriescountryiddelete) | **DELETE** /api/v1/countries/{countryId} | Delete country.
[**apiV1CountriesCountryIdGet**](CountriesAPI.md#apiv1countriescountryidget) | **GET** /api/v1/countries/{countryId} | Get country.
[**apiV1CountriesCountryIdPut**](CountriesAPI.md#apiv1countriescountryidput) | **PUT** /api/v1/countries/{countryId} | Update country.
[**apiV1CountriesGet**](CountriesAPI.md#apiv1countriesget) | **GET** /api/v1/countries | Get all countries.
[**apiV1CountriesPost**](CountriesAPI.md#apiv1countriespost) | **POST** /api/v1/countries | Create a country.
[**apiV1CountriesSlugsSlugGet**](CountriesAPI.md#apiv1countriesslugsslugget) | **GET** /api/v1/countries/slugs/{slug} | Get country by slug.


# **apiV1CountriesCountryIdDelete**
```swift
    open class func apiV1CountriesCountryIdDelete(countryId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete country.

Sample request:        DELETE /api/v1/countries/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let countryId = 987 // UUID | 

// Delete country.
CountriesAPI.apiV1CountriesCountryIdDelete(countryId: countryId) { (response, error) in
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

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1CountriesCountryIdGet**
```swift
    open class func apiV1CountriesCountryIdGet(countryId: UUID, languageCode: String? = nil, completion: @escaping (_ data: CountryViewModel?, _ error: Error?) -> Void)
```

Get country.

Sample request:        GET /api/v1/countries/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let countryId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional) (default to "")

// Get country.
CountriesAPI.apiV1CountriesCountryIdGet(countryId: countryId, languageCode: languageCode) { (response, error) in
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
 **languageCode** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**CountryViewModel**](CountryViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1CountriesCountryIdPut**
```swift
    open class func apiV1CountriesCountryIdPut(countryId: UUID, updateCountryCommand: UpdateCountryCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update country.

Sample request:        PUT /api/v1/countries/1      {          \"name\": \"USA\",          \"description\": \"United States of America\"          \"medias\": [            {              \"mediaType\": 0,              \"url\": \"https://cloudhospitalblob.blob.core.windows.net/imagecontainer/SouthKorea.png\",              \"thumbnailUrl\": \"https://cloudhospitalblob.blob.core.windows.net/thumbnailcontainer/SouthKorea.png\"              \"description\": \"string\",              \"order\": 0            },            {              \"mediaType\": 1,              \"url\": \"string\",              \"description\": \"string\",              \"order\": 1            }          ],      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let countryId = 987 // UUID | 
let updateCountryCommand = UpdateCountryCommand(name: "name_example", description: "description_example", content: "content_example", medias: [{...}]) // UpdateCountryCommand |  (optional)

// Update country.
CountriesAPI.apiV1CountriesCountryIdPut(countryId: countryId, updateCountryCommand: updateCountryCommand) { (response, error) in
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
 **updateCountryCommand** | [**UpdateCountryCommand**](UpdateCountryCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1CountriesGet**
```swift
    open class func apiV1CountriesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, createdDate: Date? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: CountriesViewModel?, _ error: Error?) -> Void)
```

Get all countries.

Sample request:        GET /api/v1/countries      {          \"countryPageQueryFilter\": {              \"page\": 1,              \"limit\": 20,              \"lastRetrived\": \"2020-02-05T08:40\",              \"languageCode\": \"en\"          }      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let createdDate = Date() // Date |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all countries.
CountriesAPI.apiV1CountriesGet(id: id, name: name, description: description, createdDate: createdDate, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**CountriesViewModel**](CountriesViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1CountriesPost**
```swift
    open class func apiV1CountriesPost(createCountryCommand: CreateCountryCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create a country.

Sample request:        POST /api/v1/countries      {          \"name\": \"Korea\",          \"description\": \"Republic of Korea\",          \"medias\": [              {                  \"mediaType\": \"Photo\",                  \"url\": \"https://cloudhospitalblob.blob.core.windows.net/imagecontainer/SouthKorea.png\",                  \"thumbnailUrl\": \"https://cloudhospitalblob.blob.core.windows.net/thumbnailcontainer/SouthKorea.png\",                  \"description\": \"string\"              }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createCountryCommand = CreateCountryCommand(name: "name_example", description: "description_example", content: "content_example", medias: [{...}]) // CreateCountryCommand |  (optional)

// Create a country.
CountriesAPI.apiV1CountriesPost(createCountryCommand: createCountryCommand) { (response, error) in
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
 **createCountryCommand** | [**CreateCountryCommand**](CreateCountryCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1CountriesSlugsSlugGet**
```swift
    open class func apiV1CountriesSlugsSlugGet(slug: String, languageCode: String? = nil, completion: @escaping (_ data: CountryViewModel?, _ error: Error?) -> Void)
```

Get country by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional) (default to "")

// Get country by slug.
CountriesAPI.apiV1CountriesSlugsSlugGet(slug: slug, languageCode: languageCode) { (response, error) in
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
 **languageCode** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**CountryViewModel**](CountryViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

