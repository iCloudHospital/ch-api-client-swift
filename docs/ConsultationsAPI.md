# ConsultationsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ConsultationsConsultationIdApprovePost**](ConsultationsAPI.md#apiv1consultationsconsultationidapprovepost) | **POST** /api/v1/consultations/{consultationId}/approve | Approve consultation.
[**apiV1ConsultationsConsultationIdCancelPost**](ConsultationsAPI.md#apiv1consultationsconsultationidcancelpost) | **POST** /api/v1/consultations/{consultationId}/cancel | Cancel consultation.
[**apiV1ConsultationsConsultationIdDelete**](ConsultationsAPI.md#apiv1consultationsconsultationiddelete) | **DELETE** /api/v1/consultations/{consultationId} | Delete consultation.
[**apiV1ConsultationsConsultationIdGet**](ConsultationsAPI.md#apiv1consultationsconsultationidget) | **GET** /api/v1/consultations/{consultationId} | Get consultation.
[**apiV1ConsultationsConsultationIdPayPost**](ConsultationsAPI.md#apiv1consultationsconsultationidpaypost) | **POST** /api/v1/consultations/{consultationId}/pay | Pay consultation.
[**apiV1ConsultationsConsultationIdPut**](ConsultationsAPI.md#apiv1consultationsconsultationidput) | **PUT** /api/v1/consultations/{consultationId} | Update consultation.
[**apiV1ConsultationsConsultationIdRejectPost**](ConsultationsAPI.md#apiv1consultationsconsultationidrejectpost) | **POST** /api/v1/consultations/{consultationId}/reject | Reject consultation.
[**apiV1ConsultationsGet**](ConsultationsAPI.md#apiv1consultationsget) | **GET** /api/v1/consultations | Get all consultations.
[**apiV1ConsultationsRequestIdPost**](ConsultationsAPI.md#apiv1consultationsrequestidpost) | **POST** /api/v1/consultations/{requestId} | Create consultation.


# **apiV1ConsultationsConsultationIdApprovePost**
```swift
    open class func apiV1ConsultationsConsultationIdApprovePost(consultationId: UUID, approveConsultationCommand: ApproveConsultationCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Approve consultation.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let consultationId = 987 // UUID | 
let approveConsultationCommand = ApproveConsultationCommand(confirmedDateStart: Date(), confirmedDateEnd: Date(), callerId: 123) // ApproveConsultationCommand |  (optional)

// Approve consultation.
ConsultationsAPI.apiV1ConsultationsConsultationIdApprovePost(consultationId: consultationId, approveConsultationCommand: approveConsultationCommand) { (response, error) in
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
 **consultationId** | [**UUID**](.md) |  | 
 **approveConsultationCommand** | [**ApproveConsultationCommand**](ApproveConsultationCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ConsultationsConsultationIdCancelPost**
```swift
    open class func apiV1ConsultationsConsultationIdCancelPost(consultationId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Cancel consultation.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let consultationId = 987 // UUID | 

// Cancel consultation.
ConsultationsAPI.apiV1ConsultationsConsultationIdCancelPost(consultationId: consultationId) { (response, error) in
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
 **consultationId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ConsultationsConsultationIdDelete**
```swift
    open class func apiV1ConsultationsConsultationIdDelete(consultationId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete consultation.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let consultationId = 987 // UUID | 

// Delete consultation.
ConsultationsAPI.apiV1ConsultationsConsultationIdDelete(consultationId: consultationId) { (response, error) in
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
 **consultationId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ConsultationsConsultationIdGet**
```swift
    open class func apiV1ConsultationsConsultationIdGet(consultationId: UUID, completion: @escaping (_ data: ConsultationViewModel?, _ error: Error?) -> Void)
```

Get consultation.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let consultationId = 987 // UUID | 

// Get consultation.
ConsultationsAPI.apiV1ConsultationsConsultationIdGet(consultationId: consultationId) { (response, error) in
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
 **consultationId** | [**UUID**](.md) |  | 

### Return type

[**ConsultationViewModel**](ConsultationViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ConsultationsConsultationIdPayPost**
```swift
    open class func apiV1ConsultationsConsultationIdPayPost(consultationId: UUID, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Pay consultation.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let consultationId = 987 // UUID | 

// Pay consultation.
ConsultationsAPI.apiV1ConsultationsConsultationIdPayPost(consultationId: consultationId) { (response, error) in
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
 **consultationId** | [**UUID**](.md) |  | 

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ConsultationsConsultationIdPut**
```swift
    open class func apiV1ConsultationsConsultationIdPut(consultationId: UUID, updateConsultationCommand: UpdateConsultationCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update consultation.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let consultationId = 987 // UUID | 
let updateConsultationCommand = UpdateConsultationCommand(specialtyId: 123, doctorId: 123, language: "language_example", isAccountHolder: false, firstName: "firstName_example", lastName: "lastName_example", email: "email_example", phone: "phone_example", dateOfBirth: Date(), gender: Gender(), comment: "comment_example", timeRange: "timeRange_example", approximateDateStart: Date(), approximateDateEnd: Date(), timeZone: "timeZone_example") // UpdateConsultationCommand |  (optional)

// Update consultation.
ConsultationsAPI.apiV1ConsultationsConsultationIdPut(consultationId: consultationId, updateConsultationCommand: updateConsultationCommand) { (response, error) in
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
 **consultationId** | [**UUID**](.md) |  | 
 **updateConsultationCommand** | [**UpdateConsultationCommand**](UpdateConsultationCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ConsultationsConsultationIdRejectPost**
```swift
    open class func apiV1ConsultationsConsultationIdRejectPost(consultationId: UUID, rejectConsultationCommand: RejectConsultationCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Reject consultation.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let consultationId = 987 // UUID | 
let rejectConsultationCommand = RejectConsultationCommand(rejectReason: RejectReason(), rejectComment: "rejectComment_example") // RejectConsultationCommand |  (optional)

// Reject consultation.
ConsultationsAPI.apiV1ConsultationsConsultationIdRejectPost(consultationId: consultationId, rejectConsultationCommand: rejectConsultationCommand) { (response, error) in
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
 **consultationId** | [**UUID**](.md) |  | 
 **rejectConsultationCommand** | [**RejectConsultationCommand**](RejectConsultationCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ConsultationsGet**
```swift
    open class func apiV1ConsultationsGet(searchString: String? = nil, isOpen: Bool? = nil, isCompleted: Bool? = nil, status: ConsultationStatus? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: ConsultationsViewModel?, _ error: Error?) -> Void)
```

Get all consultations.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let searchString = "searchString_example" // String |  (optional)
let isOpen = true // Bool |  (optional)
let isCompleted = true // Bool |  (optional)
let status = ConsultationStatus() // ConsultationStatus |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all consultations.
ConsultationsAPI.apiV1ConsultationsGet(searchString: searchString, isOpen: isOpen, isCompleted: isCompleted, status: status, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **searchString** | **String** |  | [optional] 
 **isOpen** | **Bool** |  | [optional] 
 **isCompleted** | **Bool** |  | [optional] 
 **status** | [**ConsultationStatus**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**ConsultationsViewModel**](ConsultationsViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ConsultationsRequestIdPost**
```swift
    open class func apiV1ConsultationsRequestIdPost(requestId: UUID, createConsultationCommand: CreateConsultationCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create consultation.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let requestId = 987 // UUID | 
let createConsultationCommand = CreateConsultationCommand(consultationType: ConsultationType(), hospitalId: 123, specialtyId: 123, doctorId: 123, dealId: 123, language: "language_example", isAccountHolder: false, firstName: "firstName_example", lastName: "lastName_example", email: "email_example", phone: "phone_example", dateOfBirth: Date(), gender: Gender(), comment: "comment_example", timeRange: "timeRange_example", approximateDateStart: Date(), approximateDateEnd: Date(), timeZone: "timeZone_example") // CreateConsultationCommand |  (optional)

// Create consultation.
ConsultationsAPI.apiV1ConsultationsRequestIdPost(requestId: requestId, createConsultationCommand: createConsultationCommand) { (response, error) in
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
 **requestId** | [**UUID**](.md) |  | 
 **createConsultationCommand** | [**CreateConsultationCommand**](CreateConsultationCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

