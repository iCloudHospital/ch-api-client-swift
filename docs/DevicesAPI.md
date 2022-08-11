# DevicesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2DevicesGet**](DevicesAPI.md#apiv2devicesget) | **GET** /api/v2/devices | Get all devices.
[**apiV2DevicesIdDelete**](DevicesAPI.md#apiv2devicesiddelete) | **DELETE** /api/v2/devices/{id} | Delete device.
[**apiV2DevicesIdGet**](DevicesAPI.md#apiv2devicesidget) | **GET** /api/v2/devices/{id} | Get device.
[**apiV2DevicesIdLoginsPost**](DevicesAPI.md#apiv2devicesidloginspost) | **POST** /api/v2/devices/{id}/logins | Create device login.
[**apiV2DevicesIdPut**](DevicesAPI.md#apiv2devicesidput) | **PUT** /api/v2/devices/{id} | Update device.
[**apiV2DevicesPost**](DevicesAPI.md#apiv2devicespost) | **POST** /api/v2/devices | Create device.


# **apiV2DevicesGet**
```swift
    open class func apiV2DevicesGet(id: UUID? = nil, token: String? = nil, platform: Platform? = nil, appAlert: Bool? = nil, eventAlert: Bool? = nil, noticeAlert: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: DevicesModel?, _ error: Error?) -> Void)
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

// Get all devices.
DevicesAPI.apiV2DevicesGet(id: id, token: token, platform: platform, appAlert: appAlert, eventAlert: eventAlert, noticeAlert: noticeAlert, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **id** | **UUID** |  | [optional] 
 **token** | **String** |  | [optional] 
 **platform** | [**Platform**](.md) |  | [optional] 
 **appAlert** | **Bool** |  | [optional] 
 **eventAlert** | **Bool** |  | [optional] 
 **noticeAlert** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**DevicesModel**](DevicesModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DevicesIdDelete**
```swift
    open class func apiV2DevicesIdDelete(id: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID | 

// Delete device.
DevicesAPI.apiV2DevicesIdDelete(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DevicesIdGet**
```swift
    open class func apiV2DevicesIdGet(id: UUID, completion: @escaping (_ data: DeviceModel?, _ error: Error?) -> Void)
```

Get device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID | 

// Get device.
DevicesAPI.apiV2DevicesIdGet(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

[**DeviceModel**](DeviceModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DevicesIdLoginsPost**
```swift
    open class func apiV2DevicesIdLoginsPost(id: UUID, createDeviceLoginCommand: CreateDeviceLoginCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create device login.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID | 
let createDeviceLoginCommand = CreateDeviceLoginCommand(version: "version_example", location: LocationModel(latitude: 123, longitude: 123, country: "country_example", state: "state_example", county: "county_example", city: "city_example", zipCode: "zipCode_example", address: "address_example")) // CreateDeviceLoginCommand |  (optional)

// Create device login.
DevicesAPI.apiV2DevicesIdLoginsPost(id: id, createDeviceLoginCommand: createDeviceLoginCommand) { (response, error) in
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
 **id** | **UUID** |  | 
 **createDeviceLoginCommand** | [**CreateDeviceLoginCommand**](CreateDeviceLoginCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DevicesIdPut**
```swift
    open class func apiV2DevicesIdPut(id: UUID, updateDeviceCommand: UpdateDeviceCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID | 
let updateDeviceCommand = UpdateDeviceCommand(token: "token_example", tags: ["tags_example"], appAlert: false, eventAlert: false, noticeAlert: false) // UpdateDeviceCommand |  (optional)

// Update device.
DevicesAPI.apiV2DevicesIdPut(id: id, updateDeviceCommand: updateDeviceCommand) { (response, error) in
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
 **id** | **UUID** |  | 
 **updateDeviceCommand** | [**UpdateDeviceCommand**](UpdateDeviceCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DevicesPost**
```swift
    open class func apiV2DevicesPost(createDeviceCommand: CreateDeviceCommand? = nil, completion: @escaping (_ data: DeviceModel?, _ error: Error?) -> Void)
```

Create device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createDeviceCommand = CreateDeviceCommand(id: 123, token: "token_example", platform: Platform(), tags: ["tags_example"], appAlert: false, eventAlert: false, noticeAlert: false) // CreateDeviceCommand |  (optional)

// Create device.
DevicesAPI.apiV2DevicesPost(createDeviceCommand: createDeviceCommand) { (response, error) in
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

[**DeviceModel**](DeviceModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

