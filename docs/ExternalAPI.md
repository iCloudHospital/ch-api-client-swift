# ExternalAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ExternalFacebookDeleteuserdataPost**](ExternalAPI.md#apiv2externalfacebookdeleteuserdatapost) | **POST** /api/v2/external/facebook/deleteuserdata | Callback for Facebook user data deletion


# **apiV2ExternalFacebookDeleteuserdataPost**
```swift
    open class func apiV2ExternalFacebookDeleteuserdataPost(completion: @escaping (_ data: FacebookUserDataDeletionResponseModel?, _ error: Error?) -> Void)
```

Callback for Facebook user data deletion

Sample request:        POST /api/v2/external/facebook/deleteUserData      {          \"signed_request\": \"......\"      }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


// Callback for Facebook user data deletion
ExternalAPI.apiV2ExternalFacebookDeleteuserdataPost() { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

