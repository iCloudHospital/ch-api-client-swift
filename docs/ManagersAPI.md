# ManagersAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ManagersGet**](ManagersAPI.md#apiv1managersget) | **GET** /api/v1/managers | Get all hospital managers.
[**apiV1ManagersManagerIdDelete**](ManagersAPI.md#apiv1managersmanageriddelete) | **DELETE** /api/v1/managers/{managerId} | Delete hospital manager.
[**apiV1ManagersManagerIdGet**](ManagersAPI.md#apiv1managersmanageridget) | **GET** /api/v1/managers/{managerId} | Get hospital manager.
[**apiV1ManagersManagerIdPut**](ManagersAPI.md#apiv1managersmanageridput) | **PUT** /api/v1/managers/{managerId} | Update hospital manager.
[**apiV1ManagersPost**](ManagersAPI.md#apiv1managerspost) | **POST** /api/v1/managers | Create hospital manager.


# **apiV1ManagersGet**
```swift
    open class func apiV1ManagersGet(id: UUID? = nil, fullname: String? = nil, email: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, hospitalId: UUID? = nil, completion: @escaping (_ data: ManagersViewModel?, _ error: Error?) -> Void)
```

Get all hospital managers.

Sample request:        GET /api/v1/managers      {          \"pageQueryFilter\": {              \"page\": 1,              \"limit\": 20,              \"lastRetrived\": \"2020-02-05T08:40\"          },          \"searchString\": \"manager\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let fullname = "fullname_example" // String |  (optional)
let email = "email_example" // String |  (optional)
let gender = Gender() // Gender |  (optional)
let dateOfBirth = Date() // Date |  (optional)
let created = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)
let hospitalId = 987 // UUID |  (optional)

// Get all hospital managers.
ManagersAPI.apiV1ManagersGet(id: id, fullname: fullname, email: email, gender: gender, dateOfBirth: dateOfBirth, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current, hospitalId: hospitalId) { (response, error) in
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
 **id** | [**UUID**](.md) |  | [optional] 
 **fullname** | **String** |  | [optional] 
 **email** | **String** |  | [optional] 
 **gender** | [**Gender**](.md) |  | [optional] 
 **dateOfBirth** | **Date** |  | [optional] 
 **created** | **Date** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 
 **hospitalId** | [**UUID**](.md) |  | [optional] 

### Return type

[**ManagersViewModel**](ManagersViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ManagersManagerIdDelete**
```swift
    open class func apiV1ManagersManagerIdDelete(managerId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete hospital manager.

Sample request:        DELETE /api/v1/managers/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let managerId = 987 // UUID | 

// Delete hospital manager.
ManagersAPI.apiV1ManagersManagerIdDelete(managerId: managerId) { (response, error) in
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
 **managerId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ManagersManagerIdGet**
```swift
    open class func apiV1ManagersManagerIdGet(managerId: UUID, completion: @escaping (_ data: ManagerViewModel?, _ error: Error?) -> Void)
```

Get hospital manager.

Sample request:        GET /api/v1/managers/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let managerId = 987 // UUID | 

// Get hospital manager.
ManagersAPI.apiV1ManagersManagerIdGet(managerId: managerId) { (response, error) in
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
 **managerId** | [**UUID**](.md) |  | 

### Return type

[**ManagerViewModel**](ManagerViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ManagersManagerIdPut**
```swift
    open class func apiV1ManagersManagerIdPut(managerId: UUID, updateManagerCommand: UpdateManagerCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update hospital manager.

Sample request:        PUT /api/v1/managers/1      {          \"firstName\": \"string\",          \"lastName\": \"string\",          \"photo\": \"string\",          \"locations\": [            {              \"locationType\": \"LivesIn\",              \"latitude\": 0,              \"longitude\": 0,              \"country\": \"string\",              \"state\": \"string\",              \"county\": \"string\",              \"city\": \"string\",              \"zipCode\": \"string\",              \"address\": \"string\"            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let managerId = 987 // UUID | 
let updateManagerCommand = UpdateManagerCommand(firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), languages: [{...}], locations: [{...}], hospitalId: 123) // UpdateManagerCommand |  (optional)

// Update hospital manager.
ManagersAPI.apiV1ManagersManagerIdPut(managerId: managerId, updateManagerCommand: updateManagerCommand) { (response, error) in
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
 **managerId** | [**UUID**](.md) |  | 
 **updateManagerCommand** | [**UpdateManagerCommand**](UpdateManagerCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ManagersPost**
```swift
    open class func apiV1ManagersPost(createManagerCommand: CreateManagerCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create hospital manager.

Sample request:        POST /api/v1/managers      {          \"userName\": \"manager\",          \"email\": \"manger@icloudhospital.com\",          \"hospitalId\": 1,          \"firstName\": \"cloud\",          \"lastName\": \"manager\",          \"photo\": \"string\",          \"photoThumbnail\": \"string\",          \"gender\": \"NotSpecified\",          \"dateOfBirth\": \"2020-02-22T15:28:09.897Z\",          \"locations\": [            {              \"locationType\": \"LivesIn\",              \"latitude\": 0,              \"longitude\": 0,              \"country\": \"string\",              \"state\": \"string\",              \"county\": \"string\",              \"city\": \"string\",              \"zipCode\": \"string\",              \"address\": \"string\"            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createManagerCommand = CreateManagerCommand(firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), medias: [{...}], languages: [{...}], locations: [{...}], userName: "userName_example", email: "email_example", hospitalId: 123) // CreateManagerCommand |  (optional)

// Create hospital manager.
ManagersAPI.apiV1ManagersPost(createManagerCommand: createManagerCommand) { (response, error) in
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
 **createManagerCommand** | [**CreateManagerCommand**](CreateManagerCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

