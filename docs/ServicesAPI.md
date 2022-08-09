# ServicesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ServicesGet**](ServicesAPI.md#apiv2servicesget) | **GET** /api/v2/services | Get all HospitalServices.
[**apiV2ServicesServiceIdGet**](ServicesAPI.md#apiv2servicesserviceidget) | **GET** /api/v2/services/{serviceId} | 
[**apiV2ServicesSlugGet**](ServicesAPI.md#apiv2servicesslugget) | **GET** /api/v2/services/{slug} | 


# **apiV2ServicesGet**
```swift
    open class func apiV2ServicesGet(id: UUID? = nil, name: String? = nil, slug: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, serviceCategoryId: UUID? = nil, marketingType: MarketingType? = nil, procedure: Procedure? = nil, created: Date? = nil, languageCode: String? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: HospitalServicesModel?, _ error: Error?) -> Void)
```

Get all HospitalServices.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let slug = "slug_example" // String |  (optional)
let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let hospitalSlug = "hospitalSlug_example" // String |  (optional)
let specialtyId = 987 // UUID |  (optional)
let specialtyName = "specialtyName_example" // String |  (optional)
let specialtyTypeId = 987 // UUID |  (optional)
let specialtyTypeName = "specialtyTypeName_example" // String |  (optional)
let serviceCategoryId = 987 // UUID |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let procedure = Procedure() // Procedure |  (optional)
let created = Date() // Date |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all HospitalServices.
ServicesAPI.apiV2ServicesGet(id: id, name: name, slug: slug, hospitalId: hospitalId, hospitalName: hospitalName, hospitalSlug: hospitalSlug, specialtyId: specialtyId, specialtyName: specialtyName, specialtyTypeId: specialtyTypeId, specialtyTypeName: specialtyTypeName, serviceCategoryId: serviceCategoryId, marketingType: marketingType, procedure: procedure, created: created, languageCode: languageCode, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **slug** | **String** |  | [optional] 
 **hospitalId** | [**UUID**](.md) |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **hospitalSlug** | **String** |  | [optional] 
 **specialtyId** | [**UUID**](.md) |  | [optional] 
 **specialtyName** | **String** |  | [optional] 
 **specialtyTypeId** | [**UUID**](.md) |  | [optional] 
 **specialtyTypeName** | **String** |  | [optional] 
 **serviceCategoryId** | [**UUID**](.md) |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **procedure** | [**Procedure**](.md) |  | [optional] 
 **created** | **Date** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**HospitalServicesModel**](HospitalServicesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ServicesServiceIdGet**
```swift
    open class func apiV2ServicesServiceIdGet(serviceId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: HospitalServiceModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let serviceId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

ServicesAPI.apiV2ServicesServiceIdGet(serviceId: serviceId, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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
 **serviceId** | [**UUID**](.md) |  | 
 **languageCode** | **String** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 

### Return type

[**HospitalServiceModel**](HospitalServiceModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ServicesSlugGet**
```swift
    open class func apiV2ServicesSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: HospitalServiceModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

ServicesAPI.apiV2ServicesSlugGet(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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

[**HospitalServiceModel**](HospitalServiceModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

