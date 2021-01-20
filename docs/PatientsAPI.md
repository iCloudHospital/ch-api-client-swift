# PatientsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1PatientsGet**](PatientsAPI.md#apiv1patientsget) | **GET** /api/v1/patients | Get all patients.
[**apiV1PatientsPatientIdDelete**](PatientsAPI.md#apiv1patientspatientiddelete) | **DELETE** /api/v1/patients/{patientId} | Delete patient.
[**apiV1PatientsPatientIdGet**](PatientsAPI.md#apiv1patientspatientidget) | **GET** /api/v1/patients/{patientId} | Get patient.
[**apiV1PatientsPatientIdPut**](PatientsAPI.md#apiv1patientspatientidput) | **PUT** /api/v1/patients/{patientId} | Update patient.
[**apiV1PatientsPost**](PatientsAPI.md#apiv1patientspost) | **POST** /api/v1/patients | Create patient.


# **apiV1PatientsGet**
```swift
    open class func apiV1PatientsGet(id: UUID? = nil, fullname: String? = nil, email: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: PatientsViewModel?, _ error: Error?) -> Void)
```

Get all patients.

Sample request:        GET /api/v1/patients      {          \"pageQueryFilter\": {              \"page\": 1,              \"limit\": 20,              \"lastRetrived\": \"2020-02-05T08:40\"          },          \"searchString\": \"patient\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let fullname = "fullname_example" // String |  (optional)
let email = "email_example" // String |  (optional)
let gender = Gender() // Gender |  (optional)
let dateOfBirth = Date() // Date |  (optional)
let created = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all patients.
PatientsAPI.apiV1PatientsGet(id: id, fullname: fullname, email: email, gender: gender, dateOfBirth: dateOfBirth, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **fullname** | **String** |  | [optional] 
 **email** | **String** |  | [optional] 
 **gender** | [**Gender**](.md) |  | [optional] 
 **dateOfBirth** | **Date** |  | [optional] 
 **created** | **Date** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**PatientsViewModel**](PatientsViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1PatientsPatientIdDelete**
```swift
    open class func apiV1PatientsPatientIdDelete(patientId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete patient.

Sample request:        DELETE /api/v1/patients/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let patientId = 987 // UUID | 

// Delete patient.
PatientsAPI.apiV1PatientsPatientIdDelete(patientId: patientId) { (response, error) in
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
 **patientId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1PatientsPatientIdGet**
```swift
    open class func apiV1PatientsPatientIdGet(patientId: UUID, completion: @escaping (_ data: PatientViewModel?, _ error: Error?) -> Void)
```

Get patient.

Sample request:        GET /api/v1/patients/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let patientId = 987 // UUID | 

// Get patient.
PatientsAPI.apiV1PatientsPatientIdGet(patientId: patientId) { (response, error) in
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
 **patientId** | [**UUID**](.md) |  | 

### Return type

[**PatientViewModel**](PatientViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1PatientsPatientIdPut**
```swift
    open class func apiV1PatientsPatientIdPut(patientId: UUID, updatePatientCommand: UpdatePatientCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update patient.

Sample request:        PUT /api/v1/patients/1      {          \"referralCode\": \"string\",          \"firstName\": \"patient\",          \"lastName\": \"cloud\",          \"photo\": \"string\",          \"locations\": [            {              \"locationType\": \"LivesIn\",              \"latitude\": 0,              \"longitude\": 0,              \"country\": \"string\",              \"state\": \"string\",              \"county\": \"string\",              \"city\": \"string\",              \"zipCode\": \"string\",              \"address\": \"string\"            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let patientId = 987 // UUID | 
let updatePatientCommand = UpdatePatientCommand(firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), languages: [{...}], locations: [{...}]) // UpdatePatientCommand |  (optional)

// Update patient.
PatientsAPI.apiV1PatientsPatientIdPut(patientId: patientId, updatePatientCommand: updatePatientCommand) { (response, error) in
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
 **patientId** | [**UUID**](.md) |  | 
 **updatePatientCommand** | [**UpdatePatientCommand**](UpdatePatientCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1PatientsPost**
```swift
    open class func apiV1PatientsPost(createPatientCommand: CreatePatientCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create patient.

Sample request:        POST /api/v1/patients      {          \"referralCode\": \"123456\",          \"email\": \"patient@icloudhospital.com\",          \"firstName\": \"patient\",          \"lastName\": \"cloud\",          \"photo\": \"string\",          \"locations\": [            {              \"locationType\": \"LivesIn\",              \"latitude\": 0,              \"longitude\": 0,              \"country\": \"string\",              \"state\": \"string\",              \"county\": \"string\",              \"city\": \"string\",              \"zipCode\": \"string\",              \"address\": \"string\"            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createPatientCommand = CreatePatientCommand(firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), medias: [{...}], languages: [{...}], locations: [{...}], userName: "userName_example", email: "email_example", isAdmin: false) // CreatePatientCommand |  (optional)

// Create patient.
PatientsAPI.apiV1PatientsPost(createPatientCommand: createPatientCommand) { (response, error) in
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
 **createPatientCommand** | [**CreatePatientCommand**](CreatePatientCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

