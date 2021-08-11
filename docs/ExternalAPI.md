# ExternalAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ExternalFacebookDeleteuserdataPost**](ExternalAPI.md#apiv1externalfacebookdeleteuserdatapost) | **POST** /api/v1/external/facebook/deleteuserdata | Callback for Facebook user data deletion


# **apiV1ExternalFacebookDeleteuserdataPost**
```swift
    open class func apiV1ExternalFacebookDeleteuserdataPost(completion: @escaping (_ data: FacebookUserDataDeletionResponseModel?, _ error: Error?) -> Void)
```

Callback for Facebook user data deletion

Sample request:        PUT /api/v1/external/facebook/deleteUserData      {          \"signed_request\": \"......\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


// Callback for Facebook user data deletion
ExternalAPI.apiV1ExternalFacebookDeleteuserdataPost() { (response, error) in
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

[**FacebookUserDataDeletionResponseModel**](FacebookUserDataDeletionResponseModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

