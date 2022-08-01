# NotificationsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2NotificationsCheckPost**](NotificationsAPI.md#apiv2notificationscheckpost) | **POST** /api/v2/notifications/check | Check notification.
[**apiV2NotificationsGet**](NotificationsAPI.md#apiv2notificationsget) | **GET** /api/v2/notifications | Get all notifications.


# **apiV2NotificationsCheckPost**
```swift
    open class func apiV2NotificationsCheckPost(checkNotificationsCommand: CheckNotificationsCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Check notification.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let checkNotificationsCommand = CheckNotificationsCommand(notificationId: 123, isDelete: false) // CheckNotificationsCommand |  (optional)

// Check notification.
NotificationsAPI.apiV2NotificationsCheckPost(checkNotificationsCommand: checkNotificationsCommand) { (response, error) in
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
 **checkNotificationsCommand** | [**CheckNotificationsCommand**](CheckNotificationsCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2NotificationsGet**
```swift
    open class func apiV2NotificationsGet(notificationCode: NotificationCode? = nil, unreadCountOnly: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: NotificationsModel?, _ error: Error?) -> Void)
```

Get all notifications.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let notificationCode = NotificationCode() // NotificationCode |  (optional)
let unreadCountOnly = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all notifications.
NotificationsAPI.apiV2NotificationsGet(notificationCode: notificationCode, unreadCountOnly: unreadCountOnly, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **notificationCode** | [**NotificationCode**](.md) |  | [optional] 
 **unreadCountOnly** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**NotificationsModel**](NotificationsModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

