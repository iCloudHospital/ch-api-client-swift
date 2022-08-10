# BookingsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2BookingsBookingIdGet**](BookingsAPI.md#apiv2bookingsbookingidget) | **GET** /api/v2/bookings/{bookingId} | Get booking.
[**apiV2BookingsBookingIdPayPost**](BookingsAPI.md#apiv2bookingsbookingidpaypost) | **POST** /api/v2/bookings/{bookingId}/pay | Pay booking.
[**apiV2BookingsBookingIdPut**](BookingsAPI.md#apiv2bookingsbookingidput) | **PUT** /api/v2/bookings/{bookingId} | Update booking.
[**apiV2BookingsGet**](BookingsAPI.md#apiv2bookingsget) | **GET** /api/v2/bookings | Get all bookings.
[**apiV2BookingsRequestIdPost**](BookingsAPI.md#apiv2bookingsrequestidpost) | **POST** /api/v2/bookings/{requestId} | Create booking.


# **apiV2BookingsBookingIdGet**
```swift
    open class func apiV2BookingsBookingIdGet(bookingId: UUID, languageCode: String? = nil, completion: @escaping (_ data: BookingModel?, _ error: Error?) -> Void)
```

Get booking.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let bookingId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)

// Get booking.
BookingsAPI.apiV2BookingsBookingIdGet(bookingId: bookingId, languageCode: languageCode) { (response, error) in
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
 **bookingId** | **UUID** |  | 
 **languageCode** | **String** |  | [optional] 

### Return type

[**BookingModel**](BookingModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2BookingsBookingIdPayPost**
```swift
    open class func apiV2BookingsBookingIdPayPost(bookingId: UUID, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Pay booking.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let bookingId = 987 // UUID | 

// Pay booking.
BookingsAPI.apiV2BookingsBookingIdPayPost(bookingId: bookingId) { (response, error) in
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
 **bookingId** | **UUID** |  | 

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2BookingsBookingIdPut**
```swift
    open class func apiV2BookingsBookingIdPut(bookingId: UUID, updateBookingCommand: UpdateBookingCommand? = nil, completion: @escaping (_ data: BookingModel?, _ error: Error?) -> Void)
```

Update booking.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let bookingId = 987 // UUID | 
let updateBookingCommand = UpdateBookingCommand(quantity: 123, firstName: "firstName_example", lastName: "lastName_example", email: "email_example", phone: "phone_example", dateOfBirth: Date(), gender: Gender(), approximateDateStart: Date(), approximateDateEnd: Date(), comment: "comment_example", timeZone: "timeZone_example") // UpdateBookingCommand |  (optional)

// Update booking.
BookingsAPI.apiV2BookingsBookingIdPut(bookingId: bookingId, updateBookingCommand: updateBookingCommand) { (response, error) in
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
 **bookingId** | **UUID** |  | 
 **updateBookingCommand** | [**UpdateBookingCommand**](UpdateBookingCommand.md) |  | [optional] 

### Return type

[**BookingModel**](BookingModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2BookingsGet**
```swift
    open class func apiV2BookingsGet(hospitalId: UUID? = nil, hospitalName: String? = nil, dealId: UUID? = nil, dealName: String? = nil, isOpen: Bool? = nil, isCompleted: Bool? = nil, status: BookingStatus? = nil, dealPackageId: UUID? = nil, sortRequestDate: SortingOrder? = nil, sortConfirmedDateStart: SortingOrder? = nil, isExternal: Bool? = nil, paymentEnabled: Bool? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: BookingsModel?, _ error: Error?) -> Void)
```

Get all bookings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let dealId = 987 // UUID |  (optional)
let dealName = "dealName_example" // String |  (optional)
let isOpen = true // Bool |  (optional)
let isCompleted = true // Bool |  (optional)
let status = BookingStatus() // BookingStatus |  (optional)
let dealPackageId = 987 // UUID |  (optional)
let sortRequestDate = SortingOrder() // SortingOrder |  (optional)
let sortConfirmedDateStart = SortingOrder() // SortingOrder |  (optional)
let isExternal = true // Bool |  (optional)
let paymentEnabled = true // Bool |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all bookings.
BookingsAPI.apiV2BookingsGet(hospitalId: hospitalId, hospitalName: hospitalName, dealId: dealId, dealName: dealName, isOpen: isOpen, isCompleted: isCompleted, status: status, dealPackageId: dealPackageId, sortRequestDate: sortRequestDate, sortConfirmedDateStart: sortConfirmedDateStart, isExternal: isExternal, paymentEnabled: paymentEnabled, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **dealId** | **UUID** |  | [optional] 
 **dealName** | **String** |  | [optional] 
 **isOpen** | **Bool** |  | [optional] 
 **isCompleted** | **Bool** |  | [optional] 
 **status** | [**BookingStatus**](.md) |  | [optional] 
 **dealPackageId** | **UUID** |  | [optional] 
 **sortRequestDate** | [**SortingOrder**](.md) |  | [optional] 
 **sortConfirmedDateStart** | [**SortingOrder**](.md) |  | [optional] 
 **isExternal** | **Bool** |  | [optional] 
 **paymentEnabled** | **Bool** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**BookingsModel**](BookingsModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2BookingsRequestIdPost**
```swift
    open class func apiV2BookingsRequestIdPost(requestId: UUID, createBookingCommand: CreateBookingCommand? = nil, completion: @escaping (_ data: BookingModel?, _ error: Error?) -> Void)
```

Create booking.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let requestId = 987 // UUID | 
let createBookingCommand = CreateBookingCommand(hospitalId: 123, dealPackageId: 123, quantity: 123, firstName: "firstName_example", lastName: "lastName_example", email: "email_example", phone: "phone_example", dateOfBirth: Date(), gender: Gender(), approximateDateStart: Date(), approximateDateEnd: Date(), comment: "comment_example", timeZone: "timeZone_example", isExternal: false) // CreateBookingCommand |  (optional)

// Create booking.
BookingsAPI.apiV2BookingsRequestIdPost(requestId: requestId, createBookingCommand: createBookingCommand) { (response, error) in
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
 **createBookingCommand** | [**CreateBookingCommand**](CreateBookingCommand.md) |  | [optional] 

### Return type

[**BookingModel**](BookingModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

