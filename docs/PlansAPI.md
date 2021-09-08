# PlansAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1PlansCurrentGet**](PlansAPI.md#apiv1planscurrentget) | **GET** /api/v1/plans/current | Get current plan
[**apiV1PlansGet**](PlansAPI.md#apiv1plansget) | **GET** /api/v1/plans | Get all plans.
[**apiV1PlansPlanIdGet**](PlansAPI.md#apiv1plansplanidget) | **GET** /api/v1/plans/{planId} | Get plan.
[**apiV1PlansPlanIdSubscribePost**](PlansAPI.md#apiv1plansplanidsubscribepost) | **POST** /api/v1/plans/{planId}/subscribe | Subscribe plan.
[**apiV1PlansPlanIdUnsubscribePost**](PlansAPI.md#apiv1plansplanidunsubscribepost) | **POST** /api/v1/plans/{planId}/unsubscribe | Unsubscribe plan.


# **apiV1PlansCurrentGet**
```swift
    open class func apiV1PlansCurrentGet(completion: @escaping (_ data: PlanViewModel?, _ error: Error?) -> Void)
```

Get current plan

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient


// Get current plan
PlansAPI.apiV1PlansCurrentGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**PlanViewModel**](PlanViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1PlansGet**
```swift
    open class func apiV1PlansGet(id: UUID? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: PlansViewModel?, _ error: Error?) -> Void)
```

Get all plans.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all plans.
PlansAPI.apiV1PlansGet(id: id, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**PlansViewModel**](PlansViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1PlansPlanIdGet**
```swift
    open class func apiV1PlansPlanIdGet(planId: UUID, completion: @escaping (_ data: PlanViewModel?, _ error: Error?) -> Void)
```

Get plan.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let planId = 987 // UUID | 

// Get plan.
PlansAPI.apiV1PlansPlanIdGet(planId: planId) { (response, error) in
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

[**PlanViewModel**](PlanViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1PlansPlanIdSubscribePost**
```swift
    open class func apiV1PlansPlanIdSubscribePost(planId: UUID, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Subscribe plan.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let planId = 987 // UUID | 

// Subscribe plan.
PlansAPI.apiV1PlansPlanIdSubscribePost(planId: planId) { (response, error) in
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

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1PlansPlanIdUnsubscribePost**
```swift
    open class func apiV1PlansPlanIdUnsubscribePost(planId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Unsubscribe plan.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let planId = 987 // UUID | 

// Unsubscribe plan.
PlansAPI.apiV1PlansPlanIdUnsubscribePost(planId: planId) { (response, error) in
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

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

