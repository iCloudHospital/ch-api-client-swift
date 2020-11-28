# DevicesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1DevicesDeviceIdDelete**](DevicesAPI.md#apiv1devicesdeviceiddelete) | **DELETE** /api/v1/devices/{deviceId} | Delete device.
[**apiV1DevicesDeviceIdGet**](DevicesAPI.md#apiv1devicesdeviceidget) | **GET** /api/v1/devices/{deviceId} | Get device.
[**apiV1DevicesDeviceIdLoginsPost**](DevicesAPI.md#apiv1devicesdeviceidloginspost) | **POST** /api/v1/devices/{deviceId}/logins | Create device login.
[**apiV1DevicesDeviceIdPut**](DevicesAPI.md#apiv1devicesdeviceidput) | **PUT** /api/v1/devices/{deviceId} | Update device.
[**apiV1DevicesPost**](DevicesAPI.md#apiv1devicespost) | **POST** /api/v1/devices | Create device.


# **apiV1DevicesDeviceIdDelete**
```swift
    open class func apiV1DevicesDeviceIdDelete(deviceId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete device.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let deviceId = 987 // UUID | 

// Delete device.
DevicesAPI.apiV1DevicesDeviceIdDelete(deviceId: deviceId) { (response, error) in
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
 **deviceId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DevicesDeviceIdGet**
```swift
    open class func apiV1DevicesDeviceIdGet(deviceId: UUID, completion: @escaping (_ data: DeviceViewModel?, _ error: Error?) -> Void)
```

Get device.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let deviceId = 987 // UUID | 

// Get device.
DevicesAPI.apiV1DevicesDeviceIdGet(deviceId: deviceId) { (response, error) in
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
 **deviceId** | [**UUID**](.md) |  | 

### Return type

[**DeviceViewModel**](DeviceViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DevicesDeviceIdLoginsPost**
```swift
    open class func apiV1DevicesDeviceIdLoginsPost(deviceId: UUID, createDeviceLoginCommand: CreateDeviceLoginCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create device login.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let deviceId = 987 // UUID | 
let createDeviceLoginCommand = CreateDeviceLoginCommand(version: "version_example", location: {...}) // CreateDeviceLoginCommand |  (optional)

// Create device login.
DevicesAPI.apiV1DevicesDeviceIdLoginsPost(deviceId: deviceId, createDeviceLoginCommand: createDeviceLoginCommand) { (response, error) in
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
 **deviceId** | [**UUID**](.md) |  | 
 **createDeviceLoginCommand** | [**CreateDeviceLoginCommand**](CreateDeviceLoginCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DevicesDeviceIdPut**
```swift
    open class func apiV1DevicesDeviceIdPut(deviceId: UUID, updateDeviceCommand: UpdateDeviceCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update device.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let deviceId = 987 // UUID | 
let updateDeviceCommand = UpdateDeviceCommand(appAlert: false, eventAlert: false, noticeAlert: false) // UpdateDeviceCommand |  (optional)

// Update device.
DevicesAPI.apiV1DevicesDeviceIdPut(deviceId: deviceId, updateDeviceCommand: updateDeviceCommand) { (response, error) in
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
 **deviceId** | [**UUID**](.md) |  | 
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
    open class func apiV1DevicesPost(createDeviceCommand: CreateDeviceCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create device.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createDeviceCommand = CreateDeviceCommand(token: "token_example", platform: Platform(), appAlert: false, eventAlert: false, noticeAlert: false) // CreateDeviceCommand |  (optional)

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

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

