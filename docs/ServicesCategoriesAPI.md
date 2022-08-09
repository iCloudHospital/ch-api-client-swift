# ServicesCategoriesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ServicescategoriesGet**](ServicesCategoriesAPI.md#apiv2servicescategoriesget) | **GET** /api/v2/servicescategories | Get all ServiceCategories.
[**apiV2ServicescategoriesServiceCategoryIdGet**](ServicesCategoriesAPI.md#apiv2servicescategoriesservicecategoryidget) | **GET** /api/v2/servicescategories/{serviceCategoryId} | Get ServiceCategory.


# **apiV2ServicescategoriesGet**
```swift
    open class func apiV2ServicescategoriesGet(id: UUID? = nil, name: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: ServiceCategoriesModel?, _ error: Error?) -> Void)
```

Get all ServiceCategories.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all ServiceCategories.
ServicesCategoriesAPI.apiV2ServicescategoriesGet(id: id, name: name, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **name** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**ServiceCategoriesModel**](ServiceCategoriesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ServicescategoriesServiceCategoryIdGet**
```swift
    open class func apiV2ServicescategoriesServiceCategoryIdGet(serviceCategoryId: UUID, completion: @escaping (_ data: ServiceCategoryModel?, _ error: Error?) -> Void)
```

Get ServiceCategory.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let serviceCategoryId = 987 // UUID | 

// Get ServiceCategory.
ServicesCategoriesAPI.apiV2ServicescategoriesServiceCategoryIdGet(serviceCategoryId: serviceCategoryId) { (response, error) in
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
 **serviceCategoryId** | **UUID** |  | 

### Return type

[**ServiceCategoryModel**](ServiceCategoryModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

