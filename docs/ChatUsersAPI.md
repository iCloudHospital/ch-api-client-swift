# ChatUsersAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ChatusersCurrentGet**](ChatUsersAPI.md#apiv1chatuserscurrentget) | **GET** /api/v1/chatusers/current | 
[**apiV1ChatusersCurrentPost**](ChatUsersAPI.md#apiv1chatuserscurrentpost) | **POST** /api/v1/chatusers/current | 
[**apiV1ChatusersDelete**](ChatUsersAPI.md#apiv1chatusersdelete) | **DELETE** /api/v1/chatusers | 
[**apiV1ChatusersPut**](ChatUsersAPI.md#apiv1chatusersput) | **PUT** /api/v1/chatusers | 
[**apiV1ChatusersUserIdGet**](ChatUsersAPI.md#apiv1chatusersuseridget) | **GET** /api/v1/chatusers/{userId} | 


# **apiV1ChatusersCurrentGet**
```swift
    open class func apiV1ChatusersCurrentGet(completion: @escaping (_ data: SendBirdUserViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


ChatUsersAPI.apiV1ChatusersCurrentGet() { (response, error) in
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

[**SendBirdUserViewModel**](SendBirdUserViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ChatusersCurrentPost**
```swift
    open class func apiV1ChatusersCurrentPost(createSendBirdCurrentUserCommand: CreateSendBirdCurrentUserCommand? = nil, completion: @escaping (_ data: SendBirdUserViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createSendBirdCurrentUserCommand = CreateSendBirdCurrentUserCommand(nickname: "nickname_example", firstName: "firstName_example", lastName: "lastName_example") // CreateSendBirdCurrentUserCommand |  (optional)

ChatUsersAPI.apiV1ChatusersCurrentPost(createSendBirdCurrentUserCommand: createSendBirdCurrentUserCommand) { (response, error) in
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
 **createSendBirdCurrentUserCommand** | [**CreateSendBirdCurrentUserCommand**](CreateSendBirdCurrentUserCommand.md) |  | [optional] 

### Return type

[**SendBirdUserViewModel**](SendBirdUserViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ChatusersDelete**
```swift
    open class func apiV1ChatusersDelete(completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


ChatUsersAPI.apiV1ChatusersDelete() { (response, error) in
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

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ChatusersPut**
```swift
    open class func apiV1ChatusersPut(updateSendBirdUserCommand: UpdateSendBirdUserCommand? = nil, completion: @escaping (_ data: SendBirdUserViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let updateSendBirdUserCommand = UpdateSendBirdUserCommand(nickname: "nickname_example", profileUrl: "profileUrl_example") // UpdateSendBirdUserCommand |  (optional)

ChatUsersAPI.apiV1ChatusersPut(updateSendBirdUserCommand: updateSendBirdUserCommand) { (response, error) in
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
 **updateSendBirdUserCommand** | [**UpdateSendBirdUserCommand**](UpdateSendBirdUserCommand.md) |  | [optional] 

### Return type

[**SendBirdUserViewModel**](SendBirdUserViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ChatusersUserIdGet**
```swift
    open class func apiV1ChatusersUserIdGet(userId: UUID, completion: @escaping (_ data: SendBirdUserViewModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let userId = 987 // UUID | 

ChatUsersAPI.apiV1ChatusersUserIdGet(userId: userId) { (response, error) in
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
 **userId** | [**UUID**](.md) |  | 

### Return type

[**SendBirdUserViewModel**](SendBirdUserViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

