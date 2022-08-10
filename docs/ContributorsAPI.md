# ContributorsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ContributorsContributorIdGet**](ContributorsAPI.md#apiv2contributorscontributoridget) | **GET** /api/v2/contributors/{contributorId} | Get Contributor.
[**apiV2ContributorsContributorIdHandlesGet**](ContributorsAPI.md#apiv2contributorscontributoridhandlesget) | **GET** /api/v2/contributors/{contributorId}/handles | Get all ContributorHandles.
[**apiV2ContributorsContributorIdHandlesHandleIdGet**](ContributorsAPI.md#apiv2contributorscontributoridhandleshandleidget) | **GET** /api/v2/contributors/{contributorId}/handles/{handleId} | Get ContributorHandle.
[**apiV2ContributorsGet**](ContributorsAPI.md#apiv2contributorsget) | **GET** /api/v2/contributors | Get all Contributors.
[**apiV2ContributorsSlugGet**](ContributorsAPI.md#apiv2contributorsslugget) | **GET** /api/v2/contributors/{slug} | Get Contributor by slug.


# **apiV2ContributorsContributorIdGet**
```swift
    open class func apiV2ContributorsContributorIdGet(contributorId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: ContributorModel?, _ error: Error?) -> Void)
```

Get Contributor.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let contributorId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

// Get Contributor.
ContributorsAPI.apiV2ContributorsContributorIdGet(contributorId: contributorId, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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
 **contributorId** | [**UUID**](.md) |  | 
 **languageCode** | **String** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 

### Return type

[**ContributorModel**](ContributorModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ContributorsContributorIdHandlesGet**
```swift
    open class func apiV2ContributorsContributorIdHandlesGet(contributorId: UUID, contributorId2: UUID? = nil, id: UUID? = nil, snsType: SnsType? = nil, handle: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: ContributorSnsHandlesModel?, _ error: Error?) -> Void)
```

Get all ContributorHandles.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let contributorId = 987 // UUID | 
let contributorId2 = 987 // UUID |  (optional)
let id = 987 // UUID |  (optional)
let snsType = SnsType() // SnsType |  (optional)
let handle = "handle_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all ContributorHandles.
ContributorsAPI.apiV2ContributorsContributorIdHandlesGet(contributorId: contributorId, contributorId2: contributorId2, id: id, snsType: snsType, handle: handle, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **contributorId** | [**UUID**](.md) |  | 
 **contributorId2** | [**UUID**](.md) |  | [optional] 
 **id** | [**UUID**](.md) |  | [optional] 
 **snsType** | [**SnsType**](.md) |  | [optional] 
 **handle** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**ContributorSnsHandlesModel**](ContributorSnsHandlesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ContributorsContributorIdHandlesHandleIdGet**
```swift
    open class func apiV2ContributorsContributorIdHandlesHandleIdGet(contributorId: UUID, handleId: UUID, completion: @escaping (_ data: SnsHandleModel?, _ error: Error?) -> Void)
```

Get ContributorHandle.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let contributorId = 987 // UUID | 
let handleId = 987 // UUID | 

// Get ContributorHandle.
ContributorsAPI.apiV2ContributorsContributorIdHandlesHandleIdGet(contributorId: contributorId, handleId: handleId) { (response, error) in
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
 **contributorId** | [**UUID**](.md) |  | 
 **handleId** | [**UUID**](.md) |  | 

### Return type

[**SnsHandleModel**](SnsHandleModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ContributorsGet**
```swift
    open class func apiV2ContributorsGet(id: UUID? = nil, name: String? = nil, email: String? = nil, website: String? = nil, hospitalId: UUID? = nil, interviewerOnly: Bool? = nil, showHidden: Bool? = nil, languageCode: String? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: ContributorsModel?, _ error: Error?) -> Void)
```

Get all Contributors.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let email = "email_example" // String |  (optional)
let website = "website_example" // String |  (optional)
let hospitalId = 987 // UUID |  (optional)
let interviewerOnly = true // Bool |  (optional)
let showHidden = true // Bool |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all Contributors.
ContributorsAPI.apiV2ContributorsGet(id: id, name: name, email: email, website: website, hospitalId: hospitalId, interviewerOnly: interviewerOnly, showHidden: showHidden, languageCode: languageCode, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **email** | **String** |  | [optional] 
 **website** | **String** |  | [optional] 
 **hospitalId** | [**UUID**](.md) |  | [optional] 
 **interviewerOnly** | **Bool** |  | [optional] 
 **showHidden** | **Bool** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**ContributorsModel**](ContributorsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ContributorsSlugGet**
```swift
    open class func apiV2ContributorsSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: ContributorModel?, _ error: Error?) -> Void)
```

Get Contributor by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

// Get Contributor by slug.
ContributorsAPI.apiV2ContributorsSlugGet(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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
 **returnDefaultValue** | **Bool** |  | [optional] 

### Return type

[**ContributorModel**](ContributorModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

