# ConsultationsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ConsultationsConsultationIdGet**](ConsultationsAPI.md#apiv2consultationsconsultationidget) | **GET** /api/v2/consultations/{consultationId} | Get consultation.
[**apiV2ConsultationsConsultationIdPayPost**](ConsultationsAPI.md#apiv2consultationsconsultationidpaypost) | **POST** /api/v2/consultations/{consultationId}/pay | Pay consultation.
[**apiV2ConsultationsConsultationIdPut**](ConsultationsAPI.md#apiv2consultationsconsultationidput) | **PUT** /api/v2/consultations/{consultationId} | Update consultation.
[**apiV2ConsultationsGet**](ConsultationsAPI.md#apiv2consultationsget) | **GET** /api/v2/consultations | Get all consultations.
[**apiV2ConsultationsRequestIdPost**](ConsultationsAPI.md#apiv2consultationsrequestidpost) | **POST** /api/v2/consultations/{requestId} | Create consultation.


# **apiV2ConsultationsConsultationIdGet**
```swift
    open class func apiV2ConsultationsConsultationIdGet(consultationId: UUID, languageCode: String? = nil, completion: @escaping (_ data: ConsultationModel?, _ error: Error?) -> Void)
```

Get consultation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let consultationId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)

// Get consultation.
ConsultationsAPI.apiV2ConsultationsConsultationIdGet(consultationId: consultationId, languageCode: languageCode) { (response, error) in
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
 **consultationId** | **UUID** |  | 
 **languageCode** | **String** |  | [optional] 

### Return type

[**ConsultationModel**](ConsultationModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConsultationsConsultationIdPayPost**
```swift
    open class func apiV2ConsultationsConsultationIdPayPost(consultationId: UUID, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Pay consultation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let consultationId = 987 // UUID | 

// Pay consultation.
ConsultationsAPI.apiV2ConsultationsConsultationIdPayPost(consultationId: consultationId) { (response, error) in
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
 **consultationId** | **UUID** |  | 

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConsultationsConsultationIdPut**
```swift
    open class func apiV2ConsultationsConsultationIdPut(consultationId: UUID, updateConsultationCommand: UpdateConsultationCommand? = nil, completion: @escaping (_ data: ConsultationModel?, _ error: Error?) -> Void)
```

Update consultation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let consultationId = 987 // UUID | 
let updateConsultationCommand = UpdateConsultationCommand(specialtyId: 123, doctorId: 123, language: "language_example", isAccountHolder: false, firstName: "firstName_example", lastName: "lastName_example", email: "email_example", phone: "phone_example", dateOfBirth: Date(), gender: Gender(), comment: "comment_example", timeRange: "timeRange_example", approximateDateStart: Date(), approximateDateEnd: Date(), timeZone: "timeZone_example") // UpdateConsultationCommand |  (optional)

// Update consultation.
ConsultationsAPI.apiV2ConsultationsConsultationIdPut(consultationId: consultationId, updateConsultationCommand: updateConsultationCommand) { (response, error) in
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
 **consultationId** | **UUID** |  | 
 **updateConsultationCommand** | [**UpdateConsultationCommand**](UpdateConsultationCommand.md) |  | [optional] 

### Return type

[**ConsultationModel**](ConsultationModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConsultationsGet**
```swift
    open class func apiV2ConsultationsGet(hospitalId: UUID? = nil, hospitalName: String? = nil, doctorId: UUID? = nil, doctorName: String? = nil, dealId: UUID? = nil, dealName: String? = nil, isOpen: Bool? = nil, isCompleted: Bool? = nil, status: ConsultationStatus? = nil, consultationType: ConsultationType? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: ConsultationsModel?, _ error: Error?) -> Void)
```

Get all consultations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let doctorId = 987 // UUID |  (optional)
let doctorName = "doctorName_example" // String |  (optional)
let dealId = 987 // UUID |  (optional)
let dealName = "dealName_example" // String |  (optional)
let isOpen = true // Bool |  (optional)
let isCompleted = true // Bool |  (optional)
let status = ConsultationStatus() // ConsultationStatus |  (optional)
let consultationType = ConsultationType() // ConsultationType |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all consultations.
ConsultationsAPI.apiV2ConsultationsGet(hospitalId: hospitalId, hospitalName: hospitalName, doctorId: doctorId, doctorName: doctorName, dealId: dealId, dealName: dealName, isOpen: isOpen, isCompleted: isCompleted, status: status, consultationType: consultationType, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **hospitalId** | **UUID** |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **doctorId** | **UUID** |  | [optional] 
 **doctorName** | **String** |  | [optional] 
 **dealId** | **UUID** |  | [optional] 
 **dealName** | **String** |  | [optional] 
 **isOpen** | **Bool** |  | [optional] 
 **isCompleted** | **Bool** |  | [optional] 
 **status** | [**ConsultationStatus**](.md) |  | [optional] 
 **consultationType** | [**ConsultationType**](.md) |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**ConsultationsModel**](ConsultationsModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConsultationsRequestIdPost**
```swift
    open class func apiV2ConsultationsRequestIdPost(requestId: UUID, createConsultationCommand: CreateConsultationCommand? = nil, completion: @escaping (_ data: ConsultationModel?, _ error: Error?) -> Void)
```

Create consultation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let requestId = 987 // UUID | 
let createConsultationCommand = CreateConsultationCommand(consultationType: ConsultationType(), hospitalId: 123, specialtyId: 123, doctorId: 123, dealId: 123, language: "language_example", isAccountHolder: false, firstName: "firstName_example", lastName: "lastName_example", email: "email_example", phone: "phone_example", dateOfBirth: Date(), gender: Gender(), comment: "comment_example", timeRange: "timeRange_example", approximateDateStart: Date(), approximateDateEnd: Date(), timeZone: "timeZone_example", isExternal: false) // CreateConsultationCommand |  (optional)

// Create consultation.
ConsultationsAPI.apiV2ConsultationsRequestIdPost(requestId: requestId, createConsultationCommand: createConsultationCommand) { (response, error) in
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
 **requestId** | **UUID** |  | 
 **createConsultationCommand** | [**CreateConsultationCommand**](CreateConsultationCommand.md) |  | [optional] 

### Return type

[**ConsultationModel**](ConsultationModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

