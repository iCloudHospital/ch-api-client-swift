# AccountsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AccountsChangeEmailPost**](AccountsAPI.md#apiv1accountschangeemailpost) | **POST** /api/v1/accounts/changeEmail | 
[**apiV1AccountsChangePasswordPost**](AccountsAPI.md#apiv1accountschangepasswordpost) | **POST** /api/v1/accounts/changePassword | 
[**apiV1AccountsConfirmEmailPost**](AccountsAPI.md#apiv1accountsconfirmemailpost) | **POST** /api/v1/accounts/confirmEmail | 
[**apiV1AccountsDelete**](AccountsAPI.md#apiv1accountsdelete) | **DELETE** /api/v1/accounts | 
[**apiV1AccountsForgotPasswordPost**](AccountsAPI.md#apiv1accountsforgotpasswordpost) | **POST** /api/v1/accounts/forgotPassword | 
[**apiV1AccountsGet**](AccountsAPI.md#apiv1accountsget) | **GET** /api/v1/accounts | 
[**apiV1AccountsPost**](AccountsAPI.md#apiv1accountspost) | **POST** /api/v1/accounts | 
[**apiV1AccountsResetPasswordPost**](AccountsAPI.md#apiv1accountsresetpasswordpost) | **POST** /api/v1/accounts/resetPassword | 
[**apiV1AccountsSendVerificationEmailPost**](AccountsAPI.md#apiv1accountssendverificationemailpost) | **POST** /api/v1/accounts/sendVerificationEmail | 


# **apiV1AccountsChangeEmailPost**
```swift
    open class func apiV1AccountsChangeEmailPost(changeEmailModel: ChangeEmailModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let changeEmailModel = ChangeEmailModel(email: "email_example") // ChangeEmailModel |  (optional)

AccountsAPI.apiV1AccountsChangeEmailPost(changeEmailModel: changeEmailModel) { (response, error) in
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
 **changeEmailModel** | [**ChangeEmailModel**](ChangeEmailModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountsChangePasswordPost**
```swift
    open class func apiV1AccountsChangePasswordPost(setPasswordRequestModel: SetPasswordRequestModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let setPasswordRequestModel = SetPasswordRequestModel(oldPassword: "oldPassword_example", newPassword: "newPassword_example", confirmPassword: "confirmPassword_example") // SetPasswordRequestModel |  (optional)

AccountsAPI.apiV1AccountsChangePasswordPost(setPasswordRequestModel: setPasswordRequestModel) { (response, error) in
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
 **setPasswordRequestModel** | [**SetPasswordRequestModel**](SetPasswordRequestModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountsConfirmEmailPost**
```swift
    open class func apiV1AccountsConfirmEmailPost(confirmEmailModel: ConfirmEmailModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let confirmEmailModel = ConfirmEmailModel(code: "code_example") // ConfirmEmailModel |  (optional)

AccountsAPI.apiV1AccountsConfirmEmailPost(confirmEmailModel: confirmEmailModel) { (response, error) in
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
 **confirmEmailModel** | [**ConfirmEmailModel**](ConfirmEmailModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountsDelete**
```swift
    open class func apiV1AccountsDelete(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


AccountsAPI.apiV1AccountsDelete() { (response, error) in
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

Void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountsForgotPasswordPost**
```swift
    open class func apiV1AccountsForgotPasswordPost(forgotPasswordViewModel: ForgotPasswordViewModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let forgotPasswordViewModel = ForgotPasswordViewModel(policy: LoginResolutionPolicy(), email: "email_example", username: "username_example") // ForgotPasswordViewModel |  (optional)

AccountsAPI.apiV1AccountsForgotPasswordPost(forgotPasswordViewModel: forgotPasswordViewModel) { (response, error) in
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
 **forgotPasswordViewModel** | [**ForgotPasswordViewModel**](ForgotPasswordViewModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountsGet**
```swift
    open class func apiV1AccountsGet(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


AccountsAPI.apiV1AccountsGet() { (response, error) in
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

Void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountsPost**
```swift
    open class func apiV1AccountsPost(registerViewModel: RegisterViewModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let registerViewModel = RegisterViewModel(email: "email_example", password: "password_example", confirmPassword: "confirmPassword_example") // RegisterViewModel |  (optional)

AccountsAPI.apiV1AccountsPost(registerViewModel: registerViewModel) { (response, error) in
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
 **registerViewModel** | [**RegisterViewModel**](RegisterViewModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountsResetPasswordPost**
```swift
    open class func apiV1AccountsResetPasswordPost(resetPasswordViewModel: ResetPasswordViewModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let resetPasswordViewModel = ResetPasswordViewModel(email: "email_example", password: "password_example", confirmPassword: "confirmPassword_example", code: "code_example") // ResetPasswordViewModel |  (optional)

AccountsAPI.apiV1AccountsResetPasswordPost(resetPasswordViewModel: resetPasswordViewModel) { (response, error) in
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
 **resetPasswordViewModel** | [**ResetPasswordViewModel**](ResetPasswordViewModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountsSendVerificationEmailPost**
```swift
    open class func apiV1AccountsSendVerificationEmailPost(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


AccountsAPI.apiV1AccountsSendVerificationEmailPost() { (response, error) in
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

Void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

