# SearchAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1SearchAutocompleteGet**](SearchAPI.md#apiv1searchautocompleteget) | **GET** /api/v1/search/autocomplete | 
[**apiV1SearchDealsGet**](SearchAPI.md#apiv1searchdealsget) | **GET** /api/v1/search/deals | 
[**apiV1SearchDoctorsGet**](SearchAPI.md#apiv1searchdoctorsget) | **GET** /api/v1/search/doctors | 
[**apiV1SearchGetcountGet**](SearchAPI.md#apiv1searchgetcountget) | **GET** /api/v1/search/getcount | 
[**apiV1SearchHospitalsGet**](SearchAPI.md#apiv1searchhospitalsget) | **GET** /api/v1/search/hospitals | 
[**apiV1SearchSpecialtiesGet**](SearchAPI.md#apiv1searchspecialtiesget) | **GET** /api/v1/search/specialties | 
[**apiV1SearchSpecialtytypesGet**](SearchAPI.md#apiv1searchspecialtytypesget) | **GET** /api/v1/search/specialtytypes | 
[**apiV1SearchSuggestGet**](SearchAPI.md#apiv1searchsuggestget) | **GET** /api/v1/search/suggest | 


# **apiV1SearchAutocompleteGet**
```swift
    open class func apiV1SearchAutocompleteGet(mode: AutocompleteMode? = nil, keyword: String? = nil, fuzzy: Bool? = nil, highlights: Bool? = nil, size: Int? = nil, minimumCoverage: Double? = nil, completion: @escaping (_ data: AzureSearchServiceAutocompleteModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let mode = AutocompleteMode() // AutocompleteMode |  (optional)
let keyword = "keyword_example" // String |  (optional)
let fuzzy = true // Bool |  (optional)
let highlights = true // Bool |  (optional)
let size = 987 // Int |  (optional)
let minimumCoverage = 987 // Double |  (optional)

SearchAPI.apiV1SearchAutocompleteGet(mode: mode, keyword: keyword, fuzzy: fuzzy, highlights: highlights, size: size, minimumCoverage: minimumCoverage) { (response, error) in
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
 **mode** | [**AutocompleteMode**](.md) |  | [optional] 
 **keyword** | **String** |  | [optional] 
 **fuzzy** | **Bool** |  | [optional] 
 **highlights** | **Bool** |  | [optional] 
 **size** | **Int** |  | [optional] 
 **minimumCoverage** | **Double** |  | [optional] 

### Return type

[**AzureSearchServiceAutocompleteModel**](AzureSearchServiceAutocompleteModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SearchDealsGet**
```swift
    open class func apiV1SearchDealsGet(searchTerm: String? = nil, countOnly: Bool? = nil, countryId: String? = nil, hospitalId: String? = nil, marketingType: MarketingType? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: DealsViewModel?, _ error: Error?) -> Void)
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
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

SearchAPI.apiV1SearchDealsGet(searchTerm: searchTerm, countOnly: countOnly, countryId: countryId, hospitalId: hospitalId, marketingType: marketingType, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **languageCode** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**DealsViewModel**](DealsViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SearchDoctorsGet**
```swift
    open class func apiV1SearchDoctorsGet(searchTerm: String? = nil, countOnly: Bool? = nil, countryId: String? = nil, hospitalId: String? = nil, marketingType: MarketingType? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: DoctorsViewModel?, _ error: Error?) -> Void)
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
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

SearchAPI.apiV1SearchDoctorsGet(searchTerm: searchTerm, countOnly: countOnly, countryId: countryId, hospitalId: hospitalId, marketingType: marketingType, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **languageCode** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**DoctorsViewModel**](DoctorsViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SearchGetcountGet**
```swift
    open class func apiV1SearchGetcountGet(searchTerm: String? = nil, countOnly: Bool? = nil, countryId: String? = nil, hospitalId: String? = nil, marketingType: MarketingType? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: AzureSearchViewModel?, _ error: Error?) -> Void)
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
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

SearchAPI.apiV1SearchGetcountGet(searchTerm: searchTerm, countOnly: countOnly, countryId: countryId, hospitalId: hospitalId, marketingType: marketingType, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **languageCode** | **String** |  | [optional] 
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
    open class func apiV1SearchHospitalsGet(searchTerm: String? = nil, countOnly: Bool? = nil, countryId: String? = nil, hospitalId: String? = nil, marketingType: MarketingType? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: HospitalsViewModel?, _ error: Error?) -> Void)
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
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

SearchAPI.apiV1SearchHospitalsGet(searchTerm: searchTerm, countOnly: countOnly, countryId: countryId, hospitalId: hospitalId, marketingType: marketingType, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **languageCode** | **String** |  | [optional] 
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

# **apiV1SearchSpecialtiesGet**
```swift
    open class func apiV1SearchSpecialtiesGet(searchTerm: String? = nil, countOnly: Bool? = nil, countryId: String? = nil, hospitalId: String? = nil, marketingType: MarketingType? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: SpecialtiesViewModel?, _ error: Error?) -> Void)
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
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

SearchAPI.apiV1SearchSpecialtiesGet(searchTerm: searchTerm, countOnly: countOnly, countryId: countryId, hospitalId: hospitalId, marketingType: marketingType, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **languageCode** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**SpecialtiesViewModel**](SpecialtiesViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SearchSpecialtytypesGet**
```swift
    open class func apiV1SearchSpecialtytypesGet(searchTerm: String? = nil, countOnly: Bool? = nil, countryId: String? = nil, hospitalId: String? = nil, marketingType: MarketingType? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: SpecialtyTypesViewModel?, _ error: Error?) -> Void)
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
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

SearchAPI.apiV1SearchSpecialtytypesGet(searchTerm: searchTerm, countOnly: countOnly, countryId: countryId, hospitalId: hospitalId, marketingType: marketingType, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **languageCode** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**SpecialtyTypesViewModel**](SpecialtyTypesViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SearchSuggestGet**
```swift
    open class func apiV1SearchSuggestGet(keyword: String? = nil, fuzzy: Bool? = nil, highlights: Bool? = nil, size: Int? = nil, completion: @escaping (_ data: AzureSearchServiceSuggestModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let keyword = "keyword_example" // String |  (optional)
let fuzzy = true // Bool |  (optional)
let highlights = true // Bool |  (optional)
let size = 987 // Int |  (optional)

SearchAPI.apiV1SearchSuggestGet(keyword: keyword, fuzzy: fuzzy, highlights: highlights, size: size) { (response, error) in
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
 **keyword** | **String** |  | [optional] 
 **fuzzy** | **Bool** |  | [optional] 
 **highlights** | **Bool** |  | [optional] 
 **size** | **Int** |  | [optional] 

### Return type

[**AzureSearchServiceSuggestModel**](AzureSearchServiceSuggestModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

