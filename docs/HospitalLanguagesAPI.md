# HospitalLanguagesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2HospitalsHospitalIdLanguagesGet**](HospitalLanguagesAPI.md#apiv2hospitalshospitalidlanguagesget) | **GET** /api/v2/hospitals/{hospitalId}/languages | Get hospitalLanguages


# **apiV2HospitalsHospitalIdLanguagesGet**
```swift
    open class func apiV2HospitalsHospitalIdLanguagesGet(hospitalId: UUID, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: HospitalLanguagesModel?, _ error: Error?) -> Void)
```

Get hospitalLanguages

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get hospitalLanguages
HospitalLanguagesAPI.apiV2HospitalsHospitalIdLanguagesGet(hospitalId: hospitalId, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **hospitalId** | **UUID** |  | 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**HospitalLanguagesModel**](HospitalLanguagesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

