# SpecialtiesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1SpecialtiesGet**](SpecialtiesAPI.md#apiv1specialtiesget) | **GET** /api/v1/specialties | Get all specialties.
[**apiV1SpecialtiesPost**](SpecialtiesAPI.md#apiv1specialtiespost) | **POST** /api/v1/specialties | Create specialty.
[**apiV1SpecialtiesSlugsSlugGet**](SpecialtiesAPI.md#apiv1specialtiesslugsslugget) | **GET** /api/v1/specialties/slugs/{slug} | Get specialty by slug.
[**apiV1SpecialtiesSpecialtyIdDelete**](SpecialtiesAPI.md#apiv1specialtiesspecialtyiddelete) | **DELETE** /api/v1/specialties/{specialtyId} | Delete specialty.
[**apiV1SpecialtiesSpecialtyIdGet**](SpecialtiesAPI.md#apiv1specialtiesspecialtyidget) | **GET** /api/v1/specialties/{specialtyId} | Get specialty.
[**apiV1SpecialtiesSpecialtyIdPut**](SpecialtiesAPI.md#apiv1specialtiesspecialtyidput) | **PUT** /api/v1/specialties/{specialtyId} | Update specialty


# **apiV1SpecialtiesGet**
```swift
    open class func apiV1SpecialtiesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, specialtyTypeId: UUID? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: SpecialtiesViewModel?, _ error: Error?) -> Void)
```

Get all specialties.

Sample request:        GET /api/v1/specialties

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let specialtyTypeId = 987 // UUID |  (optional)
let created = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all specialties.
SpecialtiesAPI.apiV1SpecialtiesGet(id: id, name: name, description: description, specialtyTypeId: specialtyTypeId, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **specialtyTypeId** | [**UUID**](.md) |  | [optional] 
 **created** | **Date** |  | [optional] 
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

# **apiV1SpecialtiesPost**
```swift
    open class func apiV1SpecialtiesPost(specialtyTypeId: UUID? = nil, createSpecialtyCommand: CreateSpecialtyCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create specialty.

Sample request:        POST /api/v1/specialties      {          \"name\": \"Coronary artery disease\",          \"description\": \"Coronary artery disease\",          \"specialtyType\": \"Cardiology\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyTypeId = 987 // UUID |  (optional)
let createSpecialtyCommand = CreateSpecialtyCommand(name: "name_example", description: "description_example", content: "content_example") // CreateSpecialtyCommand |  (optional)

// Create specialty.
SpecialtiesAPI.apiV1SpecialtiesPost(specialtyTypeId: specialtyTypeId, createSpecialtyCommand: createSpecialtyCommand) { (response, error) in
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
 **createSpecialtyCommand** | [**CreateSpecialtyCommand**](CreateSpecialtyCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SpecialtiesSlugsSlugGet**
```swift
    open class func apiV1SpecialtiesSlugsSlugGet(slug: String, completion: @escaping (_ data: SpecialtyViewModel?, _ error: Error?) -> Void)
```

Get specialty by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 

// Get specialty by slug.
SpecialtiesAPI.apiV1SpecialtiesSlugsSlugGet(slug: slug) { (response, error) in
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

[**SpecialtyViewModel**](SpecialtyViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SpecialtiesSpecialtyIdDelete**
```swift
    open class func apiV1SpecialtiesSpecialtyIdDelete(specialtyId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete specialty.

Sample request:        DELETE /api/v1/specialties/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyId = 987 // UUID | 

// Delete specialty.
SpecialtiesAPI.apiV1SpecialtiesSpecialtyIdDelete(specialtyId: specialtyId) { (response, error) in
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
 **specialtyId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SpecialtiesSpecialtyIdGet**
```swift
    open class func apiV1SpecialtiesSpecialtyIdGet(specialtyId: UUID, completion: @escaping (_ data: SpecialtyViewModel?, _ error: Error?) -> Void)
```

Get specialty.

Sample request:        GET /api/v1/specialties/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyId = 987 // UUID | 

// Get specialty.
SpecialtiesAPI.apiV1SpecialtiesSpecialtyIdGet(specialtyId: specialtyId) { (response, error) in
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
 **specialtyId** | [**UUID**](.md) |  | 

### Return type

[**SpecialtyViewModel**](SpecialtyViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SpecialtiesSpecialtyIdPut**
```swift
    open class func apiV1SpecialtiesSpecialtyIdPut(specialtyId: UUID, updateSpecialtyCommand: UpdateSpecialtyCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update specialty

Sample request:        PUT /api/v1/specialties/1      {          \"name\": \"Dilated cardiomyopathy\",          \"description\": \"Dilated cardiomyopathy\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyId = 987 // UUID | 
let updateSpecialtyCommand = UpdateSpecialtyCommand(name: "name_example", slug: "slug_example", description: "description_example", specialtyTypeId: 123, specialtyTypeName: "specialtyTypeName_example", auditableEntity: {...}, content: "content_example") // UpdateSpecialtyCommand |  (optional)

// Update specialty
SpecialtiesAPI.apiV1SpecialtiesSpecialtyIdPut(specialtyId: specialtyId, updateSpecialtyCommand: updateSpecialtyCommand) { (response, error) in
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
 **specialtyId** | [**UUID**](.md) |  | 
 **updateSpecialtyCommand** | [**UpdateSpecialtyCommand**](UpdateSpecialtyCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

