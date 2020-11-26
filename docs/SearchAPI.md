# SearchAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1SearchDealsGet**](SearchAPI.md#apiv1searchdealsget) | **GET** /api/v1/search/deals | 
[**apiV1SearchDoctorsGet**](SearchAPI.md#apiv1searchdoctorsget) | **GET** /api/v1/search/doctors | 
[**apiV1SearchGetcountGet**](SearchAPI.md#apiv1searchgetcountget) | **GET** /api/v1/search/getcount | 
[**apiV1SearchHospitalsGet**](SearchAPI.md#apiv1searchhospitalsget) | **GET** /api/v1/search/hospitals | 
[**apiV1SearchSpecialtiesGet**](SearchAPI.md#apiv1searchspecialtiesget) | **GET** /api/v1/search/specialties | 
[**apiV1SearchSpecialtytypesGet**](SearchAPI.md#apiv1searchspecialtytypesget) | **GET** /api/v1/search/specialtytypes | 


# **apiV1SearchDealsGet**
```swift
    open class func apiV1SearchDealsGet(searchTerm: String? = nil, countOnly: Bool? = nil, countryId: String? = nil, hospitalId: String? = nil, marketingType: MarketingType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: DealSearchResultViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let searchTerm = "searchTerm_example" // String |  (optional)
let countOnly = true // Bool |  (optional)
let countryId = "countryId_example" // String |  (optional)
let hospitalId = "hospitalId_example" // String |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

SearchAPI.apiV1SearchDealsGet(searchTerm: searchTerm, countOnly: countOnly, countryId: countryId, hospitalId: hospitalId, marketingType: marketingType, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **searchTerm** | **String** |  | [optional] 
 **countOnly** | **Bool** |  | [optional] 
 **countryId** | **String** |  | [optional] 
 **hospitalId** | **String** |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**DealSearchResultViewModel**](DealSearchResultViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SearchDoctorsGet**
```swift
    open class func apiV1SearchDoctorsGet(searchTerm: String? = nil, countOnly: Bool? = nil, countryId: String? = nil, hospitalId: String? = nil, marketingType: MarketingType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: DoctorSearchResultViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let searchTerm = "searchTerm_example" // String |  (optional)
let countOnly = true // Bool |  (optional)
let countryId = "countryId_example" // String |  (optional)
let hospitalId = "hospitalId_example" // String |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

SearchAPI.apiV1SearchDoctorsGet(searchTerm: searchTerm, countOnly: countOnly, countryId: countryId, hospitalId: hospitalId, marketingType: marketingType, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **searchTerm** | **String** |  | [optional] 
 **countOnly** | **Bool** |  | [optional] 
 **countryId** | **String** |  | [optional] 
 **hospitalId** | **String** |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**DoctorSearchResultViewModel**](DoctorSearchResultViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SearchGetcountGet**
```swift
    open class func apiV1SearchGetcountGet(searchTerm: String? = nil, countOnly: Bool? = nil, countryId: String? = nil, hospitalId: String? = nil, marketingType: MarketingType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: AzureSearchViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let searchTerm = "searchTerm_example" // String |  (optional)
let countOnly = true // Bool |  (optional)
let countryId = "countryId_example" // String |  (optional)
let hospitalId = "hospitalId_example" // String |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

SearchAPI.apiV1SearchGetcountGet(searchTerm: searchTerm, countOnly: countOnly, countryId: countryId, hospitalId: hospitalId, marketingType: marketingType, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **searchTerm** | **String** |  | [optional] 
 **countOnly** | **Bool** |  | [optional] 
 **countryId** | **String** |  | [optional] 
 **hospitalId** | **String** |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**AzureSearchViewModel**](AzureSearchViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SearchHospitalsGet**
```swift
    open class func apiV1SearchHospitalsGet(searchTerm: String? = nil, countOnly: Bool? = nil, countryId: String? = nil, hospitalId: String? = nil, marketingType: MarketingType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: HospitalSearchResultViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let searchTerm = "searchTerm_example" // String |  (optional)
let countOnly = true // Bool |  (optional)
let countryId = "countryId_example" // String |  (optional)
let hospitalId = "hospitalId_example" // String |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

SearchAPI.apiV1SearchHospitalsGet(searchTerm: searchTerm, countOnly: countOnly, countryId: countryId, hospitalId: hospitalId, marketingType: marketingType, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **searchTerm** | **String** |  | [optional] 
 **countOnly** | **Bool** |  | [optional] 
 **countryId** | **String** |  | [optional] 
 **hospitalId** | **String** |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**HospitalSearchResultViewModel**](HospitalSearchResultViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SearchSpecialtiesGet**
```swift
    open class func apiV1SearchSpecialtiesGet(searchTerm: String? = nil, countOnly: Bool? = nil, countryId: String? = nil, hospitalId: String? = nil, marketingType: MarketingType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: SpecialtySearchResultViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let searchTerm = "searchTerm_example" // String |  (optional)
let countOnly = true // Bool |  (optional)
let countryId = "countryId_example" // String |  (optional)
let hospitalId = "hospitalId_example" // String |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

SearchAPI.apiV1SearchSpecialtiesGet(searchTerm: searchTerm, countOnly: countOnly, countryId: countryId, hospitalId: hospitalId, marketingType: marketingType, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **searchTerm** | **String** |  | [optional] 
 **countOnly** | **Bool** |  | [optional] 
 **countryId** | **String** |  | [optional] 
 **hospitalId** | **String** |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**SpecialtySearchResultViewModel**](SpecialtySearchResultViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SearchSpecialtytypesGet**
```swift
    open class func apiV1SearchSpecialtytypesGet(searchTerm: String? = nil, countOnly: Bool? = nil, countryId: String? = nil, hospitalId: String? = nil, marketingType: MarketingType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: SpecialtyTypeSearchResultViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let searchTerm = "searchTerm_example" // String |  (optional)
let countOnly = true // Bool |  (optional)
let countryId = "countryId_example" // String |  (optional)
let hospitalId = "hospitalId_example" // String |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

SearchAPI.apiV1SearchSpecialtytypesGet(searchTerm: searchTerm, countOnly: countOnly, countryId: countryId, hospitalId: hospitalId, marketingType: marketingType, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **searchTerm** | **String** |  | [optional] 
 **countOnly** | **Bool** |  | [optional] 
 **countryId** | **String** |  | [optional] 
 **hospitalId** | **String** |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**SpecialtyTypeSearchResultViewModel**](SpecialtyTypeSearchResultViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

