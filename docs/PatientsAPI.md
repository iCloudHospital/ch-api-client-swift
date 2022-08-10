# PatientsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2PatientsPatientIdDelete**](PatientsAPI.md#apiv2patientspatientiddelete) | **DELETE** /api/v2/patients/{patientId} | Delete Patient.
[**apiV2PatientsPatientIdGet**](PatientsAPI.md#apiv2patientspatientidget) | **GET** /api/v2/patients/{patientId} | Get Patient.
[**apiV2PatientsPatientIdPut**](PatientsAPI.md#apiv2patientspatientidput) | **PUT** /api/v2/patients/{patientId} | Update Patient.
[**apiV2PatientsPost**](PatientsAPI.md#apiv2patientspost) | **POST** /api/v2/patients | Create a Patient.


# **apiV2PatientsPatientIdDelete**
```swift
    open class func apiV2PatientsPatientIdDelete(patientId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete Patient.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let patientId = 987 // UUID | 

// Delete Patient.
PatientsAPI.apiV2PatientsPatientIdDelete(patientId: patientId) { (response, error) in
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
 **patientId** | **UUID** |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2PatientsPatientIdGet**
```swift
    open class func apiV2PatientsPatientIdGet(patientId: UUID, completion: @escaping (_ data: PatientModel?, _ error: Error?) -> Void)
```

Get Patient.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let patientId = 987 // UUID | 

// Get Patient.
PatientsAPI.apiV2PatientsPatientIdGet(patientId: patientId) { (response, error) in
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
 **patientId** | **UUID** |  | 

### Return type

[**PatientModel**](PatientModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2PatientsPatientIdPut**
```swift
    open class func apiV2PatientsPatientIdPut(patientId: UUID, updatePatientCommand: UpdatePatientCommand? = nil, completion: @escaping (_ data: PatientModel?, _ error: Error?) -> Void)
```

Update Patient.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let patientId = 987 // UUID | 
let updatePatientCommand = UpdatePatientCommand(userName: "userName_example", email: "email_example", firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), timeZone: "timeZone_example") // UpdatePatientCommand |  (optional)

// Update Patient.
PatientsAPI.apiV2PatientsPatientIdPut(patientId: patientId, updatePatientCommand: updatePatientCommand) { (response, error) in
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
 **patientId** | **UUID** |  | 
 **updatePatientCommand** | [**UpdatePatientCommand**](UpdatePatientCommand.md) |  | [optional] 

### Return type

[**PatientModel**](PatientModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2PatientsPost**
```swift
    open class func apiV2PatientsPost(createPatientCommand: CreatePatientCommand? = nil, completion: @escaping (_ data: PatientModel?, _ error: Error?) -> Void)
```

Create a Patient.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createPatientCommand = CreatePatientCommand(userName: "userName_example", email: "email_example", firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), timeZone: "timeZone_example") // CreatePatientCommand |  (optional)

// Create a Patient.
PatientsAPI.apiV2PatientsPost(createPatientCommand: createPatientCommand) { (response, error) in
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

[**PatientModel**](PatientModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

