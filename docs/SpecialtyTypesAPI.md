# SpecialtyTypesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1SpecialtytypesGet**](SpecialtyTypesAPI.md#apiv1specialtytypesget) | **GET** /api/v1/specialtytypes | Get all SpecialtyTypes.
[**apiV1SpecialtytypesPost**](SpecialtyTypesAPI.md#apiv1specialtytypespost) | **POST** /api/v1/specialtytypes | Create specialtyType.
[**apiV1SpecialtytypesSlugsSlugGet**](SpecialtyTypesAPI.md#apiv1specialtytypesslugsslugget) | **GET** /api/v1/specialtytypes/slugs/{slug} | Get specialtyType by slug.
[**apiV1SpecialtytypesSpecialtyTypeIdDelete**](SpecialtyTypesAPI.md#apiv1specialtytypesspecialtytypeiddelete) | **DELETE** /api/v1/specialtytypes/{specialtyTypeId} | Delete specialtyType.
[**apiV1SpecialtytypesSpecialtyTypeIdGet**](SpecialtyTypesAPI.md#apiv1specialtytypesspecialtytypeidget) | **GET** /api/v1/specialtytypes/{specialtyTypeId} | Get specialtyType.
[**apiV1SpecialtytypesSpecialtyTypeIdPut**](SpecialtyTypesAPI.md#apiv1specialtytypesspecialtytypeidput) | **PUT** /api/v1/specialtytypes/{specialtyTypeId} | Update specialtyType


# **apiV1SpecialtytypesGet**
```swift
    open class func apiV1SpecialtytypesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: SpecialtyTypesViewModel?, _ error: Error?) -> Void)
```

Get all SpecialtyTypes.

Sample request:        GET /api/v1/SpecialtyTypes

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let created = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all SpecialtyTypes.
SpecialtyTypesAPI.apiV1SpecialtytypesGet(id: id, name: name, description: description, marketingType: marketingType, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **created** | **Date** |  | [optional] 
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

# **apiV1SpecialtytypesPost**
```swift
    open class func apiV1SpecialtytypesPost(specialtyTypeId: UUID? = nil, createSpecialtyTypeCommand: CreateSpecialtyTypeCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create specialtyType.

Sample request:        POST /api/v1/SpecialtyTypes      {          \"name\": \"Coronary artery disease\",          \"description\": \"Coronary artery disease\",          \"specialtyTypeType\": \"Cardiology\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyTypeId = 987 // UUID |  (optional)
let createSpecialtyTypeCommand = CreateSpecialtyTypeCommand(name: "name_example", description: "description_example", content: "content_example", marketingType: MarketingType()) // CreateSpecialtyTypeCommand |  (optional)

// Create specialtyType.
SpecialtyTypesAPI.apiV1SpecialtytypesPost(specialtyTypeId: specialtyTypeId, createSpecialtyTypeCommand: createSpecialtyTypeCommand) { (response, error) in
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
 **specialtyTypeId** | [**UUID**](.md) |  | [optional] 
 **createSpecialtyTypeCommand** | [**CreateSpecialtyTypeCommand**](CreateSpecialtyTypeCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SpecialtytypesSlugsSlugGet**
```swift
    open class func apiV1SpecialtytypesSlugsSlugGet(slug: String, completion: @escaping (_ data: SpecialtyTypeViewModel?, _ error: Error?) -> Void)
```

Get specialtyType by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 

// Get specialtyType by slug.
SpecialtyTypesAPI.apiV1SpecialtytypesSlugsSlugGet(slug: slug) { (response, error) in
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

[**SpecialtyTypeViewModel**](SpecialtyTypeViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SpecialtytypesSpecialtyTypeIdDelete**
```swift
    open class func apiV1SpecialtytypesSpecialtyTypeIdDelete(specialtyTypeId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete specialtyType.

Sample request:        DELETE /api/v1/SpecialtyTypes/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyTypeId = 987 // UUID | 

// Delete specialtyType.
SpecialtyTypesAPI.apiV1SpecialtytypesSpecialtyTypeIdDelete(specialtyTypeId: specialtyTypeId) { (response, error) in
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
 **specialtyTypeId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SpecialtytypesSpecialtyTypeIdGet**
```swift
    open class func apiV1SpecialtytypesSpecialtyTypeIdGet(specialtyTypeId: UUID, completion: @escaping (_ data: SpecialtyTypeViewModel?, _ error: Error?) -> Void)
```

Get specialtyType.

Sample request:        GET /api/v1/SpecialtyTypes/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyTypeId = 987 // UUID | 

// Get specialtyType.
SpecialtyTypesAPI.apiV1SpecialtytypesSpecialtyTypeIdGet(specialtyTypeId: specialtyTypeId) { (response, error) in
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
 **specialtyTypeId** | [**UUID**](.md) |  | 

### Return type

[**SpecialtyTypeViewModel**](SpecialtyTypeViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SpecialtytypesSpecialtyTypeIdPut**
```swift
    open class func apiV1SpecialtytypesSpecialtyTypeIdPut(specialtyTypeId: UUID, updateSpecialtyTypeCommand: UpdateSpecialtyTypeCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update specialtyType

Sample request:        PUT /api/v1/SpecialtyTypes/1      {          \"name\": \"Dilated cardiomyopathy\",          \"description\": \"Dilated cardiomyopathy\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyTypeId = 987 // UUID | 
let updateSpecialtyTypeCommand = UpdateSpecialtyTypeCommand(name: "name_example", slug: "slug_example", description: "description_example", marketingType: MarketingType(), specialtyCount: 123, hospitalSpecialtyCount: 123, serviceCount: 123, created: Date(), content: "content_example") // UpdateSpecialtyTypeCommand |  (optional)

// Update specialtyType
SpecialtyTypesAPI.apiV1SpecialtytypesSpecialtyTypeIdPut(specialtyTypeId: specialtyTypeId, updateSpecialtyTypeCommand: updateSpecialtyTypeCommand) { (response, error) in
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
 **specialtyTypeId** | [**UUID**](.md) |  | 
 **updateSpecialtyTypeCommand** | [**UpdateSpecialtyTypeCommand**](UpdateSpecialtyTypeCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

