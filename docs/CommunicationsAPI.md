# CommunicationsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2CommunicationsDelete**](CommunicationsAPI.md#apiv2communicationsdelete) | **DELETE** /api/v2/communications | Delete CommunicationUser.
[**apiV2CommunicationsGet**](CommunicationsAPI.md#apiv2communicationsget) | **GET** /api/v2/communications | Get CommunicationUser.
[**apiV2CommunicationsPut**](CommunicationsAPI.md#apiv2communicationsput) | **PUT** /api/v2/communications | Revoke CommunicationUser.


# **apiV2CommunicationsDelete**
```swift
    open class func apiV2CommunicationsDelete(completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Delete CommunicationUser.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


// Delete CommunicationUser.
CommunicationsAPI.apiV2CommunicationsDelete() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**Int**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CommunicationsGet**
```swift
    open class func apiV2CommunicationsGet(completion: @escaping (_ data: CommunicationUserTokenModel?, _ error: Error?) -> Void)
```

Get CommunicationUser.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


// Get CommunicationUser.
CommunicationsAPI.apiV2CommunicationsGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**CommunicationUserTokenModel**](CommunicationUserTokenModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CommunicationsPut**
```swift
    open class func apiV2CommunicationsPut(completion: @escaping (_ data: CommunicationUserTokenModel?, _ error: Error?) -> Void)
```

Revoke CommunicationUser.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


// Revoke CommunicationUser.
CommunicationsAPI.apiV2CommunicationsPut() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**CommunicationUserTokenModel**](CommunicationUserTokenModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

