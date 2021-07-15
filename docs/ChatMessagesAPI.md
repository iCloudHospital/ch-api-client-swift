# ChatMessagesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ChatmessagesFilesPost**](ChatMessagesAPI.md#apiv1chatmessagesfilespost) | **POST** /api/v1/chatmessages/files | 


# **apiV1ChatmessagesFilesPost**
```swift
    open class func apiV1ChatmessagesFilesPost(sendFileRequestModel: SendFileRequestModel? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let sendFileRequestModel = SendFileRequestModel(threadId: "threadId_example", senderId: "senderId_example", files: [URL(string: "https://example.com")!]) // SendFileRequestModel |  (optional)

ChatMessagesAPI.apiV1ChatmessagesFilesPost(sendFileRequestModel: sendFileRequestModel) { (response, error) in
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
 **sendFileRequestModel** | [**SendFileRequestModel**](SendFileRequestModel.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

