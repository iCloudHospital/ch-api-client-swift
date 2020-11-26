# DoctorReviewsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1DoctorsDoctorIdReviewsPatientIdDelete**](DoctorReviewsAPI.md#apiv1doctorsdoctoridreviewspatientiddelete) | **DELETE** /api/v1/doctors/{doctorId}/reviews/{patientId} | Delete review.
[**apiV1DoctorsDoctorIdReviewsPatientIdGet**](DoctorReviewsAPI.md#apiv1doctorsdoctoridreviewspatientidget) | **GET** /api/v1/doctors/{doctorId}/reviews/{patientId} | Get review.
[**apiV1DoctorsDoctorIdReviewsPatientIdPut**](DoctorReviewsAPI.md#apiv1doctorsdoctoridreviewspatientidput) | **PUT** /api/v1/doctors/{doctorId}/reviews/{patientId} | Update review.
[**apiV1DoctorsDoctorIdReviewsPost**](DoctorReviewsAPI.md#apiv1doctorsdoctoridreviewspost) | **POST** /api/v1/doctors/{doctorId}/reviews | Create review.
[**apiV1DoctorsReviewsGet**](DoctorReviewsAPI.md#apiv1doctorsreviewsget) | **GET** /api/v1/doctors/reviews | Get all reviews.


# **apiV1DoctorsDoctorIdReviewsPatientIdDelete**
```swift
    open class func apiV1DoctorsDoctorIdReviewsPatientIdDelete(doctorId: UUID, patientId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete review.

Sample request:        DELETE /api/v1/doctors/1/reviews/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let patientId = 987 // UUID | 

// Delete review.
DoctorReviewsAPI.apiV1DoctorsDoctorIdReviewsPatientIdDelete(doctorId: doctorId, patientId: patientId) { (response, error) in
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
 **patientId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DoctorsDoctorIdReviewsPatientIdGet**
```swift
    open class func apiV1DoctorsDoctorIdReviewsPatientIdGet(doctorId: UUID, patientId: UUID, completion: @escaping (_ data: DoctorReviewViewModel?, _ error: Error?) -> Void)
```

Get review.

Sample request:        GET /api/v1/doctors/1/reviews/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let patientId = 987 // UUID | 

// Get review.
DoctorReviewsAPI.apiV1DoctorsDoctorIdReviewsPatientIdGet(doctorId: doctorId, patientId: patientId) { (response, error) in
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
 **patientId** | [**UUID**](.md) |  | 

### Return type

[**DoctorReviewViewModel**](DoctorReviewViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DoctorsDoctorIdReviewsPatientIdPut**
```swift
    open class func apiV1DoctorsDoctorIdReviewsPatientIdPut(doctorId: UUID, patientId: UUID, updateDoctorReviewCommand: UpdateDoctorReviewCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update review.

Sample request:

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let patientId = 987 // UUID | 
let updateDoctorReviewCommand = UpdateDoctorReviewCommand(body: "body_example", recommended: false, reviewCategory: ReviewCategory(), rate: 123) // UpdateDoctorReviewCommand |  (optional)

// Update review.
DoctorReviewsAPI.apiV1DoctorsDoctorIdReviewsPatientIdPut(doctorId: doctorId, patientId: patientId, updateDoctorReviewCommand: updateDoctorReviewCommand) { (response, error) in
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
 **patientId** | [**UUID**](.md) |  | 
 **updateDoctorReviewCommand** | [**UpdateDoctorReviewCommand**](UpdateDoctorReviewCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DoctorsDoctorIdReviewsPost**
```swift
    open class func apiV1DoctorsDoctorIdReviewsPost(doctorId: UUID, patientId: UUID, createDoctorReviewCommand: CreateDoctorReviewCommand? = nil, completion: @escaping (_ data: DoctorReview?, _ error: Error?) -> Void)
```

Create review.

Sample request:        POST /api/v1/doctors/1/reviews/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let patientId = 987 // UUID | 
let createDoctorReviewCommand = CreateDoctorReviewCommand(body: "body_example", recommended: false, reviewCategory: ReviewCategory(), rate: 123) // CreateDoctorReviewCommand |  (optional)

// Create review.
DoctorReviewsAPI.apiV1DoctorsDoctorIdReviewsPost(doctorId: doctorId, patientId: patientId, createDoctorReviewCommand: createDoctorReviewCommand) { (response, error) in
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
 **patientId** | [**UUID**](.md) |  | 
 **createDoctorReviewCommand** | [**CreateDoctorReviewCommand**](CreateDoctorReviewCommand.md) |  | [optional] 

### Return type

[**DoctorReview**](DoctorReview.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DoctorsReviewsGet**
```swift
    open class func apiV1DoctorsReviewsGet(doctorId: UUID? = nil, doctorName: String? = nil, patientId: UUID? = nil, patientName: String? = nil, body: String? = nil, recommended: Bool? = nil, reviewCategory: ReviewCategory? = nil, rate: Int? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: DoctorReviewsViewModel?, _ error: Error?) -> Void)
```

Get all reviews.

Sample request:        GET /api/v1/doctors/reviews

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID |  (optional)
let doctorName = "doctorName_example" // String |  (optional)
let patientId = 987 // UUID |  (optional)
let patientName = "patientName_example" // String |  (optional)
let body = "body_example" // String |  (optional)
let recommended = true // Bool |  (optional)
let reviewCategory = ReviewCategory() // ReviewCategory |  (optional)
let rate = 987 // Int |  (optional)
let created = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all reviews.
DoctorReviewsAPI.apiV1DoctorsReviewsGet(doctorId: doctorId, doctorName: doctorName, patientId: patientId, patientName: patientName, body: body, recommended: recommended, reviewCategory: reviewCategory, rate: rate, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **doctorId** | [**UUID**](.md) |  | [optional] 
 **doctorName** | **String** |  | [optional] 
 **patientId** | [**UUID**](.md) |  | [optional] 
 **patientName** | **String** |  | [optional] 
 **body** | **String** |  | [optional] 
 **recommended** | **Bool** |  | [optional] 
 **reviewCategory** | [**ReviewCategory**](.md) |  | [optional] 
 **rate** | **Int** |  | [optional] 
 **created** | **Date** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**DoctorReviewsViewModel**](DoctorReviewsViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

