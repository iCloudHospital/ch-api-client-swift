# HospitalReviewsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1HospitalsHospitalIdReviewsPatientIdDelete**](HospitalReviewsAPI.md#apiv1hospitalshospitalidreviewspatientiddelete) | **DELETE** /api/v1/hospitals/{hospitalId}/reviews/{patientId} | Delete review.
[**apiV1HospitalsHospitalIdReviewsPatientIdGet**](HospitalReviewsAPI.md#apiv1hospitalshospitalidreviewspatientidget) | **GET** /api/v1/hospitals/{hospitalId}/reviews/{patientId} | Get review.
[**apiV1HospitalsHospitalIdReviewsPatientIdPut**](HospitalReviewsAPI.md#apiv1hospitalshospitalidreviewspatientidput) | **PUT** /api/v1/hospitals/{hospitalId}/reviews/{patientId} | Update review.
[**apiV1HospitalsHospitalIdReviewsPost**](HospitalReviewsAPI.md#apiv1hospitalshospitalidreviewspost) | **POST** /api/v1/hospitals/{hospitalId}/reviews | Create review.
[**apiV1HospitalsReviewsGet**](HospitalReviewsAPI.md#apiv1hospitalsreviewsget) | **GET** /api/v1/hospitals/reviews | Get all reviews.


# **apiV1HospitalsHospitalIdReviewsPatientIdDelete**
```swift
    open class func apiV1HospitalsHospitalIdReviewsPatientIdDelete(hospitalId: UUID, patientId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete review.

Sample request:        DELETE /api/v1/hospitals/1/reviews/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let patientId = 987 // UUID | 

// Delete review.
HospitalReviewsAPI.apiV1HospitalsHospitalIdReviewsPatientIdDelete(hospitalId: hospitalId, patientId: patientId) { (response, error) in
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
 **patientId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdReviewsPatientIdGet**
```swift
    open class func apiV1HospitalsHospitalIdReviewsPatientIdGet(hospitalId: UUID, patientId: UUID, completion: @escaping (_ data: HospitalReviewViewModel?, _ error: Error?) -> Void)
```

Get review.

Sample request:        GET /api/v1/hospitals/1/reviews/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let patientId = 987 // UUID | 

// Get review.
HospitalReviewsAPI.apiV1HospitalsHospitalIdReviewsPatientIdGet(hospitalId: hospitalId, patientId: patientId) { (response, error) in
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
 **patientId** | [**UUID**](.md) |  | 

### Return type

[**HospitalReviewViewModel**](HospitalReviewViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdReviewsPatientIdPut**
```swift
    open class func apiV1HospitalsHospitalIdReviewsPatientIdPut(hospitalId: UUID, patientId: UUID, updateHospitalReviewCommand: UpdateHospitalReviewCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update review.

Sample request:

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let patientId = 987 // UUID | 
let updateHospitalReviewCommand = UpdateHospitalReviewCommand(body: "body_example", recommended: false, reviewCategory: ReviewCategory(), rate: 123) // UpdateHospitalReviewCommand |  (optional)

// Update review.
HospitalReviewsAPI.apiV1HospitalsHospitalIdReviewsPatientIdPut(hospitalId: hospitalId, patientId: patientId, updateHospitalReviewCommand: updateHospitalReviewCommand) { (response, error) in
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
 **patientId** | [**UUID**](.md) |  | 
 **updateHospitalReviewCommand** | [**UpdateHospitalReviewCommand**](UpdateHospitalReviewCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdReviewsPost**
```swift
    open class func apiV1HospitalsHospitalIdReviewsPost(hospitalId: UUID, patientId: UUID, createHospitalReviewCommand: CreateHospitalReviewCommand? = nil, completion: @escaping (_ data: HospitalReview?, _ error: Error?) -> Void)
```

Create review.

Sample request:        POST /api/v1/hospitals/1/reviews/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let patientId = 987 // UUID | 
let createHospitalReviewCommand = CreateHospitalReviewCommand(body: "body_example", recommended: false, reviewCategory: ReviewCategory(), rate: 123) // CreateHospitalReviewCommand |  (optional)

// Create review.
HospitalReviewsAPI.apiV1HospitalsHospitalIdReviewsPost(hospitalId: hospitalId, patientId: patientId, createHospitalReviewCommand: createHospitalReviewCommand) { (response, error) in
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
 **patientId** | [**UUID**](.md) |  | 
 **createHospitalReviewCommand** | [**CreateHospitalReviewCommand**](CreateHospitalReviewCommand.md) |  | [optional] 

### Return type

[**HospitalReview**](HospitalReview.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsReviewsGet**
```swift
    open class func apiV1HospitalsReviewsGet(patientId: UUID? = nil, patientName: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, body: String? = nil, recommended: Bool? = nil, reviewCategory: ReviewCategory? = nil, rate: Int? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: HospitalReviewsViewModel?, _ error: Error?) -> Void)
```

Get all reviews.

Sample request:        GET /api/v1/hospitals/reviews

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let patientId = 987 // UUID |  (optional)
let patientName = "patientName_example" // String |  (optional)
let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
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
HospitalReviewsAPI.apiV1HospitalsReviewsGet(patientId: patientId, patientName: patientName, hospitalId: hospitalId, hospitalName: hospitalName, body: body, recommended: recommended, reviewCategory: reviewCategory, rate: rate, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **patientId** | [**UUID**](.md) |  | [optional] 
 **patientName** | **String** |  | [optional] 
 **hospitalId** | [**UUID**](.md) |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
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

[**HospitalReviewsViewModel**](HospitalReviewsViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

