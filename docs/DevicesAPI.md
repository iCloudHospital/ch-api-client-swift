# DevicesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1DevicesGet**](DevicesAPI.md#apiv1devicesget) | **GET** /api/v1/devices | Get all devices.
[**apiV1DevicesIdDelete**](DevicesAPI.md#apiv1devicesiddelete) | **DELETE** /api/v1/devices/{id} | Delete device.
[**apiV1DevicesIdGet**](DevicesAPI.md#apiv1devicesidget) | **GET** /api/v1/devices/{id} | Get device.
[**apiV1DevicesIdLoginsPost**](DevicesAPI.md#apiv1devicesidloginspost) | **POST** /api/v1/devices/{id}/logins | Create device login.
[**apiV1DevicesIdPut**](DevicesAPI.md#apiv1devicesidput) | **PUT** /api/v1/devices/{id} | Update device.
[**apiV1DevicesPost**](DevicesAPI.md#apiv1devicespost) | **POST** /api/v1/devices | Create device.


# **apiV1DevicesGet**
```swift
    open class func apiV1DevicesGet(id: UUID? = nil, token: String? = nil, platform: Platform? = nil, appAlert: Bool? = nil, eventAlert: Bool? = nil, noticeAlert: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: DevicesViewModel?, _ error: Error?) -> Void)
```

Get all devices.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let token = "token_example" // String |  (optional)
let platform = Platform() // Platform |  (optional)
let appAlert = true // Bool |  (optional)
let eventAlert = true // Bool |  (optional)
let noticeAlert = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all devices.
DevicesAPI.apiV1DevicesGet(id: id, token: token, platform: platform, appAlert: appAlert, eventAlert: eventAlert, noticeAlert: noticeAlert, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **token** | **String** |  | [optional] 
 **platform** | [**Platform**](.md) |  | [optional] 
 **appAlert** | **Bool** |  | [optional] 
 **eventAlert** | **Bool** |  | [optional] 
 **noticeAlert** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**DevicesViewModel**](DevicesViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DevicesIdDelete**
```swift
    open class func apiV1DevicesIdDelete(id: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete device.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID | 

// Delete device.
DevicesAPI.apiV1DevicesIdDelete(id: id) { (response, error) in
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

# **apiV1DevicesIdGet**
```swift
    open class func apiV1DevicesIdGet(id: UUID, completion: @escaping (_ data: DeviceViewModel?, _ error: Error?) -> Void)
```

Get device.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID | 

// Get device.
DevicesAPI.apiV1DevicesIdGet(id: id) { (response, error) in
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

[**DeviceViewModel**](DeviceViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DevicesIdLoginsPost**
```swift
    open class func apiV1DevicesIdLoginsPost(id: UUID, createDeviceLoginCommand: CreateDeviceLoginCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create device login.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID | 
let createDeviceLoginCommand = CreateDeviceLoginCommand(version: "version_example", location: {...}) // CreateDeviceLoginCommand |  (optional)

// Create device login.
DevicesAPI.apiV1DevicesIdLoginsPost(id: id, createDeviceLoginCommand: createDeviceLoginCommand) { (response, error) in
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
 **createDeviceLoginCommand** | [**CreateDeviceLoginCommand**](CreateDeviceLoginCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DevicesIdPut**
```swift
    open class func apiV1DevicesIdPut(id: UUID, updateDeviceCommand: UpdateDeviceCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update device.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID | 
let updateDeviceCommand = UpdateDeviceCommand(token: "token_example", tags: ["tags_example"], appAlert: false, eventAlert: false, noticeAlert: false) // UpdateDeviceCommand |  (optional)

// Update device.
DevicesAPI.apiV1DevicesIdPut(id: id, updateDeviceCommand: updateDeviceCommand) { (response, error) in
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
 **updateDeviceCommand** | [**UpdateDeviceCommand**](UpdateDeviceCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DevicesPost**
```swift
    open class func apiV1DevicesPost(createDeviceCommand: CreateDeviceCommand? = nil, completion: @escaping (_ data: DeviceViewModel?, _ error: Error?) -> Void)
```

Create device.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createDeviceCommand = CreateDeviceCommand(id: 123, token: "token_example", platform: Platform(), tags: ["tags_example"], appAlert: false, eventAlert: false, noticeAlert: false) // CreateDeviceCommand |  (optional)

// Create device.
DevicesAPI.apiV1DevicesPost(createDeviceCommand: createDeviceCommand) { (response, error) in
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
 **createDeviceCommand** | [**CreateDeviceCommand**](CreateDeviceCommand.md) |  | [optional] 

### Return type

[**DeviceViewModel**](DeviceViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

