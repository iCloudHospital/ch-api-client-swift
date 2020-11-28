# AffiliationsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1HospitalsHospitalIdDoctorsDoctorIdDelete**](AffiliationsAPI.md#apiv1hospitalshospitaliddoctorsdoctoriddelete) | **DELETE** /api/v1/hospitals/{hospitalId}/doctors/{doctorId} | Remove link between the doctor and the hospital.
[**apiV1HospitalsHospitalIdDoctorsDoctorIdPost**](AffiliationsAPI.md#apiv1hospitalshospitaliddoctorsdoctoridpost) | **POST** /api/v1/hospitals/{hospitalId}/doctors/{doctorId} | Link a doctor to a hospital.
[**apiV1HospitalsHospitalIdManagersManagerIdDelete**](AffiliationsAPI.md#apiv1hospitalshospitalidmanagersmanageriddelete) | **DELETE** /api/v1/hospitals/{hospitalId}/managers/{managerId} | Remove link between the manager and the hospital.
[**apiV1HospitalsHospitalIdManagersManagerIdPost**](AffiliationsAPI.md#apiv1hospitalshospitalidmanagersmanageridpost) | **POST** /api/v1/hospitals/{hospitalId}/managers/{managerId} | Link a manager to a hospital.


# **apiV1HospitalsHospitalIdDoctorsDoctorIdDelete**
```swift
    open class func apiV1HospitalsHospitalIdDoctorsDoctorIdDelete(hospitalId: UUID, doctorId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Remove link between the doctor and the hospital.

Sample request:        DELETE /api/v1/hospitals/1/doctors/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let doctorId = 987 // UUID | 

// Remove link between the doctor and the hospital.
AffiliationsAPI.apiV1HospitalsHospitalIdDoctorsDoctorIdDelete(hospitalId: hospitalId, doctorId: doctorId) { (response, error) in
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
 **doctorId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdDoctorsDoctorIdPost**
```swift
    open class func apiV1HospitalsHospitalIdDoctorsDoctorIdPost(hospitalId: UUID, doctorId: UUID, completion: @escaping (_ data: DoctorAffiliationViewModel?, _ error: Error?) -> Void)
```

Link a doctor to a hospital.

Sample request:        POST /api/v1/hospitals/1/doctors/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let doctorId = 987 // UUID | 

// Link a doctor to a hospital.
AffiliationsAPI.apiV1HospitalsHospitalIdDoctorsDoctorIdPost(hospitalId: hospitalId, doctorId: doctorId) { (response, error) in
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
 **doctorId** | [**UUID**](.md) |  | 

### Return type

[**DoctorAffiliationViewModel**](DoctorAffiliationViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdManagersManagerIdDelete**
```swift
    open class func apiV1HospitalsHospitalIdManagersManagerIdDelete(hospitalId: UUID, managerId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Remove link between the manager and the hospital.

Sample request:        DELETE /api/v1/hospitals/1/managers/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let managerId = 987 // UUID | 

// Remove link between the manager and the hospital.
AffiliationsAPI.apiV1HospitalsHospitalIdManagersManagerIdDelete(hospitalId: hospitalId, managerId: managerId) { (response, error) in
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
 **managerId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdManagersManagerIdPost**
```swift
    open class func apiV1HospitalsHospitalIdManagersManagerIdPost(hospitalId: UUID, managerId: UUID, completion: @escaping (_ data: ManagerAffiliationViewModel?, _ error: Error?) -> Void)
```

Link a manager to a hospital.

Sample request:        POST /api/v1/hospitals/1/managers/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let managerId = 987 // UUID | 

// Link a manager to a hospital.
AffiliationsAPI.apiV1HospitalsHospitalIdManagersManagerIdPost(hospitalId: hospitalId, managerId: managerId) { (response, error) in
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
 **managerId** | [**UUID**](.md) |  | 

### Return type

[**ManagerAffiliationViewModel**](ManagerAffiliationViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

