# PlansAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2PlansGet**](PlansAPI.md#apiv2plansget) | **GET** /api/v2/plans | Get all plans.
[**apiV2PlansPlanIdGet**](PlansAPI.md#apiv2plansplanidget) | **GET** /api/v2/plans/{planId} | Get plan.
[**apiV2PlansPlanIdHospitalsGet**](PlansAPI.md#apiv2plansplanidhospitalsget) | **GET** /api/v2/plans/{planId}/hospitals | Get all plan hospital.
[**apiV2PlansPlanIdHospitalsHospitalIdGet**](PlansAPI.md#apiv2plansplanidhospitalshospitalidget) | **GET** /api/v2/plans/{planId}/hospitals/{hospitalId} | Get plan hospital.


# **apiV2PlansGet**
```swift
    open class func apiV2PlansGet(id: UUID? = nil, name: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: PlansModel?, _ error: Error?) -> Void)
```

Get all plans.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all plans.
PlansAPI.apiV2PlansGet(id: id, name: name, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**PlansModel**](PlansModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2PlansPlanIdGet**
```swift
    open class func apiV2PlansPlanIdGet(planId: UUID, completion: @escaping (_ data: PlanModel?, _ error: Error?) -> Void)
```

Get plan.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let planId = 987 // UUID | 

// Get plan.
PlansAPI.apiV2PlansPlanIdGet(planId: planId) { (response, error) in
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
 **planId** | [**UUID**](.md) |  | 

### Return type

[**PlanModel**](PlanModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2PlansPlanIdHospitalsGet**
```swift
    open class func apiV2PlansPlanIdHospitalsGet(planId: UUID, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: PlanHospitalsModel?, _ error: Error?) -> Void)
```

Get all plan hospital.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let planId = 987 // UUID | 
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all plan hospital.
PlansAPI.apiV2PlansPlanIdHospitalsGet(planId: planId, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **planId** | [**UUID**](.md) |  | 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**PlanHospitalsModel**](PlanHospitalsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2PlansPlanIdHospitalsHospitalIdGet**
```swift
    open class func apiV2PlansPlanIdHospitalsHospitalIdGet(planId: UUID, hospitalId: UUID, completion: @escaping (_ data: PlanHospitalModel?, _ error: Error?) -> Void)
```

Get plan hospital.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let planId = 987 // UUID | 
let hospitalId = 987 // UUID | 

// Get plan hospital.
PlansAPI.apiV2PlansPlanIdHospitalsHospitalIdGet(planId: planId, hospitalId: hospitalId) { (response, error) in
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
 **planId** | [**UUID**](.md) |  | 
 **hospitalId** | [**UUID**](.md) |  | 

### Return type

[**PlanHospitalModel**](PlanHospitalModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

