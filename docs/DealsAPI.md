# DealsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1DealsDealIdDelete**](DealsAPI.md#apiv1dealsdealiddelete) | **DELETE** /api/v1/deals/{dealId} | Delete deal.
[**apiV1DealsDealIdGet**](DealsAPI.md#apiv1dealsdealidget) | **GET** /api/v1/deals/{dealId} | Get deal.
[**apiV1DealsDealIdPut**](DealsAPI.md#apiv1dealsdealidput) | **PUT** /api/v1/deals/{dealId} | Update deal.
[**apiV1DealsGet**](DealsAPI.md#apiv1dealsget) | **GET** /api/v1/deals | Get all deals.
[**apiV1DealsPost**](DealsAPI.md#apiv1dealspost) | **POST** /api/v1/deals | Create deal.
[**apiV1DealsSlugsSlugGet**](DealsAPI.md#apiv1dealsslugsslugget) | **GET** /api/v1/deals/slugs/{slug} | Get deal by slug.


# **apiV1DealsDealIdDelete**
```swift
    open class func apiV1DealsDealIdDelete(dealId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete deal.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let dealId = 987 // UUID | 

// Delete deal.
DealsAPI.apiV1DealsDealIdDelete(dealId: dealId) { (response, error) in
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
 **dealId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DealsDealIdGet**
```swift
    open class func apiV1DealsDealIdGet(dealId: UUID, completion: @escaping (_ data: DealViewModel?, _ error: Error?) -> Void)
```

Get deal.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let dealId = 987 // UUID | 

// Get deal.
DealsAPI.apiV1DealsDealIdGet(dealId: dealId) { (response, error) in
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
 **dealId** | [**UUID**](.md) |  | 

### Return type

[**DealViewModel**](DealViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DealsDealIdPut**
```swift
    open class func apiV1DealsDealIdPut(dealId: UUID, updateDealCommand: UpdateDealCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update deal.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let dealId = 987 // UUID | 
let updateDealCommand = UpdateDealCommand(id: 123, name: "name_example", normalizedName: "normalizedName_example", slug: "slug_example", description: "description_example", hospitalId: 123, hospitalName: "hospitalName_example", hospitalSlug: "hospitalSlug_example", marketingType: MarketingType(), dealPackages: [{...}], auditableEntity: {...}, photo: "photo_example", photoThumbnail: "photoThumbnail_example") // UpdateDealCommand |  (optional)

// Update deal.
DealsAPI.apiV1DealsDealIdPut(dealId: dealId, updateDealCommand: updateDealCommand) { (response, error) in
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
 **dealId** | [**UUID**](.md) |  | 
 **updateDealCommand** | [**UpdateDealCommand**](UpdateDealCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DealsGet**
```swift
    open class func apiV1DealsGet(id: UUID? = nil, name: String? = nil, marketingType: MarketingType? = nil, countryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, specialtyId: UUID? = nil, specialtyTypeId: UUID? = nil, exceptHospitalId: UUID? = nil, exceptDealId: UUID? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: DealsViewModel?, _ error: Error?) -> Void)
```

Get all deals.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let countryId = 987 // UUID |  (optional)
let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let specialtyId = 987 // UUID |  (optional)
let specialtyTypeId = 987 // UUID |  (optional)
let exceptHospitalId = 987 // UUID |  (optional)
let exceptDealId = 987 // UUID |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all deals.
DealsAPI.apiV1DealsGet(id: id, name: name, marketingType: marketingType, countryId: countryId, hospitalId: hospitalId, hospitalName: hospitalName, specialtyId: specialtyId, specialtyTypeId: specialtyTypeId, exceptHospitalId: exceptHospitalId, exceptDealId: exceptDealId, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **countryId** | [**UUID**](.md) |  | [optional] 
 **hospitalId** | [**UUID**](.md) |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **specialtyId** | [**UUID**](.md) |  | [optional] 
 **specialtyTypeId** | [**UUID**](.md) |  | [optional] 
 **exceptHospitalId** | [**UUID**](.md) |  | [optional] 
 **exceptDealId** | [**UUID**](.md) |  | [optional] 
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

# **apiV1DealsPost**
```swift
    open class func apiV1DealsPost(createDealCommand: CreateDealCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create deal.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createDealCommand = CreateDealCommand(name: "name_example", description: "description_example", hospitalId: 123, marketingType: MarketingType(), photo: "photo_example", photoThumbnail: "photoThumbnail_example", medias: [{...}]) // CreateDealCommand |  (optional)

// Create deal.
DealsAPI.apiV1DealsPost(createDealCommand: createDealCommand) { (response, error) in
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
 **createDealCommand** | [**CreateDealCommand**](CreateDealCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DealsSlugsSlugGet**
```swift
    open class func apiV1DealsSlugsSlugGet(slug: String, completion: @escaping (_ data: DealViewModel?, _ error: Error?) -> Void)
```

Get deal by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 

// Get deal by slug.
DealsAPI.apiV1DealsSlugsSlugGet(slug: slug) { (response, error) in
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

[**DealViewModel**](DealViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

