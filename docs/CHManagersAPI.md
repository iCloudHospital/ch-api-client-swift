# CHManagersAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ChmanagersChManagerIdDelete**](CHManagersAPI.md#apiv1chmanagerschmanageriddelete) | **DELETE** /api/v1/chmanagers/{chManagerId} | Delete cloud hospital manager.
[**apiV1ChmanagersChManagerIdGet**](CHManagersAPI.md#apiv1chmanagerschmanageridget) | **GET** /api/v1/chmanagers/{chManagerId} | Get cloud hospital manager.
[**apiV1ChmanagersChManagerIdPut**](CHManagersAPI.md#apiv1chmanagerschmanageridput) | **PUT** /api/v1/chmanagers/{chManagerId} | Update cloud hospital manager.
[**apiV1ChmanagersGet**](CHManagersAPI.md#apiv1chmanagersget) | **GET** /api/v1/chmanagers | Get cloud hospital managers.
[**apiV1ChmanagersPost**](CHManagersAPI.md#apiv1chmanagerspost) | **POST** /api/v1/chmanagers | Create cloud hospital manager.


# **apiV1ChmanagersChManagerIdDelete**
```swift
    open class func apiV1ChmanagersChManagerIdDelete(chManagerId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete cloud hospital manager.

Smaple request:        DELETE /api/v1/chmanagers/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let chManagerId = 987 // UUID | 

// Delete cloud hospital manager.
CHManagersAPI.apiV1ChmanagersChManagerIdDelete(chManagerId: chManagerId) { (response, error) in
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
 **chManagerId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ChmanagersChManagerIdGet**
```swift
    open class func apiV1ChmanagersChManagerIdGet(managerId: UUID, chManagerId: String, completion: @escaping (_ data: CHManagerViewModel?, _ error: Error?) -> Void)
```

Get cloud hospital manager.

Sample request:        GET /api/v1/chmanagers/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let managerId = 987 // UUID | 
let chManagerId = "chManagerId_example" // String | 

// Get cloud hospital manager.
CHManagersAPI.apiV1ChmanagersChManagerIdGet(managerId: managerId, chManagerId: chManagerId) { (response, error) in
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
 **chManagerId** | **String** |  | 

### Return type

[**CHManagerViewModel**](CHManagerViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ChmanagersChManagerIdPut**
```swift
    open class func apiV1ChmanagersChManagerIdPut(chManagerId: UUID, updateCHManagerCommand: UpdateCHManagerCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update cloud hospital manager.

Sample request:        PUT /api/v1/chmanagers/1      {          \"firstName\": \"cloud\",          \"lastName\": \"manager\",          \"photo\": \"string\",          \"locations\": [          {              \"locationType\": \"LivesIn\",              \"latitude\": 0,              \"longitude\": 0,              \"country\": \"string\",              \"state\": \"string\",              \"county\": \"string\",              \"city\": \"string\",              \"zipCode\": \"string\",              \"address\": \"string\"              }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let chManagerId = 987 // UUID | 
let updateCHManagerCommand = UpdateCHManagerCommand(firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), languages: [{...}], locations: [{...}]) // UpdateCHManagerCommand |  (optional)

// Update cloud hospital manager.
CHManagersAPI.apiV1ChmanagersChManagerIdPut(chManagerId: chManagerId, updateCHManagerCommand: updateCHManagerCommand) { (response, error) in
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
 **chManagerId** | [**UUID**](.md) |  | 
 **updateCHManagerCommand** | [**UpdateCHManagerCommand**](UpdateCHManagerCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ChmanagersGet**
```swift
    open class func apiV1ChmanagersGet(id: UUID? = nil, fullname: String? = nil, email: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: CHManagersViewModel?, _ error: Error?) -> Void)
```

Get cloud hospital managers.

Sample request:        GET /api/v1/chmanagers      {          \"pageQueryFilter\": {              \"page\": 1,              \"limit\": 20,              \"lastRetrived\": \"2020-02-05T08:40\"          },          \"searchString\": \"chmanager\"      }

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

// Get cloud hospital managers.
CHManagersAPI.apiV1ChmanagersGet(id: id, fullname: fullname, email: email, gender: gender, dateOfBirth: dateOfBirth, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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

### Return type

[**CHManagersViewModel**](CHManagersViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ChmanagersPost**
```swift
    open class func apiV1ChmanagersPost(createCHManagerCommand: CreateCHManagerCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create cloud hospital manager.

Sample request:        POST /api/v1/chmanagers      {          \"userName\": \"chmanager\",          \"email\": \"chmanger@icloudhospital.com\",          \"firstName\": \"cloud\",          \"lastName\": \"manager\",          \"photo\": \"string\",          \"photoThumbnail\": \"string\",          \"gender\": \"NotSpecified\",          \"dateOfBirth\": \"2020-02-22T15:28:09.897Z\",          \"locations\": [             {             \"locationType\": \"LivesIn\",             \"latitude\": 0,             \"longitude\": 0,             \"country\": \"string\",             \"state\": \"string\",             \"county\": \"string\",             \"city\": \"string\",             \"zipCode\": \"string\",             \"address\": \"string\"             }          ]       }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createCHManagerCommand = CreateCHManagerCommand(firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), medias: [{...}], languages: [{...}], locations: [{...}], userName: "userName_example", email: "email_example") // CreateCHManagerCommand |  (optional)

// Create cloud hospital manager.
CHManagersAPI.apiV1ChmanagersPost(createCHManagerCommand: createCHManagerCommand) { (response, error) in
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
 **createCHManagerCommand** | [**CreateCHManagerCommand**](CreateCHManagerCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

