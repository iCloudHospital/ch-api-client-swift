# AdminsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AdminsChangeUserEmailPost**](AdminsAPI.md#apiv1adminschangeuseremailpost) | **POST** /api/v1/admins/changeUserEmail | 
[**apiV1AdminsCreateUserPost**](AdminsAPI.md#apiv1adminscreateuserpost) | **POST** /api/v1/admins/createUser | 
[**apiV1AdminsDeleteUserForceIdDelete**](AdminsAPI.md#apiv1adminsdeleteuserforceiddelete) | **DELETE** /api/v1/admins/deleteUserForce/{id} | 
[**apiV1AdminsDeleteUserIdDelete**](AdminsAPI.md#apiv1adminsdeleteuseriddelete) | **DELETE** /api/v1/admins/deleteUser/{id} | 
[**apiV1AdminsReactivateUserIdPost**](AdminsAPI.md#apiv1adminsreactivateuseridpost) | **POST** /api/v1/admins/reactivateUser/{id} | 


# **apiV1AdminsChangeUserEmailPost**
```swift
    open class func apiV1AdminsChangeUserEmailPost(changeUserEmailModel: ChangeUserEmailModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let changeUserEmailModel = ChangeUserEmailModel(id: "id_example", email: "email_example") // ChangeUserEmailModel |  (optional)

AdminsAPI.apiV1AdminsChangeUserEmailPost(changeUserEmailModel: changeUserEmailModel) { (response, error) in
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
 **changeUserEmailModel** | [**ChangeUserEmailModel**](ChangeUserEmailModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AdminsCreateUserPost**
```swift
    open class func apiV1AdminsCreateUserPost(registerUserViewModel: RegisterUserViewModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let registerUserViewModel = RegisterUserViewModel(userName: "userName_example", email: "email_example", role: "role_example") // RegisterUserViewModel |  (optional)

AdminsAPI.apiV1AdminsCreateUserPost(registerUserViewModel: registerUserViewModel) { (response, error) in
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
 **registerUserViewModel** | [**RegisterUserViewModel**](RegisterUserViewModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AdminsDeleteUserForceIdDelete**
```swift
    open class func apiV1AdminsDeleteUserForceIdDelete(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = "id_example" // String | 

AdminsAPI.apiV1AdminsDeleteUserForceIdDelete(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AdminsDeleteUserIdDelete**
```swift
    open class func apiV1AdminsDeleteUserIdDelete(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = "id_example" // String | 

AdminsAPI.apiV1AdminsDeleteUserIdDelete(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AdminsReactivateUserIdPost**
```swift
    open class func apiV1AdminsReactivateUserIdPost(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = "id_example" // String | 

AdminsAPI.apiV1AdminsReactivateUserIdPost(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

