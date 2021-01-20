# PartnersAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1PartnersGet**](PartnersAPI.md#apiv1partnersget) | **GET** /api/v1/partners | Get all partners.
[**apiV1PartnersPartnerIdDelete**](PartnersAPI.md#apiv1partnerspartneriddelete) | **DELETE** /api/v1/partners/{partnerId} | Delete patner.
[**apiV1PartnersPartnerIdGet**](PartnersAPI.md#apiv1partnerspartneridget) | **GET** /api/v1/partners/{partnerId} | Get partner.
[**apiV1PartnersPartnerIdPut**](PartnersAPI.md#apiv1partnerspartneridput) | **PUT** /api/v1/partners/{partnerId} | Update partner.
[**apiV1PartnersPost**](PartnersAPI.md#apiv1partnerspost) | **POST** /api/v1/partners | Create partner.


# **apiV1PartnersGet**
```swift
    open class func apiV1PartnersGet(id: UUID? = nil, fullname: String? = nil, email: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: PartnersViewModel?, _ error: Error?) -> Void)
```

Get all partners.

Sample request:        GET /api/v1/partners      {          \"pageQueryFilter\": {              \"page\": 1,              \"limit\": 20,              \"lastRetrived\": \"2020-02-05T08:40\"          },          \"searchString\": \"patner\"      }

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

// Get all partners.
PartnersAPI.apiV1PartnersGet(id: id, fullname: fullname, email: email, gender: gender, dateOfBirth: dateOfBirth, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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

[**PartnersViewModel**](PartnersViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1PartnersPartnerIdDelete**
```swift
    open class func apiV1PartnersPartnerIdDelete(partnerId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete patner.

Sample request:        DELETE /api/v1/partners/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let partnerId = 987 // UUID | 

// Delete patner.
PartnersAPI.apiV1PartnersPartnerIdDelete(partnerId: partnerId) { (response, error) in
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
 **partnerId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1PartnersPartnerIdGet**
```swift
    open class func apiV1PartnersPartnerIdGet(partnerId: UUID, completion: @escaping (_ data: PartnerViewModel?, _ error: Error?) -> Void)
```

Get partner.

Sample request:        GET /api/v1/patners/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let partnerId = 987 // UUID | 

// Get partner.
PartnersAPI.apiV1PartnersPartnerIdGet(partnerId: partnerId) { (response, error) in
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
 **partnerId** | [**UUID**](.md) |  | 

### Return type

[**PartnerViewModel**](PartnerViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1PartnersPartnerIdPut**
```swift
    open class func apiV1PartnersPartnerIdPut(partnerId: UUID, updatePartnerCommand: UpdatePartnerCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update partner.

Sample request:        PUT /api/v1/patners/1      {          firstName\": \"string\",          \"lastName\": \"string\",          \"photo\": \"string\",          \"locations\": [            {              \"locationType\": \"LivesIn\",              \"latitude\": 0,              \"longitude\": 0,              \"country\": \"string\",              \"state\": \"string\",              \"county\": \"string\",              \"city\": \"string\",              \"zipCode\": \"string\",              \"address\": \"string\"            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let partnerId = 987 // UUID | 
let updatePartnerCommand = UpdatePartnerCommand(firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), languages: [{...}], locations: [{...}]) // UpdatePartnerCommand |  (optional)

// Update partner.
PartnersAPI.apiV1PartnersPartnerIdPut(partnerId: partnerId, updatePartnerCommand: updatePartnerCommand) { (response, error) in
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
 **partnerId** | [**UUID**](.md) |  | 
 **updatePartnerCommand** | [**UpdatePartnerCommand**](UpdatePartnerCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1PartnersPost**
```swift
    open class func apiV1PartnersPost(createPartnerCommand: CreatePartnerCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create partner.

Sample request:        POST /api/v1/partners      {          \"userName\": \"string\",          \"email\": \"string\",          \"firstName\": \"string\",          \"lastName\": \"string\",          \"photo\": \"string\",          \"photoThumbnail\": \"string\",          \"gender\": \"NotSpecified\",          \"dateOfBirth\": \"2020-02-22T18:04:18.025Z\",          \"locations\": [            {              \"locationType\": \"LivesIn\",              \"latitude\": 0,              \"longitude\": 0,              \"country\": \"string\",              \"state\": \"string\",              \"county\": \"string\",              \"city\": \"string\",              \"zipCode\": \"string\",              \"address\": \"string\"            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createPartnerCommand = CreatePartnerCommand(firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), medias: [{...}], languages: [{...}], locations: [{...}], userName: "userName_example", email: "email_example") // CreatePartnerCommand |  (optional)

// Create partner.
PartnersAPI.apiV1PartnersPost(createPartnerCommand: createPartnerCommand) { (response, error) in
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
 **createPartnerCommand** | [**CreatePartnerCommand**](CreatePartnerCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

