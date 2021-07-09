# DealPackagesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1DealsDealIdPackagesPackageIdDelete**](DealPackagesAPI.md#apiv1dealsdealidpackagespackageiddelete) | **DELETE** /api/v1/deals/{dealId}/packages/{packageId} | Delete deal package.
[**apiV1DealsDealIdPackagesPackageIdGet**](DealPackagesAPI.md#apiv1dealsdealidpackagespackageidget) | **GET** /api/v1/deals/{dealId}/packages/{packageId} | Get deal package.
[**apiV1DealsDealIdPackagesPackageIdPut**](DealPackagesAPI.md#apiv1dealsdealidpackagespackageidput) | **PUT** /api/v1/deals/{dealId}/packages/{packageId} | Update deal package.
[**apiV1DealsDealIdPackagesPost**](DealPackagesAPI.md#apiv1dealsdealidpackagespost) | **POST** /api/v1/deals/{dealId}/packages | Create deal package.


# **apiV1DealsDealIdPackagesPackageIdDelete**
```swift
    open class func apiV1DealsDealIdPackagesPackageIdDelete(dealId: UUID, packageId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete deal package.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let dealId = 987 // UUID | 
let packageId = 987 // UUID | 

// Delete deal package.
DealPackagesAPI.apiV1DealsDealIdPackagesPackageIdDelete(dealId: dealId, packageId: packageId) { (response, error) in
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
 **dealId** | [**UUID**](.md) |  | 
 **packageId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DealsDealIdPackagesPackageIdGet**
```swift
    open class func apiV1DealsDealIdPackagesPackageIdGet(dealId: UUID, packageId: UUID, completion: @escaping (_ data: DealPackageViewModel?, _ error: Error?) -> Void)
```

Get deal package.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let dealId = 987 // UUID | 
let packageId = 987 // UUID | 

// Get deal package.
DealPackagesAPI.apiV1DealsDealIdPackagesPackageIdGet(dealId: dealId, packageId: packageId) { (response, error) in
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
 **dealId** | [**UUID**](.md) |  | 
 **packageId** | [**UUID**](.md) |  | 

### Return type

[**DealPackageViewModel**](DealPackageViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DealsDealIdPackagesPackageIdPut**
```swift
    open class func apiV1DealsDealIdPackagesPackageIdPut(dealId: UUID, packageId: UUID, updateDealPackageCommand: UpdateDealPackageCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update deal package.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let dealId = 987 // UUID | 
let packageId = 987 // UUID | 
let updateDealPackageCommand = UpdateDealPackageCommand(dealName: "dealName_example", hospitalId: 123, hospitalName: "hospitalName_example", refundPolicy: RefundPolicy(), additionalServices: "additionalServices_example", accomodation: "accomodation_example", transfer: "transfer_example", bonus: "bonus_example", price: 123, auditableEntity: {...}) // UpdateDealPackageCommand |  (optional)

// Update deal package.
DealPackagesAPI.apiV1DealsDealIdPackagesPackageIdPut(dealId: dealId, packageId: packageId, updateDealPackageCommand: updateDealPackageCommand) { (response, error) in
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
 **dealId** | [**UUID**](.md) |  | 
 **packageId** | [**UUID**](.md) |  | 
 **updateDealPackageCommand** | [**UpdateDealPackageCommand**](UpdateDealPackageCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DealsDealIdPackagesPost**
```swift
    open class func apiV1DealsDealIdPackagesPost(dealId: UUID, createDealPackageCommand: CreateDealPackageCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create deal package.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let dealId = 987 // UUID | 
let createDealPackageCommand = CreateDealPackageCommand(dealId: 123, refundPolicy: RefundPolicy(), additionalServices: "additionalServices_example", accomodation: "accomodation_example", transfer: "transfer_example", bonus: "bonus_example", price: 123) // CreateDealPackageCommand |  (optional)

// Create deal package.
DealPackagesAPI.apiV1DealsDealIdPackagesPost(dealId: dealId, createDealPackageCommand: createDealPackageCommand) { (response, error) in
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
 **dealId** | [**UUID**](.md) |  | 
 **createDealPackageCommand** | [**CreateDealPackageCommand**](CreateDealPackageCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

