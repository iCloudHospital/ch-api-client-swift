# HospitalSpecialtiesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdDelete**](HospitalSpecialtiesAPI.md#apiv1hospitalshospitalidspecialtiesspecialtyiddelete) | **DELETE** /api/v1/hospitals/{hospitalId}/specialties/{specialtyId} | Delete hospitalSpecialty.
[**apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdPost**](HospitalSpecialtiesAPI.md#apiv1hospitalshospitalidspecialtiesspecialtyidpost) | **POST** /api/v1/hospitals/{hospitalId}/specialties/{specialtyId} | Create hospitalSpecialty.
[**apiV1HospitalsHospitalIdSpecialtysequencePut**](HospitalSpecialtiesAPI.md#apiv1hospitalshospitalidspecialtysequenceput) | **PUT** /api/v1/hospitals/{hospitalId}/specialtysequence | Update hospitalSpecialty sequence.
[**apiV1HospitalsSpecialtiesGet**](HospitalSpecialtiesAPI.md#apiv1hospitalsspecialtiesget) | **GET** /api/v1/hospitals/specialties | Get all hospitalSpecialties.


# **apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdDelete**
```swift
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdDelete(hospitalId: UUID, specialtyId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete hospitalSpecialty.

Sample request:        DELETE /api/v1/hospitals/1/specialties/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let specialtyId = 987 // UUID | 

// Delete hospitalSpecialty.
HospitalSpecialtiesAPI.apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdDelete(hospitalId: hospitalId, specialtyId: specialtyId) { (response, error) in
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
 **specialtyId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdPost**
```swift
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdPost(hospitalId: UUID, specialtyId: UUID, completion: @escaping (_ data: HospitalSpecialtyViewModel?, _ error: Error?) -> Void)
```

Create hospitalSpecialty.

Sample request:        POST /api/v1/hospitals/1/specialties/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let specialtyId = 987 // UUID | 

// Create hospitalSpecialty.
HospitalSpecialtiesAPI.apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdPost(hospitalId: hospitalId, specialtyId: specialtyId) { (response, error) in
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
 **specialtyId** | [**UUID**](.md) |  | 

### Return type

[**HospitalSpecialtyViewModel**](HospitalSpecialtyViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdSpecialtysequencePut**
```swift
    open class func apiV1HospitalsHospitalIdSpecialtysequencePut(hospitalId: UUID, specialtyTypeId: UUID, updateHospitalSpecialtySequenceCommand: UpdateHospitalSpecialtySequenceCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update hospitalSpecialty sequence.

Sample request:        PUT /api/v1/hospitals/1/specialtysequence      {          \"specialtyType\": \"Endocrinology\",          \"hospitalSpecialtySequence\": [14, 30, 5, 7]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let specialtyTypeId = 987 // UUID | 
let updateHospitalSpecialtySequenceCommand = UpdateHospitalSpecialtySequenceCommand(hospitalSpecialtySequence: [123]) // UpdateHospitalSpecialtySequenceCommand |  (optional)

// Update hospitalSpecialty sequence.
HospitalSpecialtiesAPI.apiV1HospitalsHospitalIdSpecialtysequencePut(hospitalId: hospitalId, specialtyTypeId: specialtyTypeId, updateHospitalSpecialtySequenceCommand: updateHospitalSpecialtySequenceCommand) { (response, error) in
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
 **specialtyTypeId** | [**UUID**](.md) |  | 
 **updateHospitalSpecialtySequenceCommand** | [**UpdateHospitalSpecialtySequenceCommand**](UpdateHospitalSpecialtySequenceCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsSpecialtiesGet**
```swift
    open class func apiV1HospitalsSpecialtiesGet(hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, specialtyTypeId: UUID? = nil, marketingType: MarketingType? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: HospitalSpecialtiesViewModel?, _ error: Error?) -> Void)
```

Get all hospitalSpecialties.

Sample request:        GET /api/v1/hospitals/specialties

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let hospitalSlug = "hospitalSlug_example" // String |  (optional)
let specialtyId = 987 // UUID |  (optional)
let specialtyName = "specialtyName_example" // String |  (optional)
let specialtyTypeId = 987 // UUID |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let created = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all hospitalSpecialties.
HospitalSpecialtiesAPI.apiV1HospitalsSpecialtiesGet(hospitalId: hospitalId, hospitalName: hospitalName, hospitalSlug: hospitalSlug, specialtyId: specialtyId, specialtyName: specialtyName, specialtyTypeId: specialtyTypeId, marketingType: marketingType, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **hospitalId** | [**UUID**](.md) |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **hospitalSlug** | **String** |  | [optional] 
 **specialtyId** | [**UUID**](.md) |  | [optional] 
 **specialtyName** | **String** |  | [optional] 
 **specialtyTypeId** | [**UUID**](.md) |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **created** | **Date** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**HospitalSpecialtiesViewModel**](HospitalSpecialtiesViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

