# CHAdminsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ChadminsChAdminIdDelete**](CHAdminsAPI.md#apiv1chadminschadminiddelete) | **DELETE** /api/v1/chadmins/{chAdminId} | Delete cloud hospital admin user.
[**apiV1ChadminsChAdminIdGet**](CHAdminsAPI.md#apiv1chadminschadminidget) | **GET** /api/v1/chadmins/{chAdminId} | Get cloud hospital admin user by id.
[**apiV1ChadminsChAdminIdPut**](CHAdminsAPI.md#apiv1chadminschadminidput) | **PUT** /api/v1/chadmins/{chAdminId} | Update cloud hospital admin user.
[**apiV1ChadminsGet**](CHAdminsAPI.md#apiv1chadminsget) | **GET** /api/v1/chadmins | Get cloud hospital admin users.
[**apiV1ChadminsPost**](CHAdminsAPI.md#apiv1chadminspost) | **POST** /api/v1/chadmins | Create cloud hospital admin user.


# **apiV1ChadminsChAdminIdDelete**
```swift
    open class func apiV1ChadminsChAdminIdDelete(chAdminId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete cloud hospital admin user.

Sample request:        DELETE /api/v1/chadmins/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let chAdminId = 987 // UUID | 

// Delete cloud hospital admin user.
CHAdminsAPI.apiV1ChadminsChAdminIdDelete(chAdminId: chAdminId) { (response, error) in
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
 **chAdminId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ChadminsChAdminIdGet**
```swift
    open class func apiV1ChadminsChAdminIdGet(chAdminId: UUID, completion: @escaping (_ data: CHAdminViewModel?, _ error: Error?) -> Void)
```

Get cloud hospital admin user by id.

Sample request:        GET /api/v1/chadmins/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let chAdminId = 987 // UUID | 

// Get cloud hospital admin user by id.
CHAdminsAPI.apiV1ChadminsChAdminIdGet(chAdminId: chAdminId) { (response, error) in
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
 **chAdminId** | [**UUID**](.md) |  | 

### Return type

[**CHAdminViewModel**](CHAdminViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ChadminsChAdminIdPut**
```swift
    open class func apiV1ChadminsChAdminIdPut(chAdminId: UUID, updateCHAdminCommand: UpdateCHAdminCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update cloud hospital admin user.

Sample request:        PUT /api/v1/chadmins/1      {          \"email\": \"adminupdate@icloudhospital.com\",          \"firstName\": \"Cloud\",          \"lastName\": \"Hospital\",          \"photo\": \"https://cloudhospitalblob.blob.core.windows.net/assets/Cloud_Hospital_Logo_blue.png\",          \"photoThumbnail\": \"https://cloudhospitalblob.blob.core.windows.net/assets/Cloud_Hospital_Logo_blue.png\",          \"gender\": \"NotSpecified\",          \"dateOfBirth\": \"2020-02-22T09:09:19.082Z\",          \"locations\": [              {                  \"locationType\": \"LivesIn\",                  \"latitude\": 0,                  \"longitude\": 0,                  \"country\": \"string\",                  \"state\": \"string\",                  \"county\": \"string\",                  \"city\": \"string\",                  \"zipCode\": \"string\",                  \"address\": \"string\"              }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let chAdminId = 987 // UUID | 
let updateCHAdminCommand = UpdateCHAdminCommand(firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), languages: [UserLanguageViewModel(id: 123, language: "language_example")], locations: [UserLocationViewModel(latitude: 123, longitude: 123, country: "country_example", state: "state_example", county: "county_example", city: "city_example", zipCode: "zipCode_example", address: "address_example", locationType: UserLocationType())]) // UpdateCHAdminCommand |  (optional)

// Update cloud hospital admin user.
CHAdminsAPI.apiV1ChadminsChAdminIdPut(chAdminId: chAdminId, updateCHAdminCommand: updateCHAdminCommand) { (response, error) in
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
 **chAdminId** | [**UUID**](.md) |  | 
 **updateCHAdminCommand** | [**UpdateCHAdminCommand**](UpdateCHAdminCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ChadminsGet**
```swift
    open class func apiV1ChadminsGet(id: UUID? = nil, fullname: String? = nil, email: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: CHAdminsViewModel?, _ error: Error?) -> Void)
```

Get cloud hospital admin users.

Sample request:        GET /api/v1/chadmin      {          \"pageQueryFilter\": {              \"page\": 1,              \"limit\": 20,              \"lastRetrived\": \"2020-02-05T08:40\"          },          \"searchString\": \"admin\"      }

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

// Get cloud hospital admin users.
CHAdminsAPI.apiV1ChadminsGet(id: id, fullname: fullname, email: email, gender: gender, dateOfBirth: dateOfBirth, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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

[**CHAdminsViewModel**](CHAdminsViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1ChadminsPost**
```swift
    open class func apiV1ChadminsPost(createCHAdminCommand: CreateCHAdminCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create cloud hospital admin user.

Sample request:        POST /api/v1/chadmins      {          \"firstName\": \"Cloud\",          \"lastName\": \"Hospital\",          \"photo\": \"https://cloudhospitalblob.blob.core.windows.net/assets/Cloud_Hospital_Logo_blue.png\",          \"photoThumbnail\": \"https://cloudhospitalblob.blob.core.windows.net/assets/Cloud_Hospital_Logo_blue.png\",          \"gender\": \"NotSpecified\",          \"dateOfBirth\": \"2020-02-22T09:09:19.082Z\",          \"locations\": [              {                  \"locationType\": \"LivesIn\",                  \"latitude\": 0,                  \"longitude\": 0,                  \"country\": \"string\",                  \"state\": \"string\",                  \"county\": \"string\",                  \"city\": \"string\",                  \"zipCode\": \"string\",                  \"address\": \"string\"              }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createCHAdminCommand = CreateCHAdminCommand(firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), medias: [MediaViewModel(id: 123, mediaType: MediaType(), url: "url_example", thumbnailUrl: "thumbnailUrl_example", description: "description_example", order: 123)], languages: [UserLanguageViewModel(id: 123, language: "language_example")], locations: [UserLocationViewModel(latitude: 123, longitude: 123, country: "country_example", state: "state_example", county: "county_example", city: "city_example", zipCode: "zipCode_example", address: "address_example", locationType: UserLocationType())]) // CreateCHAdminCommand |  (optional)

// Create cloud hospital admin user.
CHAdminsAPI.apiV1ChadminsPost(createCHAdminCommand: createCHAdminCommand) { (response, error) in
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
 **createCHAdminCommand** | [**CreateCHAdminCommand**](CreateCHAdminCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

