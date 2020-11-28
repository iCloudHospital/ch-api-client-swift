# CommunicationsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1CommunicationsDelete**](CommunicationsAPI.md#apiv1communicationsdelete) | **DELETE** /api/v1/communications | 
[**apiV1CommunicationsGet**](CommunicationsAPI.md#apiv1communicationsget) | **GET** /api/v1/communications | 
[**apiV1CommunicationsPut**](CommunicationsAPI.md#apiv1communicationsput) | **PUT** /api/v1/communications | 


# **apiV1CommunicationsDelete**
```swift
    open class func apiV1CommunicationsDelete(completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


CommunicationsAPI.apiV1CommunicationsDelete() { (response, error) in
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
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1CommunicationsGet**
```swift
    open class func apiV1CommunicationsGet(completion: @escaping (_ data: CommunicationUserTokenModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


CommunicationsAPI.apiV1CommunicationsGet() { (response, error) in
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
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1CommunicationsPut**
```swift
    open class func apiV1CommunicationsPut(completion: @escaping (_ data: CommunicationUserTokenModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


CommunicationsAPI.apiV1CommunicationsPut() { (response, error) in
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
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

