# FaqsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2FaqsFaqIdGet**](FaqsAPI.md#apiv2faqsfaqidget) | **GET** /api/v2/faqs/{faqId} | Get faq.
[**apiV2FaqsFaqIdMediasGet**](FaqsAPI.md#apiv2faqsfaqidmediasget) | **GET** /api/v2/faqs/{faqId}/medias | Get all FaqMedias.
[**apiV2FaqsFaqIdMediasMediaIdGet**](FaqsAPI.md#apiv2faqsfaqidmediasmediaidget) | **GET** /api/v2/faqs/{faqId}/medias/{mediaId} | Get FaqMedia.
[**apiV2FaqsFaqIdTagsGet**](FaqsAPI.md#apiv2faqsfaqidtagsget) | **GET** /api/v2/faqs/{faqId}/tags | GetAll FaqTags.
[**apiV2FaqsFaqIdTagsTagIdGet**](FaqsAPI.md#apiv2faqsfaqidtagstagidget) | **GET** /api/v2/faqs/{faqId}/tags/{tagId} | Get FaqTag.
[**apiV2FaqsGet**](FaqsAPI.md#apiv2faqsget) | **GET** /api/v2/faqs | Get all Faqs.
[**apiV2FaqsSlugGet**](FaqsAPI.md#apiv2faqsslugget) | **GET** /api/v2/faqs/{slug} | Get faq by slug.


# **apiV2FaqsFaqIdGet**
```swift
    open class func apiV2FaqsFaqIdGet(faqId: UUID, languageCode: String? = nil, completion: @escaping (_ data: FaqModel?, _ error: Error?) -> Void)
```

Get faq.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let faqId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)

// Get faq.
FaqsAPI.apiV2FaqsFaqIdGet(faqId: faqId, languageCode: languageCode) { (response, error) in
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
 **faqId** | [**UUID**](.md) |  | 
 **languageCode** | **String** |  | [optional] 

### Return type

[**FaqModel**](FaqModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2FaqsFaqIdMediasGet**
```swift
    open class func apiV2FaqsFaqIdMediasGet(faqId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: MediasModel?, _ error: Error?) -> Void)
```

Get all FaqMedias.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let faqId = 987 // UUID | 
let id = 987 // UUID |  (optional)
let mediaType = MediaType() // MediaType |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all FaqMedias.
FaqsAPI.apiV2FaqsFaqIdMediasGet(faqId: faqId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **faqId** | [**UUID**](.md) |  | 
 **id** | [**UUID**](.md) |  | [optional] 
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

# **apiV2FaqsFaqIdMediasMediaIdGet**
```swift
    open class func apiV2FaqsFaqIdMediasMediaIdGet(faqId: UUID, mediaId: UUID, completion: @escaping (_ data: MediaModel?, _ error: Error?) -> Void)
```

Get FaqMedia.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let faqId = 987 // UUID | 
let mediaId = 987 // UUID | 

// Get FaqMedia.
FaqsAPI.apiV2FaqsFaqIdMediasMediaIdGet(faqId: faqId, mediaId: mediaId) { (response, error) in
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
 **faqId** | [**UUID**](.md) |  | 
 **mediaId** | [**UUID**](.md) |  | 

### Return type

[**MediaModel**](MediaModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2FaqsFaqIdTagsGet**
```swift
    open class func apiV2FaqsFaqIdTagsGet(faqId: UUID, tagId: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: FaqTagsModel?, _ error: Error?) -> Void)
```

GetAll FaqTags.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let faqId = 987 // UUID | 
let tagId = "tagId_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// GetAll FaqTags.
FaqsAPI.apiV2FaqsFaqIdTagsGet(faqId: faqId, tagId: tagId, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **faqId** | [**UUID**](.md) |  | 
 **tagId** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**FaqTagsModel**](FaqTagsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2FaqsFaqIdTagsTagIdGet**
```swift
    open class func apiV2FaqsFaqIdTagsTagIdGet(faqId: UUID, tagId: String, completion: @escaping (_ data: FaqTagModel?, _ error: Error?) -> Void)
```

Get FaqTag.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let faqId = 987 // UUID | 
let tagId = "tagId_example" // String | 

// Get FaqTag.
FaqsAPI.apiV2FaqsFaqIdTagsTagIdGet(faqId: faqId, tagId: tagId) { (response, error) in
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
 **faqId** | [**UUID**](.md) |  | 
 **tagId** | **String** |  | 

### Return type

[**FaqTagModel**](FaqTagModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2FaqsGet**
```swift
    open class func apiV2FaqsGet(id: UUID? = nil, name: String? = nil, slug: String? = nil, categoryId: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: FaqsModel?, _ error: Error?) -> Void)
```

Get all Faqs.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let slug = "slug_example" // String |  (optional)
let categoryId = 987 // UUID |  (optional)
let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let showHidden = true // Bool |  (optional)
let returnDefaultValue = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all Faqs.
FaqsAPI.apiV2FaqsGet(id: id, name: name, slug: slug, categoryId: categoryId, hospitalId: hospitalId, hospitalName: hospitalName, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **name** | **String** |  | [optional] 
 **slug** | **String** |  | [optional] 
 **categoryId** | [**UUID**](.md) |  | [optional] 
 **hospitalId** | [**UUID**](.md) |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **showHidden** | **Bool** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**FaqsModel**](FaqsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2FaqsSlugGet**
```swift
    open class func apiV2FaqsSlugGet(slug: String, languageCode: String? = nil, completion: @escaping (_ data: FaqModel?, _ error: Error?) -> Void)
```

Get faq by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional)

// Get faq by slug.
FaqsAPI.apiV2FaqsSlugGet(slug: slug, languageCode: languageCode) { (response, error) in
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
 **slug** | **String** |  | 
 **languageCode** | **String** |  | [optional] 

### Return type

[**FaqModel**](FaqModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

