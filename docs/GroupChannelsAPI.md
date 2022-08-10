# GroupChannelsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2GroupchannelsChannelUrlInvitePost**](GroupChannelsAPI.md#apiv2groupchannelschannelurlinvitepost) | **POST** /api/v2/groupchannels/{channelUrl}/invite | 
[**apiV2GroupchannelsDealDealIdGet**](GroupChannelsAPI.md#apiv2groupchannelsdealdealidget) | **GET** /api/v2/groupchannels/deal/{dealId} | 
[**apiV2GroupchannelsDoctorDoctorIdGet**](GroupChannelsAPI.md#apiv2groupchannelsdoctordoctoridget) | **GET** /api/v2/groupchannels/doctor/{doctorId} | 
[**apiV2GroupchannelsHospitalHospitalIdGet**](GroupChannelsAPI.md#apiv2groupchannelshospitalhospitalidget) | **GET** /api/v2/groupchannels/hospital/{hospitalId} | 


# **apiV2GroupchannelsChannelUrlInvitePost**
```swift
    open class func apiV2GroupchannelsChannelUrlInvitePost(channelUrl: String, inviteSendBirdGroupChannelCommand: InviteSendBirdGroupChannelCommand? = nil, completion: @escaping (_ data: SendBirdGroupChannelModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let channelUrl = "channelUrl_example" // String | 
let inviteSendBirdGroupChannelCommand = InviteSendBirdGroupChannelCommand(userIds: ["userIds_example"]) // InviteSendBirdGroupChannelCommand |  (optional)

GroupChannelsAPI.apiV2GroupchannelsChannelUrlInvitePost(channelUrl: channelUrl, inviteSendBirdGroupChannelCommand: inviteSendBirdGroupChannelCommand) { (response, error) in
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

[**SendBirdGroupChannelModel**](SendBirdGroupChannelModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2GroupchannelsDealDealIdGet**
```swift
    open class func apiV2GroupchannelsDealDealIdGet(dealId: UUID, hospitalId: UUID? = nil, isExternal: Bool? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let dealId = 987 // UUID | 
let hospitalId = 987 // UUID |  (optional)
let isExternal = true // Bool |  (optional)

GroupChannelsAPI.apiV2GroupchannelsDealDealIdGet(dealId: dealId, hospitalId: hospitalId, isExternal: isExternal) { (response, error) in
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
 **dealId** | **UUID** |  | 
 **hospitalId** | **UUID** |  | [optional] 
 **isExternal** | **Bool** |  | [optional] 

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2GroupchannelsDoctorDoctorIdGet**
```swift
    open class func apiV2GroupchannelsDoctorDoctorIdGet(doctorId: UUID, hospitalId: UUID? = nil, isExternal: Bool? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let hospitalId = 987 // UUID |  (optional)
let isExternal = true // Bool |  (optional)

GroupChannelsAPI.apiV2GroupchannelsDoctorDoctorIdGet(doctorId: doctorId, hospitalId: hospitalId, isExternal: isExternal) { (response, error) in
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
 **doctorId** | **UUID** |  | 
 **hospitalId** | **UUID** |  | [optional] 
 **isExternal** | **Bool** |  | [optional] 

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2GroupchannelsHospitalHospitalIdGet**
```swift
    open class func apiV2GroupchannelsHospitalHospitalIdGet(hospitalId: UUID, isExternal: Bool? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let isExternal = true // Bool |  (optional)

GroupChannelsAPI.apiV2GroupchannelsHospitalHospitalIdGet(hospitalId: hospitalId, isExternal: isExternal) { (response, error) in
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
 **hospitalId** | **UUID** |  | 
 **isExternal** | **Bool** |  | [optional] 

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

