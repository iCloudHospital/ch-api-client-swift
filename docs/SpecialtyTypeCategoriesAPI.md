# SpecialtyTypeCategoriesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1SpecialtytypecategoriesGet**](SpecialtyTypeCategoriesAPI.md#apiv1specialtytypecategoriesget) | **GET** /api/v1/specialtytypecategories | Get all SpecialtyTypeCategories.
[**apiV1SpecialtytypecategoriesPost**](SpecialtyTypeCategoriesAPI.md#apiv1specialtytypecategoriespost) | **POST** /api/v1/specialtytypecategories | Create specialtyTypeCategory.
[**apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdDelete**](SpecialtyTypeCategoriesAPI.md#apiv1specialtytypecategoriesspecialtytypecategoryiddelete) | **DELETE** /api/v1/specialtytypecategories/{specialtyTypeCategoryId} | Delete specialtyTypeCategory.
[**apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdGet**](SpecialtyTypeCategoriesAPI.md#apiv1specialtytypecategoriesspecialtytypecategoryidget) | **GET** /api/v1/specialtytypecategories/{specialtyTypeCategoryId} | Get specialtyTypeCategory.
[**apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdPut**](SpecialtyTypeCategoriesAPI.md#apiv1specialtytypecategoriesspecialtytypecategoryidput) | **PUT** /api/v1/specialtytypecategories/{specialtyTypeCategoryId} | Update specialtyTypeCategory


# **apiV1SpecialtytypecategoriesGet**
```swift
    open class func apiV1SpecialtytypecategoriesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: SpecialtyTypeCategoriesViewModel?, _ error: Error?) -> Void)
```

Get all SpecialtyTypeCategories.

Sample request:        GET /api/v1/SpecialtyTypeCategories

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all SpecialtyTypeCategories.
SpecialtyTypeCategoriesAPI.apiV1SpecialtytypecategoriesGet(id: id, name: name, description: description, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**SpecialtyTypeCategoriesViewModel**](SpecialtyTypeCategoriesViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SpecialtytypecategoriesPost**
```swift
    open class func apiV1SpecialtytypecategoriesPost(createSpecialtyTypeCategoryCommand: CreateSpecialtyTypeCategoryCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create specialtyTypeCategory.

Sample request:        POST /api/v1/SpecialtyTypeCategories      {          \"name\": \"Adults\",          \"description\": \"There are so many “-ologists“ that they can be hard to keep straight. However, this list could be a handy reference. This is not meant to be an exhaustive and all-inclusive list of what a specialist does, but it should provide you with a basic overview.\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createSpecialtyTypeCategoryCommand = CreateSpecialtyTypeCategoryCommand(name: "name_example", description: "description_example", specialtyTypes: [123]) // CreateSpecialtyTypeCategoryCommand |  (optional)

// Create specialtyTypeCategory.
SpecialtyTypeCategoriesAPI.apiV1SpecialtytypecategoriesPost(createSpecialtyTypeCategoryCommand: createSpecialtyTypeCategoryCommand) { (response, error) in
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
 **createSpecialtyTypeCategoryCommand** | [**CreateSpecialtyTypeCategoryCommand**](CreateSpecialtyTypeCategoryCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdDelete**
```swift
    open class func apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdDelete(specialtyTypeCategoryId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete specialtyTypeCategory.

Sample request:        DELETE /api/v1/SpecialtyTypeCategories/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyTypeCategoryId = 987 // UUID | 

// Delete specialtyTypeCategory.
SpecialtyTypeCategoriesAPI.apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdDelete(specialtyTypeCategoryId: specialtyTypeCategoryId) { (response, error) in
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
 **specialtyTypeCategoryId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdGet**
```swift
    open class func apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdGet(specialtyTypeCategoryId: UUID, completion: @escaping (_ data: SpecialtyTypeCategoryViewModel?, _ error: Error?) -> Void)
```

Get specialtyTypeCategory.

Sample request:        GET /api/v1/SpecialtyTypeCategories/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyTypeCategoryId = 987 // UUID | 

// Get specialtyTypeCategory.
SpecialtyTypeCategoriesAPI.apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdGet(specialtyTypeCategoryId: specialtyTypeCategoryId) { (response, error) in
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
 **specialtyTypeCategoryId** | [**UUID**](.md) |  | 

### Return type

[**SpecialtyTypeCategoryViewModel**](SpecialtyTypeCategoryViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdPut**
```swift
    open class func apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdPut(specialtyTypeCategoryId: UUID, updateSpecialtyTypeCategoryCommand: UpdateSpecialtyTypeCategoryCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update specialtyTypeCategory

Sample request:        PUT /api/v1/SpecialtyTypeCategories/1      {          \"name\": \"Adults\",          \"description\": \"There are so many “-ologists“ that they can be hard to keep straight. However, this list could be a handy reference. This is not meant to be an exhaustive and all-inclusive list of what a specialist does, but it should provide you with a basic overview.\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyTypeCategoryId = 987 // UUID | 
let updateSpecialtyTypeCategoryCommand = UpdateSpecialtyTypeCategoryCommand(id: 123, name: "name_example", description: "description_example", order: 123, specialtyTypeCount: 123, specialtyTypes: [SpecialtyTypeItemViewModel(id: 123, name: "name_example", slug: "slug_example", description: "description_example", content: "content_example", marketingType: MarketingType(), specialtyCount: 123, hospitalSpecialtyCount: 123, serviceCount: 123, created: Date())], selectedSpecialtyTypes: [123]) // UpdateSpecialtyTypeCategoryCommand |  (optional)

// Update specialtyTypeCategory
SpecialtyTypeCategoriesAPI.apiV1SpecialtytypecategoriesSpecialtyTypeCategoryIdPut(specialtyTypeCategoryId: specialtyTypeCategoryId, updateSpecialtyTypeCategoryCommand: updateSpecialtyTypeCategoryCommand) { (response, error) in
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
 **specialtyTypeCategoryId** | [**UUID**](.md) |  | 
 **updateSpecialtyTypeCategoryCommand** | [**UpdateSpecialtyTypeCategoryCommand**](UpdateSpecialtyTypeCategoryCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

