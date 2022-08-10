# ServiceReviewsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ServicereviewsGet**](ServiceReviewsAPI.md#apiv2servicereviewsget) | **GET** /api/v2/servicereviews | Get all ServiceReviews.
[**apiV2ServicereviewsPost**](ServiceReviewsAPI.md#apiv2servicereviewspost) | **POST** /api/v2/servicereviews | Create a ServiceReview.
[**apiV2ServicereviewsServiceReviewIdDelete**](ServiceReviewsAPI.md#apiv2servicereviewsservicereviewiddelete) | **DELETE** /api/v2/servicereviews/{serviceReviewId} | Delete ServiceReview.
[**apiV2ServicereviewsServiceReviewIdGet**](ServiceReviewsAPI.md#apiv2servicereviewsservicereviewidget) | **GET** /api/v2/servicereviews/{serviceReviewId} | 
[**apiV2ServicereviewsServiceReviewIdMediasGet**](ServiceReviewsAPI.md#apiv2servicereviewsservicereviewidmediasget) | **GET** /api/v2/servicereviews/{serviceReviewId}/medias | Get all ServiceReviewMedias.
[**apiV2ServicereviewsServiceReviewIdMediasMediaIdDelete**](ServiceReviewsAPI.md#apiv2servicereviewsservicereviewidmediasmediaiddelete) | **DELETE** /api/v2/servicereviews/{serviceReviewId}/medias/{mediaId} | Delete ServiceReviewMedia
[**apiV2ServicereviewsServiceReviewIdMediasMediaIdGet**](ServiceReviewsAPI.md#apiv2servicereviewsservicereviewidmediasmediaidget) | **GET** /api/v2/servicereviews/{serviceReviewId}/medias/{mediaId} | Get ServiceReviewMedia.
[**apiV2ServicereviewsServiceReviewIdMediasMediaIdPut**](ServiceReviewsAPI.md#apiv2servicereviewsservicereviewidmediasmediaidput) | **PUT** /api/v2/servicereviews/{serviceReviewId}/medias/{mediaId} | Update ServiceReviewMedia.
[**apiV2ServicereviewsServiceReviewIdMediasPost**](ServiceReviewsAPI.md#apiv2servicereviewsservicereviewidmediaspost) | **POST** /api/v2/servicereviews/{serviceReviewId}/medias | Create ServiceReviewMedia.
[**apiV2ServicereviewsServiceReviewIdPut**](ServiceReviewsAPI.md#apiv2servicereviewsservicereviewidput) | **PUT** /api/v2/servicereviews/{serviceReviewId} | Update ServiceReview.


# **apiV2ServicereviewsGet**
```swift
    open class func apiV2ServicereviewsGet(id: UUID? = nil, hospitalId: UUID? = nil, serviceId: UUID? = nil, serviceName: String? = nil, patientId: UUID? = nil, patientName: String? = nil, gender: Gender? = nil, recommended: Bool? = nil, rate: Int? = nil, reviewType: ReviewType? = nil, languageCode: String? = nil, showHidden: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: ServiceReviewsModel?, _ error: Error?) -> Void)
```

Get all ServiceReviews.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let hospitalId = 987 // UUID |  (optional)
let serviceId = 987 // UUID |  (optional)
let serviceName = "serviceName_example" // String |  (optional)
let patientId = 987 // UUID |  (optional)
let patientName = "patientName_example" // String |  (optional)
let gender = Gender() // Gender |  (optional)
let recommended = true // Bool |  (optional)
let rate = 987 // Int |  (optional)
let reviewType = ReviewType() // ReviewType |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let showHidden = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all ServiceReviews.
ServiceReviewsAPI.apiV2ServicereviewsGet(id: id, hospitalId: hospitalId, serviceId: serviceId, serviceName: serviceName, patientId: patientId, patientName: patientName, gender: gender, recommended: recommended, rate: rate, reviewType: reviewType, languageCode: languageCode, showHidden: showHidden, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **id** | **UUID** |  | [optional] 
 **hospitalId** | **UUID** |  | [optional] 
 **serviceId** | **UUID** |  | [optional] 
 **serviceName** | **String** |  | [optional] 
 **patientId** | **UUID** |  | [optional] 
 **patientName** | **String** |  | [optional] 
 **gender** | [**Gender**](.md) |  | [optional] 
 **recommended** | **Bool** |  | [optional] 
 **rate** | **Int** |  | [optional] 
 **reviewType** | [**ReviewType**](.md) |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **showHidden** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**ServiceReviewsModel**](ServiceReviewsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ServicereviewsPost**
```swift
    open class func apiV2ServicereviewsPost(createServiceReviewCommand: CreateServiceReviewCommand? = nil, completion: @escaping (_ data: ServiceReviewModel?, _ error: Error?) -> Void)
```

Create a ServiceReview.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createServiceReviewCommand = CreateServiceReviewCommand(serviceId: 123, patientId: 123, name: "name_example", description: "description_example", content: "content_example", recommended: false, rate: 123, reviewType: ReviewType()) // CreateServiceReviewCommand |  (optional)

// Create a ServiceReview.
ServiceReviewsAPI.apiV2ServicereviewsPost(createServiceReviewCommand: createServiceReviewCommand) { (response, error) in
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
 **createServiceReviewCommand** | [**CreateServiceReviewCommand**](CreateServiceReviewCommand.md) |  | [optional] 

### Return type

[**ServiceReviewModel**](ServiceReviewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ServicereviewsServiceReviewIdDelete**
```swift
    open class func apiV2ServicereviewsServiceReviewIdDelete(serviceReviewId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete ServiceReview.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let serviceReviewId = 987 // UUID | 

// Delete ServiceReview.
ServiceReviewsAPI.apiV2ServicereviewsServiceReviewIdDelete(serviceReviewId: serviceReviewId) { (response, error) in
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
 **serviceReviewId** | **UUID** |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ServicereviewsServiceReviewIdGet**
```swift
    open class func apiV2ServicereviewsServiceReviewIdGet(serviceReviewId: UUID, languageCode: String? = nil, completion: @escaping (_ data: ServiceReviewModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let serviceReviewId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)

// 
ServiceReviewsAPI.apiV2ServicereviewsServiceReviewIdGet(serviceReviewId: serviceReviewId, languageCode: languageCode) { (response, error) in
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
 **serviceReviewId** | **UUID** |  | 
 **languageCode** | **String** |  | [optional] 

### Return type

[**ServiceReviewModel**](ServiceReviewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ServicereviewsServiceReviewIdMediasGet**
```swift
    open class func apiV2ServicereviewsServiceReviewIdMediasGet(serviceReviewId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: MediasModel?, _ error: Error?) -> Void)
```

Get all ServiceReviewMedias.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let serviceReviewId = 987 // UUID | 
let id = 987 // UUID |  (optional)
let mediaType = MediaType() // MediaType |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all ServiceReviewMedias.
ServiceReviewsAPI.apiV2ServicereviewsServiceReviewIdMediasGet(serviceReviewId: serviceReviewId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **serviceReviewId** | **UUID** |  | 
 **id** | **UUID** |  | [optional] 
 **mediaType** | [**MediaType**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**MediasModel**](MediasModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ServicereviewsServiceReviewIdMediasMediaIdDelete**
```swift
    open class func apiV2ServicereviewsServiceReviewIdMediasMediaIdDelete(serviceReviewId: UUID, mediaId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete ServiceReviewMedia

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let serviceReviewId = 987 // UUID | 
let mediaId = 987 // UUID | 

// Delete ServiceReviewMedia
ServiceReviewsAPI.apiV2ServicereviewsServiceReviewIdMediasMediaIdDelete(serviceReviewId: serviceReviewId, mediaId: mediaId) { (response, error) in
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
 **serviceReviewId** | **UUID** |  | 
 **mediaId** | **UUID** |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ServicereviewsServiceReviewIdMediasMediaIdGet**
```swift
    open class func apiV2ServicereviewsServiceReviewIdMediasMediaIdGet(serviceReviewId: UUID, mediaId: UUID, completion: @escaping (_ data: MediaModel?, _ error: Error?) -> Void)
```

Get ServiceReviewMedia.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let serviceReviewId = 987 // UUID | 
let mediaId = 987 // UUID | 

// Get ServiceReviewMedia.
ServiceReviewsAPI.apiV2ServicereviewsServiceReviewIdMediasMediaIdGet(serviceReviewId: serviceReviewId, mediaId: mediaId) { (response, error) in
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
 **serviceReviewId** | **UUID** |  | 
 **mediaId** | **UUID** |  | 

### Return type

[**MediaModel**](MediaModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ServicereviewsServiceReviewIdMediasMediaIdPut**
```swift
    open class func apiV2ServicereviewsServiceReviewIdMediasMediaIdPut(serviceReviewId: UUID, mediaId: UUID, updateMediaCommand: UpdateMediaCommand? = nil, completion: @escaping (_ data: MediaModel?, _ error: Error?) -> Void)
```

Update ServiceReviewMedia.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let serviceReviewId = 987 // UUID | 
let mediaId = 987 // UUID | 
let updateMediaCommand = UpdateMediaCommand(mediaType: MediaType(), url: "url_example", thumbnailUrl: "thumbnailUrl_example", description: "description_example", order: 123) // UpdateMediaCommand |  (optional)

// Update ServiceReviewMedia.
ServiceReviewsAPI.apiV2ServicereviewsServiceReviewIdMediasMediaIdPut(serviceReviewId: serviceReviewId, mediaId: mediaId, updateMediaCommand: updateMediaCommand) { (response, error) in
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
 **serviceReviewId** | **UUID** |  | 
 **mediaId** | **UUID** |  | 
 **updateMediaCommand** | [**UpdateMediaCommand**](UpdateMediaCommand.md) |  | [optional] 

### Return type

[**MediaModel**](MediaModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ServicereviewsServiceReviewIdMediasPost**
```swift
    open class func apiV2ServicereviewsServiceReviewIdMediasPost(serviceReviewId: UUID, createMediaCommand: CreateMediaCommand? = nil, completion: @escaping (_ data: MediaModel?, _ error: Error?) -> Void)
```

Create ServiceReviewMedia.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let serviceReviewId = 987 // UUID | 
let createMediaCommand = CreateMediaCommand(mediaType: MediaType(), url: "url_example", thumbnailUrl: "thumbnailUrl_example", description: "description_example", order: 123) // CreateMediaCommand |  (optional)

// Create ServiceReviewMedia.
ServiceReviewsAPI.apiV2ServicereviewsServiceReviewIdMediasPost(serviceReviewId: serviceReviewId, createMediaCommand: createMediaCommand) { (response, error) in
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
 **serviceReviewId** | **UUID** |  | 
 **createMediaCommand** | [**CreateMediaCommand**](CreateMediaCommand.md) |  | [optional] 

### Return type

[**MediaModel**](MediaModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ServicereviewsServiceReviewIdPut**
```swift
    open class func apiV2ServicereviewsServiceReviewIdPut(serviceReviewId: UUID, updateServiceReviewCommand: UpdateServiceReviewCommand? = nil, completion: @escaping (_ data: ServiceReviewModel?, _ error: Error?) -> Void)
```

Update ServiceReview.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let serviceReviewId = 987 // UUID | 
let updateServiceReviewCommand = UpdateServiceReviewCommand(name: "name_example", slug: "slug_example", description: "description_example", content: "content_example", languageCode: "languageCode_example", recommended: false, rate: 123, confirmed: false) // UpdateServiceReviewCommand |  (optional)

// Update ServiceReview.
ServiceReviewsAPI.apiV2ServicereviewsServiceReviewIdPut(serviceReviewId: serviceReviewId, updateServiceReviewCommand: updateServiceReviewCommand) { (response, error) in
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
 **serviceReviewId** | **UUID** |  | 
 **updateServiceReviewCommand** | [**UpdateServiceReviewCommand**](UpdateServiceReviewCommand.md) |  | [optional] 

### Return type

[**ServiceReviewModel**](ServiceReviewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

