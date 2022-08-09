# AccreditationsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2AccreditationsAccreditationIdGet**](AccreditationsAPI.md#apiv2accreditationsaccreditationidget) | **GET** /api/v2/accreditations/{accreditationId} | Get Accreditation.
[**apiV2AccreditationsGet**](AccreditationsAPI.md#apiv2accreditationsget) | **GET** /api/v2/accreditations | Get all Accreditations.


# **apiV2AccreditationsAccreditationIdGet**
```swift
    open class func apiV2AccreditationsAccreditationIdGet(accreditationId: UUID, completion: @escaping (_ data: AccreditationModel?, _ error: Error?) -> Void)
```

Get Accreditation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let accreditationId = 987 // UUID | 

// Get Accreditation.
AccreditationsAPI.apiV2AccreditationsAccreditationIdGet(accreditationId: accreditationId) { (response, error) in
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
 **accreditationId** | **UUID** |  | 

### Return type

[**AccreditationModel**](AccreditationModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AccreditationsGet**
```swift
    open class func apiV2AccreditationsGet(name: String? = nil, logo: String? = nil, country: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: AccreditationsModel?, _ error: Error?) -> Void)
```

Get all Accreditations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let name = "name_example" // String |  (optional)
let logo = "logo_example" // String |  (optional)
let country = "country_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all Accreditations.
AccreditationsAPI.apiV2AccreditationsGet(name: name, logo: logo, country: country, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **name** | **String** |  | [optional] 
 **logo** | **String** |  | [optional] 
 **country** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**AccreditationsModel**](AccreditationsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

