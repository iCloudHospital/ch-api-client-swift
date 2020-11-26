# DoctorCertificatesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1DoctorsCertificatesGet**](DoctorCertificatesAPI.md#apiv1doctorscertificatesget) | **GET** /api/v1/doctors/certificates | Get all certificates.
[**apiV1DoctorsDoctorIdCertificatesCertificateIdDelete**](DoctorCertificatesAPI.md#apiv1doctorsdoctoridcertificatescertificateiddelete) | **DELETE** /api/v1/doctors/{doctorId}/certificates/{certificateId} | Delete certificate.
[**apiV1DoctorsDoctorIdCertificatesCertificateIdGet**](DoctorCertificatesAPI.md#apiv1doctorsdoctoridcertificatescertificateidget) | **GET** /api/v1/doctors/{doctorId}/certificates/{certificateId} | Get certificate.
[**apiV1DoctorsDoctorIdCertificatesCertificateIdPut**](DoctorCertificatesAPI.md#apiv1doctorsdoctoridcertificatescertificateidput) | **PUT** /api/v1/doctors/{doctorId}/certificates/{certificateId} | Update department.
[**apiV1DoctorsDoctorIdCertificatesPost**](DoctorCertificatesAPI.md#apiv1doctorsdoctoridcertificatespost) | **POST** /api/v1/doctors/{doctorId}/certificates | Create certificate.


# **apiV1DoctorsCertificatesGet**
```swift
    open class func apiV1DoctorsCertificatesGet(id: UUID? = nil, doctorId: UUID? = nil, doctorName: String? = nil, certificate: String? = nil, activeFrom: Date? = nil, activeTo: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: DoctorCertificatesViewModel?, _ error: Error?) -> Void)
```

Get all certificates.

Sample request:        GET /api/v1/doctors/certificates

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let doctorId = 987 // UUID |  (optional)
let doctorName = "doctorName_example" // String |  (optional)
let certificate = "certificate_example" // String |  (optional)
let activeFrom = Date() // Date |  (optional)
let activeTo = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all certificates.
DoctorCertificatesAPI.apiV1DoctorsCertificatesGet(id: id, doctorId: doctorId, doctorName: doctorName, certificate: certificate, activeFrom: activeFrom, activeTo: activeTo, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **doctorId** | [**UUID**](.md) |  | [optional] 
 **doctorName** | **String** |  | [optional] 
 **certificate** | **String** |  | [optional] 
 **activeFrom** | **Date** |  | [optional] 
 **activeTo** | **Date** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**DoctorCertificatesViewModel**](DoctorCertificatesViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DoctorsDoctorIdCertificatesCertificateIdDelete**
```swift
    open class func apiV1DoctorsDoctorIdCertificatesCertificateIdDelete(doctorId: UUID, certificateId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete certificate.

Sample request:        DELETE /api/v1/doctors/1/certificates/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let certificateId = 987 // UUID | 

// Delete certificate.
DoctorCertificatesAPI.apiV1DoctorsDoctorIdCertificatesCertificateIdDelete(doctorId: doctorId, certificateId: certificateId) { (response, error) in
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
 **certificateId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DoctorsDoctorIdCertificatesCertificateIdGet**
```swift
    open class func apiV1DoctorsDoctorIdCertificatesCertificateIdGet(doctorId: UUID, certificateId: UUID, completion: @escaping (_ data: DoctorCertificateViewModel?, _ error: Error?) -> Void)
```

Get certificate.

Sample request:        GET /api/v1/doctors/1/certificates/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let certificateId = 987 // UUID | 

// Get certificate.
DoctorCertificatesAPI.apiV1DoctorsDoctorIdCertificatesCertificateIdGet(doctorId: doctorId, certificateId: certificateId) { (response, error) in
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
 **certificateId** | [**UUID**](.md) |  | 

### Return type

[**DoctorCertificateViewModel**](DoctorCertificateViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DoctorsDoctorIdCertificatesCertificateIdPut**
```swift
    open class func apiV1DoctorsDoctorIdCertificatesCertificateIdPut(doctorId: UUID, certificateId: UUID, updateDoctorCertificateCommand: UpdateDoctorCertificateCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update department.

Sample request:

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let certificateId = 987 // UUID | 
let updateDoctorCertificateCommand = UpdateDoctorCertificateCommand(certificate: "certificate_example", activeFrom: Date(), activeTo: Date()) // UpdateDoctorCertificateCommand |  (optional)

// Update department.
DoctorCertificatesAPI.apiV1DoctorsDoctorIdCertificatesCertificateIdPut(doctorId: doctorId, certificateId: certificateId, updateDoctorCertificateCommand: updateDoctorCertificateCommand) { (response, error) in
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
 **certificateId** | [**UUID**](.md) |  | 
 **updateDoctorCertificateCommand** | [**UpdateDoctorCertificateCommand**](UpdateDoctorCertificateCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DoctorsDoctorIdCertificatesPost**
```swift
    open class func apiV1DoctorsDoctorIdCertificatesPost(doctorId: UUID, createDoctorCertificateCommand: CreateDoctorCertificateCommand? = nil, completion: @escaping (_ data: DoctorCertificate?, _ error: Error?) -> Void)
```

Create certificate.

Sample request:        POST /api/v1/doctors/1/certificates/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let createDoctorCertificateCommand = CreateDoctorCertificateCommand(certificate: "certificate_example", activeFrom: Date(), activeTo: Date()) // CreateDoctorCertificateCommand |  (optional)

// Create certificate.
DoctorCertificatesAPI.apiV1DoctorsDoctorIdCertificatesPost(doctorId: doctorId, createDoctorCertificateCommand: createDoctorCertificateCommand) { (response, error) in
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
 **createDoctorCertificateCommand** | [**CreateDoctorCertificateCommand**](CreateDoctorCertificateCommand.md) |  | [optional] 

### Return type

[**DoctorCertificate**](DoctorCertificate.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

