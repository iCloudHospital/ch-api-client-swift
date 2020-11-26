# ProfilesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ProfilesChangeemailPost**](ProfilesAPI.md#apiv1profileschangeemailpost) | **POST** /api/v1/profiles/changeemail | Change user&#39;s email on both Identity and Api.
[**apiV1ProfilesConfirmemailPost**](ProfilesAPI.md#apiv1profilesconfirmemailpost) | **POST** /api/v1/profiles/confirmemail | 
[**apiV1ProfilesGet**](ProfilesAPI.md#apiv1profilesget) | **GET** /api/v1/profiles | Get current user&#39;s profile.


# **apiV1ProfilesChangeemailPost**
```swift
    open class func apiV1ProfilesChangeemailPost(changeEmailCommand: ChangeEmailCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Change user's email on both Identity and Api.

Sample request:        POST /api/v1/profiles/changeEmail      {          \"email\": \"user@example.com\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let changeEmailCommand = ChangeEmailCommand(email: "email_example") // ChangeEmailCommand |  (optional)

// Change user's email on both Identity and Api.
ProfilesAPI.apiV1ProfilesChangeemailPost(changeEmailCommand: changeEmailCommand) { (response, error) in
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
 **changeEmailCommand** | [**ChangeEmailCommand**](ChangeEmailCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ProfilesConfirmemailPost**
```swift
    open class func apiV1ProfilesConfirmemailPost(confirmEmailCommand: ConfirmEmailCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let confirmEmailCommand = ConfirmEmailCommand(code: "code_example") // ConfirmEmailCommand |  (optional)

ProfilesAPI.apiV1ProfilesConfirmemailPost(confirmEmailCommand: confirmEmailCommand) { (response, error) in
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
 **confirmEmailCommand** | [**ConfirmEmailCommand**](ConfirmEmailCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ProfilesGet**
```swift
    open class func apiV1ProfilesGet(completion: @escaping (_ data: UserViewModel?, _ error: Error?) -> Void)
```

Get current user's profile.

Sample request:        GET /api/v1/profiles

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


// Get current user's profile.
ProfilesAPI.apiV1ProfilesGet() { (response, error) in
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

[**UserViewModel**](UserViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

