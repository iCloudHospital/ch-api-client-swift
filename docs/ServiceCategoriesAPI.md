# ServiceCategoriesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ServicecategoriesGet**](ServiceCategoriesAPI.md#apiv1servicecategoriesget) | **GET** /api/v1/servicecategories | Get all ServiceCategories.
[**apiV1ServicecategoriesPost**](ServiceCategoriesAPI.md#apiv1servicecategoriespost) | **POST** /api/v1/servicecategories | Create ServiceCategory.
[**apiV1ServicecategoriesServiceCategoryIdDelete**](ServiceCategoriesAPI.md#apiv1servicecategoriesservicecategoryiddelete) | **DELETE** /api/v1/servicecategories/{serviceCategoryId} | Delete ServiceCategory.
[**apiV1ServicecategoriesServiceCategoryIdGet**](ServiceCategoriesAPI.md#apiv1servicecategoriesservicecategoryidget) | **GET** /api/v1/servicecategories/{serviceCategoryId} | Get ServiceCategory.
[**apiV1ServicecategoriesServiceCategoryIdPut**](ServiceCategoriesAPI.md#apiv1servicecategoriesservicecategoryidput) | **PUT** /api/v1/servicecategories/{serviceCategoryId} | Update ServiceCategory


# **apiV1ServicecategoriesGet**
```swift
    open class func apiV1ServicecategoriesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: ServiceCategoriesViewModel?, _ error: Error?) -> Void)
```

Get all ServiceCategories.

Sample request:        GET /api/v1/ServiceCategories

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all ServiceCategories.
ServiceCategoriesAPI.apiV1ServicecategoriesGet(id: id, name: name, description: description, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **languageCode** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**ServiceCategoriesViewModel**](ServiceCategoriesViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ServicecategoriesPost**
```swift
    open class func apiV1ServicecategoriesPost(createServiceCategoryCommand: CreateServiceCategoryCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create ServiceCategory.

Sample request:        POST /api/v1/ServiceCategories      {          \"name\": \"Adults\",          \"description\": \"There are so many “-ologists“ that they can be hard to keep straight. However, this list could be a handy reference. This is not meant to be an exhaustive and all-inclusive list of what a specialist does, but it should provide you with a basic overview.\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createServiceCategoryCommand = CreateServiceCategoryCommand(name: "name_example", description: "description_example", services: [123]) // CreateServiceCategoryCommand |  (optional)

// Create ServiceCategory.
ServiceCategoriesAPI.apiV1ServicecategoriesPost(createServiceCategoryCommand: createServiceCategoryCommand) { (response, error) in
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
 **createServiceCategoryCommand** | [**CreateServiceCategoryCommand**](CreateServiceCategoryCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ServicecategoriesServiceCategoryIdDelete**
```swift
    open class func apiV1ServicecategoriesServiceCategoryIdDelete(serviceCategoryId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete ServiceCategory.

Sample request:        DELETE /api/v1/ServiceCategories/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let serviceCategoryId = 987 // UUID | 

// Delete ServiceCategory.
ServiceCategoriesAPI.apiV1ServicecategoriesServiceCategoryIdDelete(serviceCategoryId: serviceCategoryId) { (response, error) in
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
 **serviceCategoryId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ServicecategoriesServiceCategoryIdGet**
```swift
    open class func apiV1ServicecategoriesServiceCategoryIdGet(serviceCategoryId: UUID, languageCode: String? = nil, completion: @escaping (_ data: ServiceCategoryViewModel?, _ error: Error?) -> Void)
```

Get ServiceCategory.

Sample request:        GET /api/v1/ServiceCategories/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let serviceCategoryId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional) (default to "")

// Get ServiceCategory.
ServiceCategoriesAPI.apiV1ServicecategoriesServiceCategoryIdGet(serviceCategoryId: serviceCategoryId, languageCode: languageCode) { (response, error) in
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
 **serviceCategoryId** | [**UUID**](.md) |  | 
 **languageCode** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**ServiceCategoryViewModel**](ServiceCategoryViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ServicecategoriesServiceCategoryIdPut**
```swift
    open class func apiV1ServicecategoriesServiceCategoryIdPut(serviceCategoryId: UUID, updateServiceCategoryCommand: UpdateServiceCategoryCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update ServiceCategory

Sample request:        PUT /api/v1/ServiceCategories/1      {          \"name\": \"Adults\",          \"description\": \"There are so many “-ologists“ that they can be hard to keep straight. However, this list could be a handy reference. This is not meant to be an exhaustive and all-inclusive list of what a specialist does, but it should provide you with a basic overview.\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let serviceCategoryId = 987 // UUID | 
let updateServiceCategoryCommand = UpdateServiceCategoryCommand(id: 123, name: "name_example", normalizedName: "normalizedName_example", description: "description_example", order: 123, serviceCount: 123, services: [ServiceItemViewModel(id: 123, name: "name_example", slug: "slug_example", description: "description_example", content: "content_example", hospitalId: 123, hospitalName: "hospitalName_example", specialtyTypeId: 123, specialtyTypeName: "specialtyTypeName_example", specialtyId: 123, specialtyName: "specialtyName_example", marketingType: MarketingType(), procedure: Procedure(), minPrice: 123, maxPrice: 123, priceReuqest: false, order: 123, auditableEntity: AuditableEntity(createdBy: 123, updatedBy: 123, deletedBy: 123, createdDate: Date(), updatedDate: Date(), deletedDate: Date(), isHidden: false, isDeleted: false))], selectedServices: [123]) // UpdateServiceCategoryCommand |  (optional)

// Update ServiceCategory
ServiceCategoriesAPI.apiV1ServicecategoriesServiceCategoryIdPut(serviceCategoryId: serviceCategoryId, updateServiceCategoryCommand: updateServiceCategoryCommand) { (response, error) in
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
 **serviceCategoryId** | [**UUID**](.md) |  | 
 **updateServiceCategoryCommand** | [**UpdateServiceCategoryCommand**](UpdateServiceCategoryCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

