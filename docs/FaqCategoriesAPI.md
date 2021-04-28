# FaqCategoriesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1FaqcategoriesFaqCategoryIdGet**](FaqCategoriesAPI.md#apiv1faqcategoriesfaqcategoryidget) | **GET** /api/v1/faqcategories/{faqCategoryId} | Get faqCategory.
[**apiV1FaqcategoriesGet**](FaqCategoriesAPI.md#apiv1faqcategoriesget) | **GET** /api/v1/faqcategories | Get all faqCategory.


# **apiV1FaqcategoriesFaqCategoryIdGet**
```swift
    open class func apiV1FaqcategoriesFaqCategoryIdGet(faqCategoryId: UUID, languageCode: String? = nil, completion: @escaping (_ data: FaqCategoryViewModel?, _ error: Error?) -> Void)
```

Get faqCategory.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let faqCategoryId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional) (default to "")

// Get faqCategory.
FaqCategoriesAPI.apiV1FaqcategoriesFaqCategoryIdGet(faqCategoryId: faqCategoryId, languageCode: languageCode) { (response, error) in
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
 **faqCategoryId** | [**UUID**](.md) |  | 
 **languageCode** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**FaqCategoryViewModel**](FaqCategoryViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1FaqcategoriesGet**
```swift
    open class func apiV1FaqcategoriesGet(id: UUID? = nil, parentId: UUID? = nil, name: String? = nil, description: String? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: FaqCategoriesViewModel?, _ error: Error?) -> Void)
```

Get all faqCategory.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let parentId = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all faqCategory.
FaqCategoriesAPI.apiV1FaqcategoriesGet(id: id, parentId: parentId, name: name, description: description, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **parentId** | [**UUID**](.md) |  | [optional] 
 **name** | **String** |  | [optional] 
 **description** | **String** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**FaqCategoriesViewModel**](FaqCategoriesViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

