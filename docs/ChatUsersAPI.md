# ChatUsersAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ChatusersCurrentGet**](ChatUsersAPI.md#apiv2chatuserscurrentget) | **GET** /api/v2/chatusers/current | 
[**apiV2ChatusersDelete**](ChatUsersAPI.md#apiv2chatusersdelete) | **DELETE** /api/v2/chatusers | Delete chatUser.
[**apiV2ChatusersGet**](ChatUsersAPI.md#apiv2chatusersget) | **GET** /api/v2/chatusers | Get all chatUsers.
[**apiV2ChatusersPost**](ChatUsersAPI.md#apiv2chatuserspost) | **POST** /api/v2/chatusers | Create a chatUser.
[**apiV2ChatusersPut**](ChatUsersAPI.md#apiv2chatusersput) | **PUT** /api/v2/chatusers | Update chatUser.
[**apiV2ChatusersUserIdGet**](ChatUsersAPI.md#apiv2chatusersuseridget) | **GET** /api/v2/chatusers/{userId} | Get chatUser.


# **apiV2ChatusersCurrentGet**
```swift
    open class func apiV2ChatusersCurrentGet(completion: @escaping (_ data: ChatUserModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


ChatUsersAPI.apiV2ChatusersCurrentGet() { (response, error) in
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

[**ChatUserModel**](ChatUserModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ChatusersDelete**
```swift
    open class func apiV2ChatusersDelete(completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete chatUser.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


// Delete chatUser.
ChatUsersAPI.apiV2ChatusersDelete() { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ChatusersGet**
```swift
    open class func apiV2ChatusersGet(limit: Int? = nil, token: String? = nil, userIds: String? = nil, nickname: String? = nil, nicknameStartswith: String? = nil, completion: @escaping (_ data: ChatUsersModel?, _ error: Error?) -> Void)
```

Get all chatUsers.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let limit = 987 // Int |  (optional)
let token = "token_example" // String |  (optional)
let userIds = "userIds_example" // String |  (optional)
let nickname = "nickname_example" // String |  (optional)
let nicknameStartswith = "nicknameStartswith_example" // String |  (optional)

// Get all chatUsers.
ChatUsersAPI.apiV2ChatusersGet(limit: limit, token: token, userIds: userIds, nickname: nickname, nicknameStartswith: nicknameStartswith) { (response, error) in
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
 **limit** | **Int** |  | [optional] 
 **token** | **String** |  | [optional] 
 **userIds** | **String** |  | [optional] 
 **nickname** | **String** |  | [optional] 
 **nicknameStartswith** | **String** |  | [optional] 

### Return type

[**ChatUsersModel**](ChatUsersModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ChatusersPost**
```swift
    open class func apiV2ChatusersPost(createChatUserCommand: CreateChatUserCommand? = nil, completion: @escaping (_ data: ChatUserModel?, _ error: Error?) -> Void)
```

Create a chatUser.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createChatUserCommand = CreateChatUserCommand(nickname: "nickname_example", profileUrl: "profileUrl_example", issueAccessToken: false, discoveryKeys: ["discoveryKeys_example"], hospitalId: 123) // CreateChatUserCommand |  (optional)

// Create a chatUser.
ChatUsersAPI.apiV2ChatusersPost(createChatUserCommand: createChatUserCommand) { (response, error) in
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
 **createChatUserCommand** | [**CreateChatUserCommand**](CreateChatUserCommand.md) |  | [optional] 

### Return type

[**ChatUserModel**](ChatUserModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ChatusersPut**
```swift
    open class func apiV2ChatusersPut(updateChatUserCommand: UpdateChatUserCommand? = nil, completion: @escaping (_ data: ChatUserModel?, _ error: Error?) -> Void)
```

Update chatUser.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let updateChatUserCommand = UpdateChatUserCommand(nickname: "nickname_example", profileUrl: "profileUrl_example", issueAccessToken: false, discoveryKeys: ["discoveryKeys_example"]) // UpdateChatUserCommand |  (optional)

// Update chatUser.
ChatUsersAPI.apiV2ChatusersPut(updateChatUserCommand: updateChatUserCommand) { (response, error) in
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
 **updateChatUserCommand** | [**UpdateChatUserCommand**](UpdateChatUserCommand.md) |  | [optional] 

### Return type

[**ChatUserModel**](ChatUserModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ChatusersUserIdGet**
```swift
    open class func apiV2ChatusersUserIdGet(userId: UUID, completion: @escaping (_ data: ChatUserModel?, _ error: Error?) -> Void)
```

Get chatUser.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let userId = 987 // UUID | 

// Get chatUser.
ChatUsersAPI.apiV2ChatusersUserIdGet(userId: userId) { (response, error) in
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

[**ChatUserModel**](ChatUserModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

