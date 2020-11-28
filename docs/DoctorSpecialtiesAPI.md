# DoctorSpecialtiesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1DoctorsDoctorIdSpecialtySpecialtyIdPost**](DoctorSpecialtiesAPI.md#apiv1doctorsdoctoridspecialtyspecialtyidpost) | **POST** /api/v1/doctors/{doctorId}/specialty/{specialtyId} | Link a doctor to a specialty.
[**apiV1DoctorsHospitalIdDoctorsDoctorIdDelete**](DoctorSpecialtiesAPI.md#apiv1doctorshospitaliddoctorsdoctoriddelete) | **DELETE** /api/v1/doctors/{hospitalId}/doctors/{doctorId} | Remove link between the doctor and the specialty.


# **apiV1DoctorsDoctorIdSpecialtySpecialtyIdPost**
```swift
    open class func apiV1DoctorsDoctorIdSpecialtySpecialtyIdPost(doctorId: UUID, specialtyId: UUID, completion: @escaping (_ data: DoctorSpecialtyViewModel?, _ error: Error?) -> Void)
```

Link a doctor to a specialty.

Sample request:        POST /api/v1/doctors/1/specialty/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let specialtyId = 987 // UUID | 

// Link a doctor to a specialty.
DoctorSpecialtiesAPI.apiV1DoctorsDoctorIdSpecialtySpecialtyIdPost(doctorId: doctorId, specialtyId: specialtyId) { (response, error) in
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
 **doctorId** | [**UUID**](.md) |  | 
 **specialtyId** | [**UUID**](.md) |  | 

### Return type

[**DoctorSpecialtyViewModel**](DoctorSpecialtyViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DoctorsHospitalIdDoctorsDoctorIdDelete**
```swift
    open class func apiV1DoctorsHospitalIdDoctorsDoctorIdDelete(doctorId: UUID, specailtyId: UUID, hospitalId: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Remove link between the doctor and the specialty.

Sample request:        DELETE /api/v1/doctors/1/specialty/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let specailtyId = 987 // UUID | 
let hospitalId = "hospitalId_example" // String | 

// Remove link between the doctor and the specialty.
DoctorSpecialtiesAPI.apiV1DoctorsHospitalIdDoctorsDoctorIdDelete(doctorId: doctorId, specailtyId: specailtyId, hospitalId: hospitalId) { (response, error) in
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
 **doctorId** | [**UUID**](.md) |  | 
 **specailtyId** | [**UUID**](.md) |  | 
 **hospitalId** | **String** |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

