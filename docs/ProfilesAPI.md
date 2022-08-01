# ProfilesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ProfilesChangeemailPost**](ProfilesAPI.md#apiv2profileschangeemailpost) | **POST** /api/v2/profiles/changeemail | Change user&#39;s email on both Identity and Api.
[**apiV2ProfilesConfirmemailPost**](ProfilesAPI.md#apiv2profilesconfirmemailpost) | **POST** /api/v2/profiles/confirmemail | Configm email.
[**apiV2ProfilesGet**](ProfilesAPI.md#apiv2profilesget) | **GET** /api/v2/profiles | Get Profile.
[**apiV2ProfilesPut**](ProfilesAPI.md#apiv2profilesput) | **PUT** /api/v2/profiles | Update Profile.


# **apiV2ProfilesChangeemailPost**
```swift
    open class func apiV2ProfilesChangeemailPost(changeEmailCommand: ChangeEmailCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Change user's email on both Identity and Api.

Sample request:        POST /api/v1/profiles/changeEmail      {          \"email\": \"user@example.com\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let changeEmailCommand = ChangeEmailCommand(email: "email_example") // ChangeEmailCommand |  (optional)

// Change user's email on both Identity and Api.
ProfilesAPI.apiV2ProfilesChangeemailPost(changeEmailCommand: changeEmailCommand) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProfilesConfirmemailPost**
```swift
    open class func apiV2ProfilesConfirmemailPost(confirmEmailCommand: ConfirmEmailCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Configm email.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let confirmEmailCommand = ConfirmEmailCommand(code: "code_example") // ConfirmEmailCommand |  (optional)

// Configm email.
ProfilesAPI.apiV2ProfilesConfirmemailPost(confirmEmailCommand: confirmEmailCommand) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProfilesGet**
```swift
    open class func apiV2ProfilesGet(completion: @escaping (_ data: UserModel?, _ error: Error?) -> Void)
```

Get Profile.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


// Get Profile.
ProfilesAPI.apiV2ProfilesGet() { (response, error) in
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

[**UserModel**](UserModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProfilesPut**
```swift
    open class func apiV2ProfilesPut(updateProfileCommand: UpdateProfileCommand? = nil, completion: @escaping (_ data: UserModel?, _ error: Error?) -> Void)
```

Update Profile.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let updateProfileCommand = UpdateProfileCommand(firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), languages: [UserLanguageModel(id: 123, language: "language_example")], locations: [UserLocationModel(latitude: 123, longitude: 123, country: "country_example", state: "state_example", county: "county_example", city: "city_example", zipCode: "zipCode_example", address: "address_example", locationType: UserLocationType())]) // UpdateProfileCommand |  (optional)

// Update Profile.
ProfilesAPI.apiV2ProfilesPut(updateProfileCommand: updateProfileCommand) { (response, error) in
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
 **updateProfileCommand** | [**UpdateProfileCommand**](UpdateProfileCommand.md) |  | [optional] 

### Return type

[**UserModel**](UserModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

