# DealsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2DealsDealIdGet**](DealsAPI.md#apiv2dealsdealidget) | **GET** /api/v2/deals/{dealId} | Get deal.
[**apiV2DealsDealIdPackagesGet**](DealsAPI.md#apiv2dealsdealidpackagesget) | **GET** /api/v2/deals/{dealId}/packages | Get all DealPackage.
[**apiV2DealsDealIdPackagesPackageIdGet**](DealsAPI.md#apiv2dealsdealidpackagespackageidget) | **GET** /api/v2/deals/{dealId}/packages/{packageId} | Get DealPackage.
[**apiV2DealsDealIdServicesGet**](DealsAPI.md#apiv2dealsdealidservicesget) | **GET** /api/v2/deals/{dealId}/services | Get all DealService.
[**apiV2DealsDealIdServicesServiceIdGet**](DealsAPI.md#apiv2dealsdealidservicesserviceidget) | **GET** /api/v2/deals/{dealId}/services/{serviceId} | Get DealService.
[**apiV2DealsGet**](DealsAPI.md#apiv2dealsget) | **GET** /api/v2/deals | Get all deals.
[**apiV2DealsSimpleGet**](DealsAPI.md#apiv2dealssimpleget) | **GET** /api/v2/deals/simple | Get all deals.
[**apiV2DealsSlugGet**](DealsAPI.md#apiv2dealsslugget) | **GET** /api/v2/deals/{slug} | Get deal by slug.


# **apiV2DealsDealIdGet**
```swift
    open class func apiV2DealsDealIdGet(dealId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: DealModel?, _ error: Error?) -> Void)
```

Get deal.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let dealId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

// Get deal.
DealsAPI.apiV2DealsDealIdGet(dealId: dealId, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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
 **dealId** | **UUID** |  | 
 **languageCode** | **String** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 

### Return type

[**DealModel**](DealModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DealsDealIdPackagesGet**
```swift
    open class func apiV2DealsDealIdPackagesGet(dealId: UUID, relatedDealPackageId: UUID? = nil, dealName: String? = nil, name: String? = nil, countryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, languageCode: String? = nil, showHidden: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: DealPackagesModel?, _ error: Error?) -> Void)
```

Get all DealPackage.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let dealId = 987 // UUID | 
let relatedDealPackageId = 987 // UUID |  (optional)
let dealName = "dealName_example" // String |  (optional)
let name = "name_example" // String |  (optional)
let countryId = 987 // UUID |  (optional)
let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let showHidden = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all DealPackage.
DealsAPI.apiV2DealsDealIdPackagesGet(dealId: dealId, relatedDealPackageId: relatedDealPackageId, dealName: dealName, name: name, countryId: countryId, hospitalId: hospitalId, hospitalName: hospitalName, languageCode: languageCode, showHidden: showHidden, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **dealId** | **UUID** |  | 
 **relatedDealPackageId** | **UUID** |  | [optional] 
 **dealName** | **String** |  | [optional] 
 **name** | **String** |  | [optional] 
 **countryId** | **UUID** |  | [optional] 
 **hospitalId** | **UUID** |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **showHidden** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**DealPackagesModel**](DealPackagesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DealsDealIdPackagesPackageIdGet**
```swift
    open class func apiV2DealsDealIdPackagesPackageIdGet(dealId: UUID, packageId: UUID, languageCode: String? = nil, completion: @escaping (_ data: DealPackageModel?, _ error: Error?) -> Void)
```

Get DealPackage.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let dealId = 987 // UUID | 
let packageId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)

// Get DealPackage.
DealsAPI.apiV2DealsDealIdPackagesPackageIdGet(dealId: dealId, packageId: packageId, languageCode: languageCode) { (response, error) in
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
 **dealId** | **UUID** |  | 
 **packageId** | **UUID** |  | 
 **languageCode** | **String** |  | [optional] 

### Return type

[**DealPackageModel**](DealPackageModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DealsDealIdServicesGet**
```swift
    open class func apiV2DealsDealIdServicesGet(dealId: UUID, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: DealServicesModel?, _ error: Error?) -> Void)
```

Get all DealService.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let dealId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all DealService.
DealsAPI.apiV2DealsDealIdServicesGet(dealId: dealId, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **dealId** | **UUID** |  | 
 **languageCode** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**DealServicesModel**](DealServicesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DealsDealIdServicesServiceIdGet**
```swift
    open class func apiV2DealsDealIdServicesServiceIdGet(dealId: UUID, serviceId: UUID, languageCode: String? = nil, completion: @escaping (_ data: DealServiceModel?, _ error: Error?) -> Void)
```

Get DealService.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let dealId = 987 // UUID | 
let serviceId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)

// Get DealService.
DealsAPI.apiV2DealsDealIdServicesServiceIdGet(dealId: dealId, serviceId: serviceId, languageCode: languageCode) { (response, error) in
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
 **dealId** | **UUID** |  | 
 **serviceId** | **UUID** |  | 
 **languageCode** | **String** |  | [optional] 

### Return type

[**DealServiceModel**](DealServiceModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DealsGet**
```swift
    open class func apiV2DealsGet(id: UUID? = nil, name: String? = nil, marketingType: MarketingType? = nil, countryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, serviceId: UUID? = nil, serviceName: String? = nil, exceptHospitalId: UUID? = nil, exceptDealId: UUID? = nil, ids: [UUID]? = nil, serviceDuration: Int? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: DealsModel?, _ error: Error?) -> Void)
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
let specialtyName = "specialtyName_example" // String |  (optional)
let specialtyTypeId = 987 // UUID |  (optional)
let specialtyTypeName = "specialtyTypeName_example" // String |  (optional)
let serviceId = 987 // UUID |  (optional)
let serviceName = "serviceName_example" // String |  (optional)
let exceptHospitalId = 987 // UUID |  (optional)
let exceptDealId = 987 // UUID |  (optional)
let ids = [123] // [UUID] |  (optional)
let serviceDuration = 987 // Int |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let showHidden = true // Bool |  (optional)
let returnDefaultValue = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all deals.
DealsAPI.apiV2DealsGet(id: id, name: name, marketingType: marketingType, countryId: countryId, hospitalId: hospitalId, hospitalName: hospitalName, specialtyId: specialtyId, specialtyName: specialtyName, specialtyTypeId: specialtyTypeId, specialtyTypeName: specialtyTypeName, serviceId: serviceId, serviceName: serviceName, exceptHospitalId: exceptHospitalId, exceptDealId: exceptDealId, ids: ids, serviceDuration: serviceDuration, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **countryId** | **UUID** |  | [optional] 
 **hospitalId** | **UUID** |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **specialtyId** | **UUID** |  | [optional] 
 **specialtyName** | **String** |  | [optional] 
 **specialtyTypeId** | **UUID** |  | [optional] 
 **specialtyTypeName** | **String** |  | [optional] 
 **serviceId** | **UUID** |  | [optional] 
 **serviceName** | **String** |  | [optional] 
 **exceptHospitalId** | **UUID** |  | [optional] 
 **exceptDealId** | **UUID** |  | [optional] 
 **ids** | [**[UUID]**](UUID.md) |  | [optional] 
 **serviceDuration** | **Int** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **showHidden** | **Bool** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**DealsModel**](DealsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DealsSimpleGet**
```swift
    open class func apiV2DealsSimpleGet(id: UUID? = nil, name: String? = nil, marketingType: MarketingType? = nil, countryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, serviceId: UUID? = nil, serviceName: String? = nil, exceptHospitalId: UUID? = nil, exceptDealId: UUID? = nil, ids: [UUID]? = nil, serviceDuration: Int? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: DealsSimpleModel?, _ error: Error?) -> Void)
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
let specialtyName = "specialtyName_example" // String |  (optional)
let specialtyTypeId = 987 // UUID |  (optional)
let specialtyTypeName = "specialtyTypeName_example" // String |  (optional)
let serviceId = 987 // UUID |  (optional)
let serviceName = "serviceName_example" // String |  (optional)
let exceptHospitalId = 987 // UUID |  (optional)
let exceptDealId = 987 // UUID |  (optional)
let ids = [123] // [UUID] |  (optional)
let serviceDuration = 987 // Int |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let showHidden = true // Bool |  (optional)
let returnDefaultValue = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all deals.
DealsAPI.apiV2DealsSimpleGet(id: id, name: name, marketingType: marketingType, countryId: countryId, hospitalId: hospitalId, hospitalName: hospitalName, specialtyId: specialtyId, specialtyName: specialtyName, specialtyTypeId: specialtyTypeId, specialtyTypeName: specialtyTypeName, serviceId: serviceId, serviceName: serviceName, exceptHospitalId: exceptHospitalId, exceptDealId: exceptDealId, ids: ids, serviceDuration: serviceDuration, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **countryId** | **UUID** |  | [optional] 
 **hospitalId** | **UUID** |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **specialtyId** | **UUID** |  | [optional] 
 **specialtyName** | **String** |  | [optional] 
 **specialtyTypeId** | **UUID** |  | [optional] 
 **specialtyTypeName** | **String** |  | [optional] 
 **serviceId** | **UUID** |  | [optional] 
 **serviceName** | **String** |  | [optional] 
 **exceptHospitalId** | **UUID** |  | [optional] 
 **exceptDealId** | **UUID** |  | [optional] 
 **ids** | [**[UUID]**](UUID.md) |  | [optional] 
 **serviceDuration** | **Int** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **showHidden** | **Bool** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**DealsSimpleModel**](DealsSimpleModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DealsSlugGet**
```swift
    open class func apiV2DealsSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: DealModel?, _ error: Error?) -> Void)
```

Get deal by slug.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

// Get deal by slug.
DealsAPI.apiV2DealsSlugGet(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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

[**DealModel**](DealModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

