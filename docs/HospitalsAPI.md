# HospitalsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1HospitalsCurrentGet**](HospitalsAPI.md#apiv1hospitalscurrentget) | **GET** /api/v1/hospitals/current | 
[**apiV1HospitalsGet**](HospitalsAPI.md#apiv1hospitalsget) | **GET** /api/v1/hospitals | Get all hospitals.
[**apiV1HospitalsHospitalIdDelete**](HospitalsAPI.md#apiv1hospitalshospitaliddelete) | **DELETE** /api/v1/hospitals/{hospitalId} | Delete hospital.
[**apiV1HospitalsHospitalIdGet**](HospitalsAPI.md#apiv1hospitalshospitalidget) | **GET** /api/v1/hospitals/{hospitalId} | Get hospita.
[**apiV1HospitalsHospitalIdPut**](HospitalsAPI.md#apiv1hospitalshospitalidput) | **PUT** /api/v1/hospitals/{hospitalId} | Update hospital.
[**apiV1HospitalsPost**](HospitalsAPI.md#apiv1hospitalspost) | **POST** /api/v1/hospitals | Create a hospital.
[**apiV1HospitalsSlugsSlugGet**](HospitalsAPI.md#apiv1hospitalsslugsslugget) | **GET** /api/v1/hospitals/slugs/{slug} | Get hospital by slug.


# **apiV1HospitalsCurrentGet**
```swift
    open class func apiV1HospitalsCurrentGet(id: UUID? = nil, name: String? = nil, description: String? = nil, countryId: UUID? = nil, created: Date? = nil, marketingType: MarketingType? = nil, specialtyTypeId: UUID? = nil, specialtyId: UUID? = nil, serviceId: UUID? = nil, exceptHospitalId: UUID? = nil, showHidden: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: HospitalsViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let countryId = 987 // UUID |  (optional)
let created = Date() // Date |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let specialtyTypeId = 987 // UUID |  (optional)
let specialtyId = 987 // UUID |  (optional)
let serviceId = 987 // UUID |  (optional)
let exceptHospitalId = 987 // UUID |  (optional)
let showHidden = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

HospitalsAPI.apiV1HospitalsCurrentGet(id: id, name: name, description: description, countryId: countryId, created: created, marketingType: marketingType, specialtyTypeId: specialtyTypeId, specialtyId: specialtyId, serviceId: serviceId, exceptHospitalId: exceptHospitalId, showHidden: showHidden, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **countryId** | [**UUID**](.md) |  | [optional] 
 **created** | **Date** |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **specialtyTypeId** | [**UUID**](.md) |  | [optional] 
 **specialtyId** | [**UUID**](.md) |  | [optional] 
 **serviceId** | [**UUID**](.md) |  | [optional] 
 **exceptHospitalId** | [**UUID**](.md) |  | [optional] 
 **showHidden** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**HospitalsViewModel**](HospitalsViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsGet**
```swift
    open class func apiV1HospitalsGet(id: UUID? = nil, name: String? = nil, description: String? = nil, countryId: UUID? = nil, created: Date? = nil, marketingType: MarketingType? = nil, specialtyTypeId: UUID? = nil, specialtyId: UUID? = nil, serviceId: UUID? = nil, exceptHospitalId: UUID? = nil, showHidden: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: HospitalsViewModel?, _ error: Error?) -> Void)
```

Get all hospitals.

Sample request:        GET /api/v1/hospitals      {          \"pageQueryFilter\": {              \"page\": 1,              \"limit\": 20,              \"lastRetrived\": \"2020-02-05T08:40\"          },          \"searchString\": \"Samsung\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let countryId = 987 // UUID |  (optional)
let created = Date() // Date |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let specialtyTypeId = 987 // UUID |  (optional)
let specialtyId = 987 // UUID |  (optional)
let serviceId = 987 // UUID |  (optional)
let exceptHospitalId = 987 // UUID |  (optional)
let showHidden = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all hospitals.
HospitalsAPI.apiV1HospitalsGet(id: id, name: name, description: description, countryId: countryId, created: created, marketingType: marketingType, specialtyTypeId: specialtyTypeId, specialtyId: specialtyId, serviceId: serviceId, exceptHospitalId: exceptHospitalId, showHidden: showHidden, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **countryId** | [**UUID**](.md) |  | [optional] 
 **created** | **Date** |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **specialtyTypeId** | [**UUID**](.md) |  | [optional] 
 **specialtyId** | [**UUID**](.md) |  | [optional] 
 **serviceId** | [**UUID**](.md) |  | [optional] 
 **exceptHospitalId** | [**UUID**](.md) |  | [optional] 
 **showHidden** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**HospitalsViewModel**](HospitalsViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdDelete**
```swift
    open class func apiV1HospitalsHospitalIdDelete(hospitalId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete hospital.

Sample request:        DELETE /api/v1/hospitals/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 

// Delete hospital.
HospitalsAPI.apiV1HospitalsHospitalIdDelete(hospitalId: hospitalId) { (response, error) in
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

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdGet**
```swift
    open class func apiV1HospitalsHospitalIdGet(hospitalId: UUID, completion: @escaping (_ data: HospitalViewModel?, _ error: Error?) -> Void)
```

Get hospita.

Sample request:        GET /api/v1/hospitals/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 

// Get hospita.
HospitalsAPI.apiV1HospitalsHospitalIdGet(hospitalId: hospitalId) { (response, error) in
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

### Return type

[**HospitalViewModel**](HospitalViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdPut**
```swift
    open class func apiV1HospitalsHospitalIdPut(hospitalId: UUID, updateHospitalCommand: UpdateHospitalCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update hospital.

Sameple request:        PUT /api/v1/hospitals      {          \"overview\": \"Overview of Samsung Medical Center\",          \"bedsCount\": 2436,          \"operationsPerYear\": 44,          \"foundationYear\": 2012,          \"departmentsCount\": 200,          \"medicalStaffCount\": 1200,      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let updateHospitalCommand = UpdateHospitalCommand(name: "name_example", slug: "slug_example", description: "description_example", logo: "logo_example", overview: "overview_example", bedsCount: 123, operationsPerYear: 123, foundationYear: 123, medicalStaffCount: 123, doctorCount: 123, countryName: "countryName_example", marketingType: MarketingType(), consultationEnabled: false, consultationFee: 123, timeZone: "timeZone_example", articlesCount: 123, packagesCount: 123, equipmentsCount: 123, reviewsCount: 123, departmentsCount: 123, specialtiesCount: 123, accreditationsCount: 123, doctorAffiliationsCount: 123, managerAffiliationsCount: 123, specialtiesSummerized: "specialtiesSummerized_example", awards: [{...}], medias: [{...}], accreditations: [{...}], evaluations: [{...}], location: {...}, auditableEntity: {...}) // UpdateHospitalCommand |  (optional)

// Update hospital.
HospitalsAPI.apiV1HospitalsHospitalIdPut(hospitalId: hospitalId, updateHospitalCommand: updateHospitalCommand) { (response, error) in
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
 **updateHospitalCommand** | [**UpdateHospitalCommand**](UpdateHospitalCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsPost**
```swift
    open class func apiV1HospitalsPost(createHospitalCommand: CreateHospitalCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create a hospital.

Sample request:        POST /api/v1/hospitals      {          \"name\": \"Samsung Medical Center\",          \"description\": \"Comprehensive Cancer Center in Seoul, South Korea is nationally ranked in 1 adult specialty.\",          \"logo\": \"http://www.samsunghospital.com/home/main/index.do\",          \"overview\": \"Overview of Samsung Medical Center\",          \"bedsCount\": 1436,          \"operationsPerYear\": 34,          \"foundationYear\": 2012,          \"departmentsCount\": 20,          \"medicalStaffCount\": 600,          \"countryId\": 1,          \"awards\": [            {              \"name\": \"Award1\",              \"image\": \"string\",              \"date\": \"2020-02-05T09:29:19.240Z\"            },            {              \"name\": \"Award2\",              \"image\": \"string\",              \"date\": \"2020-02-05T09:29:19.240Z\"            }          ],          \"medias\": [            {              \"mediaType\": \"Photo\",              \"url\": \"https://cloudhospitalblob.blob.core.windows.net/imagecontainer/SamsungMedicalCenter.jpg\",              \"thumbnailUrl\": \"https://cloudhospitalblob.blob.core.windows.net/thumbnailcontainer/SamsungMedicalCenter.jpg\",              \"description\": \"string\",              \"order\": 0            },            {              \"mediaType\": \"Video\",              \"url\": \"string\",              \"description\": \"string\",              \"order\": 1            }          ],          \"location\": {            \"latitude\": 37.4881568,            \"longitude\": 127.0855952,            \"country\": \"Korea\",            \"state\": \"string\",            \"county\": \"Gangnamgu\",            \"city\": \"Seoul\",            \"zipCode\": \"12345\",            \"address\": \"Il-won ro 81\"          }      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createHospitalCommand = CreateHospitalCommand(name: "name_example", description: "description_example", logo: "logo_example", overview: "overview_example", bedsCount: 123, operationsPerYear: 123, foundationYear: 123, departmentsCount: 123, medicalStaffCount: 123, countryId: 123, marketingType: MarketingType(), consultationEnabled: false, consultationFee: 123, timeZone: "timeZone_example", awards: [{...}], medias: [{...}], location: {...}) // CreateHospitalCommand |  (optional)

// Create a hospital.
HospitalsAPI.apiV1HospitalsPost(createHospitalCommand: createHospitalCommand) { (response, error) in
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
 **createHospitalCommand** | [**CreateHospitalCommand**](CreateHospitalCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsSlugsSlugGet**
```swift
    open class func apiV1HospitalsSlugsSlugGet(slug: String, completion: @escaping (_ data: HospitalViewModel?, _ error: Error?) -> Void)
```

Get hospital by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 

// Get hospital by slug.
HospitalsAPI.apiV1HospitalsSlugsSlugGet(slug: slug) { (response, error) in
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

### Return type

[**HospitalViewModel**](HospitalViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

