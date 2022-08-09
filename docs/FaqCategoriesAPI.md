# FaqCategoriesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2FaqcategoriesFaqCategoryIdGet**](FaqCategoriesAPI.md#apiv2faqcategoriesfaqcategoryidget) | **GET** /api/v2/faqcategories/{faqCategoryId} | Get FaqCategory.
[**apiV2FaqcategoriesGet**](FaqCategoriesAPI.md#apiv2faqcategoriesget) | **GET** /api/v2/faqcategories | Get all FaqCategories.
[**apiV2FaqcategoriesSlugGet**](FaqCategoriesAPI.md#apiv2faqcategoriesslugget) | **GET** /api/v2/faqcategories/{slug} | Get FaqCategory by slug.


# **apiV2FaqcategoriesFaqCategoryIdGet**
```swift
    open class func apiV2FaqcategoriesFaqCategoryIdGet(faqCategoryId: UUID, languageCode: String? = nil, completion: @escaping (_ data: FaqCategoryModel?, _ error: Error?) -> Void)
```

Get FaqCategory.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let faqCategoryId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)

// Get FaqCategory.
FaqCategoriesAPI.apiV2FaqcategoriesFaqCategoryIdGet(faqCategoryId: faqCategoryId, languageCode: languageCode) { (response, error) in
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
 **languageCode** | **String** |  | [optional] 

### Return type

[**FaqCategoryModel**](FaqCategoryModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2FaqcategoriesGet**
```swift
    open class func apiV2FaqcategoriesGet(id: UUID? = nil, parentId: UUID? = nil, name: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: FaqCategoriesModel?, _ error: Error?) -> Void)
```

Get all FaqCategories.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let parentId = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let showHidden = true // Bool |  (optional)
let returnDefaultValue = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all FaqCategories.
FaqCategoriesAPI.apiV2FaqcategoriesGet(id: id, parentId: parentId, name: name, hospitalId: hospitalId, hospitalName: hospitalName, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **hospitalId** | [**UUID**](.md) |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **showHidden** | **Bool** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**FaqCategoriesModel**](FaqCategoriesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2FaqcategoriesSlugGet**
```swift
    open class func apiV2FaqcategoriesSlugGet(slug: String, languageCode: String? = nil, completion: @escaping (_ data: FaqCategoryModel?, _ error: Error?) -> Void)
```

Get FaqCategory by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional)

// Get FaqCategory by slug.
FaqCategoriesAPI.apiV2FaqcategoriesSlugGet(slug: slug, languageCode: languageCode) { (response, error) in
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

[**FaqCategoryModel**](FaqCategoryModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

