# DepartmentAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1HospitalsDepartmentsGet**](DepartmentAPI.md#apiv1hospitalsdepartmentsget) | **GET** /api/v1/hospitals/departments | Get all department.
[**apiV1HospitalsHospitalIdDepartmentsDepartmentIdDelete**](DepartmentAPI.md#apiv1hospitalshospitaliddepartmentsdepartmentiddelete) | **DELETE** /api/v1/hospitals/{hospitalId}/departments/{departmentId} | Delete department.
[**apiV1HospitalsHospitalIdDepartmentsDepartmentIdGet**](DepartmentAPI.md#apiv1hospitalshospitaliddepartmentsdepartmentidget) | **GET** /api/v1/hospitals/{hospitalId}/departments/{departmentId} | Get department.
[**apiV1HospitalsHospitalIdDepartmentsDepartmentIdPost**](DepartmentAPI.md#apiv1hospitalshospitaliddepartmentsdepartmentidpost) | **POST** /api/v1/hospitals/{hospitalId}/departments/{departmentId} | Create department.
[**apiV1HospitalsHospitalIdDepartmentsDepartmentIdPut**](DepartmentAPI.md#apiv1hospitalshospitaliddepartmentsdepartmentidput) | **PUT** /api/v1/hospitals/{hospitalId}/departments/{departmentId} | Update department.


# **apiV1HospitalsDepartmentsGet**
```swift
    open class func apiV1HospitalsDepartmentsGet(id: UUID? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, name: String? = nil, additionalInfo: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: DepartmentsViewModel?, _ error: Error?) -> Void)
```

Get all department.

Sample request:        GET /api/v1/hospitals/departments

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let name = "name_example" // String |  (optional)
let additionalInfo = "additionalInfo_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all department.
DepartmentAPI.apiV1HospitalsDepartmentsGet(id: id, hospitalId: hospitalId, hospitalName: hospitalName, name: name, additionalInfo: additionalInfo, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **hospitalId** | [**UUID**](.md) |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **name** | **String** |  | [optional] 
 **additionalInfo** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**DepartmentsViewModel**](DepartmentsViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdDepartmentsDepartmentIdDelete**
```swift
    open class func apiV1HospitalsHospitalIdDepartmentsDepartmentIdDelete(hospitalId: UUID, departmentId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete department.

Sample request:        DELETE /api/v1/hospitals/1/departments/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let departmentId = 987 // UUID | 

// Delete department.
DepartmentAPI.apiV1HospitalsHospitalIdDepartmentsDepartmentIdDelete(hospitalId: hospitalId, departmentId: departmentId) { (response, error) in
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
 **hospitalId** | [**UUID**](.md) |  | 
 **departmentId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdDepartmentsDepartmentIdGet**
```swift
    open class func apiV1HospitalsHospitalIdDepartmentsDepartmentIdGet(hospitalId: UUID, departmentId: UUID, completion: @escaping (_ data: DepartmentViewModel?, _ error: Error?) -> Void)
```

Get department.

Sample request:        GET /api/v1/hospitals/1/departments/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let departmentId = 987 // UUID | 

// Get department.
DepartmentAPI.apiV1HospitalsHospitalIdDepartmentsDepartmentIdGet(hospitalId: hospitalId, departmentId: departmentId) { (response, error) in
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
 **hospitalId** | [**UUID**](.md) |  | 
 **departmentId** | [**UUID**](.md) |  | 

### Return type

[**DepartmentViewModel**](DepartmentViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdDepartmentsDepartmentIdPost**
```swift
    open class func apiV1HospitalsHospitalIdDepartmentsDepartmentIdPost(hospitalId: UUID, departmentId: String, createDepartmentCommand: CreateDepartmentCommand? = nil, completion: @escaping (_ data: Department?, _ error: Error?) -> Void)
```

Create department.

Sample request:        POST /api/v1/hospitals/1/departments/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let departmentId = "departmentId_example" // String | 
let createDepartmentCommand = CreateDepartmentCommand(hospitalId: 123, name: "name_example", additionalInfo: "additionalInfo_example") // CreateDepartmentCommand |  (optional)

// Create department.
DepartmentAPI.apiV1HospitalsHospitalIdDepartmentsDepartmentIdPost(hospitalId: hospitalId, departmentId: departmentId, createDepartmentCommand: createDepartmentCommand) { (response, error) in
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
 **hospitalId** | [**UUID**](.md) |  | 
 **departmentId** | **String** |  | 
 **createDepartmentCommand** | [**CreateDepartmentCommand**](CreateDepartmentCommand.md) |  | [optional] 

### Return type

[**Department**](Department.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdDepartmentsDepartmentIdPut**
```swift
    open class func apiV1HospitalsHospitalIdDepartmentsDepartmentIdPut(hospitalId: UUID, departmentId: UUID, updateDepartmentCommand: UpdateDepartmentCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update department.

Sample request:

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let departmentId = 987 // UUID | 
let updateDepartmentCommand = UpdateDepartmentCommand(name: "name_example", additionalInfo: "additionalInfo_example") // UpdateDepartmentCommand |  (optional)

// Update department.
DepartmentAPI.apiV1HospitalsHospitalIdDepartmentsDepartmentIdPut(hospitalId: hospitalId, departmentId: departmentId, updateDepartmentCommand: updateDepartmentCommand) { (response, error) in
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
 **hospitalId** | [**UUID**](.md) |  | 
 **departmentId** | [**UUID**](.md) |  | 
 **updateDepartmentCommand** | [**UpdateDepartmentCommand**](UpdateDepartmentCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

