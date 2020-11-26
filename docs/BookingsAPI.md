# BookingsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1BookingsBookingIdApprovePost**](BookingsAPI.md#apiv1bookingsbookingidapprovepost) | **POST** /api/v1/bookings/{bookingId}/approve | Approve booking.
[**apiV1BookingsBookingIdCancelPost**](BookingsAPI.md#apiv1bookingsbookingidcancelpost) | **POST** /api/v1/bookings/{bookingId}/cancel | Cancel booking.
[**apiV1BookingsBookingIdDelete**](BookingsAPI.md#apiv1bookingsbookingiddelete) | **DELETE** /api/v1/bookings/{bookingId} | Delete booking.
[**apiV1BookingsBookingIdGet**](BookingsAPI.md#apiv1bookingsbookingidget) | **GET** /api/v1/bookings/{bookingId} | Get booking.
[**apiV1BookingsBookingIdPaidPost**](BookingsAPI.md#apiv1bookingsbookingidpaidpost) | **POST** /api/v1/bookings/{bookingId}/paid | Mark as Paid booking.
[**apiV1BookingsBookingIdPayPost**](BookingsAPI.md#apiv1bookingsbookingidpaypost) | **POST** /api/v1/bookings/{bookingId}/pay | Pay booking.
[**apiV1BookingsBookingIdPut**](BookingsAPI.md#apiv1bookingsbookingidput) | **PUT** /api/v1/bookings/{bookingId} | Update booking.
[**apiV1BookingsBookingIdRejectPost**](BookingsAPI.md#apiv1bookingsbookingidrejectpost) | **POST** /api/v1/bookings/{bookingId}/reject | Reject booking.
[**apiV1BookingsGet**](BookingsAPI.md#apiv1bookingsget) | **GET** /api/v1/bookings | Get all bookings.
[**apiV1BookingsRequestIdPost**](BookingsAPI.md#apiv1bookingsrequestidpost) | **POST** /api/v1/bookings/{requestId} | Create booking.


# **apiV1BookingsBookingIdApprovePost**
```swift
    open class func apiV1BookingsBookingIdApprovePost(bookingId: UUID, approveBookingCommand: ApproveBookingCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Approve booking.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let bookingId = 987 // UUID | 
let approveBookingCommand = ApproveBookingCommand(confirmedDateStart: Date(), confirmedDateEnd: Date()) // ApproveBookingCommand |  (optional)

// Approve booking.
BookingsAPI.apiV1BookingsBookingIdApprovePost(bookingId: bookingId, approveBookingCommand: approveBookingCommand) { (response, error) in
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
 **bookingId** | [**UUID**](.md) |  | 
 **approveBookingCommand** | [**ApproveBookingCommand**](ApproveBookingCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BookingsBookingIdCancelPost**
```swift
    open class func apiV1BookingsBookingIdCancelPost(bookingId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Cancel booking.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let bookingId = 987 // UUID | 

// Cancel booking.
BookingsAPI.apiV1BookingsBookingIdCancelPost(bookingId: bookingId) { (response, error) in
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
 **bookingId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BookingsBookingIdDelete**
```swift
    open class func apiV1BookingsBookingIdDelete(bookingId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete booking.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let bookingId = 987 // UUID | 

// Delete booking.
BookingsAPI.apiV1BookingsBookingIdDelete(bookingId: bookingId) { (response, error) in
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
 **bookingId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BookingsBookingIdGet**
```swift
    open class func apiV1BookingsBookingIdGet(bookingId: UUID, completion: @escaping (_ data: BookingViewModel?, _ error: Error?) -> Void)
```

Get booking.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let bookingId = 987 // UUID | 

// Get booking.
BookingsAPI.apiV1BookingsBookingIdGet(bookingId: bookingId) { (response, error) in
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
 **bookingId** | [**UUID**](.md) |  | 

### Return type

[**BookingViewModel**](BookingViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BookingsBookingIdPaidPost**
```swift
    open class func apiV1BookingsBookingIdPaidPost(bookingId: UUID, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Mark as Paid booking.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let bookingId = 987 // UUID | 

// Mark as Paid booking.
BookingsAPI.apiV1BookingsBookingIdPaidPost(bookingId: bookingId) { (response, error) in
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
 **bookingId** | [**UUID**](.md) |  | 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BookingsBookingIdPayPost**
```swift
    open class func apiV1BookingsBookingIdPayPost(bookingId: UUID, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Pay booking.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let bookingId = 987 // UUID | 

// Pay booking.
BookingsAPI.apiV1BookingsBookingIdPayPost(bookingId: bookingId) { (response, error) in
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
 **bookingId** | [**UUID**](.md) |  | 

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BookingsBookingIdPut**
```swift
    open class func apiV1BookingsBookingIdPut(bookingId: UUID, updateBookingCommand: UpdateBookingCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update booking.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let bookingId = 987 // UUID | 
let updateBookingCommand = UpdateBookingCommand(quantity: 123, firstName: "firstName_example", lastName: "lastName_example", email: "email_example", phone: "phone_example", dateOfBirth: Date(), gender: Gender(), approximateDateStart: Date(), approximateDateEnd: Date(), comment: "comment_example", timeZone: "timeZone_example") // UpdateBookingCommand |  (optional)

// Update booking.
BookingsAPI.apiV1BookingsBookingIdPut(bookingId: bookingId, updateBookingCommand: updateBookingCommand) { (response, error) in
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
 **bookingId** | [**UUID**](.md) |  | 
 **updateBookingCommand** | [**UpdateBookingCommand**](UpdateBookingCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BookingsBookingIdRejectPost**
```swift
    open class func apiV1BookingsBookingIdRejectPost(bookingId: UUID, rejectBookingCommand: RejectBookingCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Reject booking.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let bookingId = 987 // UUID | 
let rejectBookingCommand = RejectBookingCommand(rejectReason: RejectReason(), rejectComment: "rejectComment_example") // RejectBookingCommand |  (optional)

// Reject booking.
BookingsAPI.apiV1BookingsBookingIdRejectPost(bookingId: bookingId, rejectBookingCommand: rejectBookingCommand) { (response, error) in
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
 **bookingId** | [**UUID**](.md) |  | 
 **rejectBookingCommand** | [**RejectBookingCommand**](RejectBookingCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BookingsGet**
```swift
    open class func apiV1BookingsGet(searchString: String? = nil, isOpen: Bool? = nil, isCompleted: Bool? = nil, status: BookingStatus? = nil, dealPackageId: UUID? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: BookingsViewModel?, _ error: Error?) -> Void)
```

Get all bookings.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let searchString = "searchString_example" // String |  (optional)
let isOpen = true // Bool |  (optional)
let isCompleted = true // Bool |  (optional)
let status = BookingStatus() // BookingStatus |  (optional)
let dealPackageId = 987 // UUID |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all bookings.
BookingsAPI.apiV1BookingsGet(searchString: searchString, isOpen: isOpen, isCompleted: isCompleted, status: status, dealPackageId: dealPackageId, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **status** | [**BookingStatus**](.md) |  | [optional] 
 **dealPackageId** | [**UUID**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**BookingsViewModel**](BookingsViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1BookingsRequestIdPost**
```swift
    open class func apiV1BookingsRequestIdPost(requestId: UUID, createBookingCommand: CreateBookingCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create booking.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let requestId = 987 // UUID | 
let createBookingCommand = CreateBookingCommand(hospitalId: 123, dealPackageId: 123, quantity: 123, firstName: "firstName_example", lastName: "lastName_example", email: "email_example", phone: "phone_example", dateOfBirth: Date(), gender: Gender(), approximateDateStart: Date(), approximateDateEnd: Date(), comment: "comment_example", timeZone: "timeZone_example") // CreateBookingCommand |  (optional)

// Create booking.
BookingsAPI.apiV1BookingsRequestIdPost(requestId: requestId, createBookingCommand: createBookingCommand) { (response, error) in
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
 **createBookingCommand** | [**CreateBookingCommand**](CreateBookingCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

