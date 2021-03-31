# GroupChannelsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1GroupchannelsChannelUrlInvitePost**](GroupChannelsAPI.md#apiv1groupchannelschannelurlinvitepost) | **POST** /api/v1/groupchannels/{channelUrl}/invite | 
[**apiV1GroupchannelsDealDealIdGet**](GroupChannelsAPI.md#apiv1groupchannelsdealdealidget) | **GET** /api/v1/groupchannels/deal/{dealId} | 
[**apiV1GroupchannelsDealDealIdPost**](GroupChannelsAPI.md#apiv1groupchannelsdealdealidpost) | **POST** /api/v1/groupchannels/deal/{dealId} | 
[**apiV1GroupchannelsDoctorDoctorIdGet**](GroupChannelsAPI.md#apiv1groupchannelsdoctordoctoridget) | **GET** /api/v1/groupchannels/doctor/{doctorId} | 
[**apiV1GroupchannelsDoctorDoctorIdPost**](GroupChannelsAPI.md#apiv1groupchannelsdoctordoctoridpost) | **POST** /api/v1/groupchannels/doctor/{doctorId} | 
[**apiV1GroupchannelsHospitalHospitalIdGet**](GroupChannelsAPI.md#apiv1groupchannelshospitalhospitalidget) | **GET** /api/v1/groupchannels/hospital/{hospitalId} | 
[**apiV1GroupchannelsHospitalHospitalIdPost**](GroupChannelsAPI.md#apiv1groupchannelshospitalhospitalidpost) | **POST** /api/v1/groupchannels/hospital/{hospitalId} | 
[**apiV1GroupchannelsIdGet**](GroupChannelsAPI.md#apiv1groupchannelsidget) | **GET** /api/v1/groupchannels/{id} | 


# **apiV1GroupchannelsChannelUrlInvitePost**
```swift
    open class func apiV1GroupchannelsChannelUrlInvitePost(channelUrl: String, inviteSendBirdGroupChannelCommand: InviteSendBirdGroupChannelCommand? = nil, completion: @escaping (_ data: SendBirdGroupChannelViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let channelUrl = "channelUrl_example" // String | 
let inviteSendBirdGroupChannelCommand = InviteSendBirdGroupChannelCommand(userIds: ["userIds_example"]) // InviteSendBirdGroupChannelCommand |  (optional)

GroupChannelsAPI.apiV1GroupchannelsChannelUrlInvitePost(channelUrl: channelUrl, inviteSendBirdGroupChannelCommand: inviteSendBirdGroupChannelCommand) { (response, error) in
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
 **channelUrl** | **String** |  | 
 **inviteSendBirdGroupChannelCommand** | [**InviteSendBirdGroupChannelCommand**](InviteSendBirdGroupChannelCommand.md) |  | [optional] 

### Return type

[**SendBirdGroupChannelViewModel**](SendBirdGroupChannelViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1GroupchannelsDealDealIdGet**
```swift
    open class func apiV1GroupchannelsDealDealIdGet(hospitalId: UUID, dealId: String, completion: @escaping (_ data: SendBirdGroupChannelViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let dealId = "dealId_example" // String | 

GroupChannelsAPI.apiV1GroupchannelsDealDealIdGet(hospitalId: hospitalId, dealId: dealId) { (response, error) in
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
 **dealId** | **String** |  | 

### Return type

[**SendBirdGroupChannelViewModel**](SendBirdGroupChannelViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1GroupchannelsDealDealIdPost**
```swift
    open class func apiV1GroupchannelsDealDealIdPost(dealId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let dealId = 987 // UUID | 

GroupChannelsAPI.apiV1GroupchannelsDealDealIdPost(dealId: dealId) { (response, error) in
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
 **dealId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1GroupchannelsDoctorDoctorIdGet**
```swift
    open class func apiV1GroupchannelsDoctorDoctorIdGet(hospitalId: UUID, doctorId: String, completion: @escaping (_ data: SendBirdGroupChannelViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let doctorId = "doctorId_example" // String | 

GroupChannelsAPI.apiV1GroupchannelsDoctorDoctorIdGet(hospitalId: hospitalId, doctorId: doctorId) { (response, error) in
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
 **doctorId** | **String** |  | 

### Return type

[**SendBirdGroupChannelViewModel**](SendBirdGroupChannelViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1GroupchannelsDoctorDoctorIdPost**
```swift
    open class func apiV1GroupchannelsDoctorDoctorIdPost(doctorId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 

GroupChannelsAPI.apiV1GroupchannelsDoctorDoctorIdPost(doctorId: doctorId) { (response, error) in
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

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1GroupchannelsHospitalHospitalIdGet**
```swift
    open class func apiV1GroupchannelsHospitalHospitalIdGet(hospitalId: UUID, completion: @escaping (_ data: SendBirdGroupChannelViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 

GroupChannelsAPI.apiV1GroupchannelsHospitalHospitalIdGet(hospitalId: hospitalId) { (response, error) in
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

### Return type

[**SendBirdGroupChannelViewModel**](SendBirdGroupChannelViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1GroupchannelsHospitalHospitalIdPost**
```swift
    open class func apiV1GroupchannelsHospitalHospitalIdPost(hospitalId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 

GroupChannelsAPI.apiV1GroupchannelsHospitalHospitalIdPost(hospitalId: hospitalId) { (response, error) in
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

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1GroupchannelsIdGet**
```swift
    open class func apiV1GroupchannelsIdGet(id: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID | 

GroupChannelsAPI.apiV1GroupchannelsIdGet(id: id) { (response, error) in
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
 **id** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

