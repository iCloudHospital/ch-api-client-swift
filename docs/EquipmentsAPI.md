# EquipmentsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1HospitalsEquipmentsGet**](EquipmentsAPI.md#apiv1hospitalsequipmentsget) | **GET** /api/v1/hospitals/equipments | Get all equipments.
[**apiV1HospitalsHospitalIdEquipmentsEquipmentIdDelete**](EquipmentsAPI.md#apiv1hospitalshospitalidequipmentsequipmentiddelete) | **DELETE** /api/v1/hospitals/{hospitalId}/equipments/{equipmentId} | Delete equipment.
[**apiV1HospitalsHospitalIdEquipmentsEquipmentIdGet**](EquipmentsAPI.md#apiv1hospitalshospitalidequipmentsequipmentidget) | **GET** /api/v1/hospitals/{hospitalId}/equipments/{equipmentId} | Get equipment.
[**apiV1HospitalsHospitalIdEquipmentsEquipmentIdPut**](EquipmentsAPI.md#apiv1hospitalshospitalidequipmentsequipmentidput) | **PUT** /api/v1/hospitals/{hospitalId}/equipments/{equipmentId} | Update equipment.
[**apiV1HospitalsHospitalIdEquipmentsPost**](EquipmentsAPI.md#apiv1hospitalshospitalidequipmentspost) | **POST** /api/v1/hospitals/{hospitalId}/equipments | Create an equipment and add to a hospital.


# **apiV1HospitalsEquipmentsGet**
```swift
    open class func apiV1HospitalsEquipmentsGet(id: UUID? = nil, name: String? = nil, description: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: EquipmentsViewModel?, _ error: Error?) -> Void)
```

Get all equipments.

Sample request:        GET /api/v1/hospitals/1/equipments      {          \"pageQueryFilter\": {              \"page\": 1,              \"limit\": 20,              \"lastRetrived\": \"2020-02-05T08:40\"          },          \"searchString\": \"Medical\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let created = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all equipments.
EquipmentsAPI.apiV1HospitalsEquipmentsGet(id: id, name: name, description: description, hospitalId: hospitalId, hospitalName: hospitalName, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **description** | **String** |  | [optional] 
 **hospitalId** | [**UUID**](.md) |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **created** | **Date** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**EquipmentsViewModel**](EquipmentsViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdEquipmentsEquipmentIdDelete**
```swift
    open class func apiV1HospitalsHospitalIdEquipmentsEquipmentIdDelete(hospitalId: UUID, equipmentId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete equipment.

Sample request:        DELETE /api/v1/hospitals/1/equipments/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let equipmentId = 987 // UUID | 

// Delete equipment.
EquipmentsAPI.apiV1HospitalsHospitalIdEquipmentsEquipmentIdDelete(hospitalId: hospitalId, equipmentId: equipmentId) { (response, error) in
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
 **equipmentId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdEquipmentsEquipmentIdGet**
```swift
    open class func apiV1HospitalsHospitalIdEquipmentsEquipmentIdGet(hospitalId: UUID, equipmentId: UUID, completion: @escaping (_ data: EquipmentViewModel?, _ error: Error?) -> Void)
```

Get equipment.

Sample request:        GET /api/v1/hospitals/1/equipments/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let equipmentId = 987 // UUID | 

// Get equipment.
EquipmentsAPI.apiV1HospitalsHospitalIdEquipmentsEquipmentIdGet(hospitalId: hospitalId, equipmentId: equipmentId) { (response, error) in
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
 **equipmentId** | [**UUID**](.md) |  | 

### Return type

[**EquipmentViewModel**](EquipmentViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdEquipmentsEquipmentIdPut**
```swift
    open class func apiV1HospitalsHospitalIdEquipmentsEquipmentIdPut(hospitalId: UUID, equipmentId: UUID, updateEquipmentCommand: UpdateEquipmentCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update equipment.

Sample request:        PUT /api/v1/hospitals/1/equipments/1      {          \"description\": \"Upgraded medical equipment\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let equipmentId = 987 // UUID | 
let updateEquipmentCommand = UpdateEquipmentCommand(name: "name_example", description: "description_example", hospitalName: "hospitalName_example", medias: [MediaViewModel(id: 123, mediaType: MediaType(), url: "url_example", thumbnailUrl: "thumbnailUrl_example", description: "description_example", order: 123)], auditableEntity: AuditableEntity(createdBy: 123, updatedBy: 123, deletedBy: 123, createdDate: Date(), updatedDate: Date(), deletedDate: Date(), isHidden: false, isDeleted: false)) // UpdateEquipmentCommand |  (optional)

// Update equipment.
EquipmentsAPI.apiV1HospitalsHospitalIdEquipmentsEquipmentIdPut(hospitalId: hospitalId, equipmentId: equipmentId, updateEquipmentCommand: updateEquipmentCommand) { (response, error) in
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
 **equipmentId** | [**UUID**](.md) |  | 
 **updateEquipmentCommand** | [**UpdateEquipmentCommand**](UpdateEquipmentCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdEquipmentsPost**
```swift
    open class func apiV1HospitalsHospitalIdEquipmentsPost(hospitalId: UUID, createEquipmentCommand: CreateEquipmentCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create an equipment and add to a hospital.

Sample request:        POST /api/v1/hospitals/1/equipments      {          \"name\": \"Afroasia ltd\",          \"description\": \"Medical equipment\",          \"medias\": [            {              \"mediaType\": 0,              \"url\": \"imageurl\",              \"description\": \"string\",                      \"order\": 0            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let createEquipmentCommand = CreateEquipmentCommand(name: "name_example", description: "description_example", medias: [MediaViewModel(id: 123, mediaType: MediaType(), url: "url_example", thumbnailUrl: "thumbnailUrl_example", description: "description_example", order: 123)], auditableEntity: AuditableEntity(createdBy: 123, updatedBy: 123, deletedBy: 123, createdDate: Date(), updatedDate: Date(), deletedDate: Date(), isHidden: false, isDeleted: false)) // CreateEquipmentCommand |  (optional)

// Create an equipment and add to a hospital.
EquipmentsAPI.apiV1HospitalsHospitalIdEquipmentsPost(hospitalId: hospitalId, createEquipmentCommand: createEquipmentCommand) { (response, error) in
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
 **createEquipmentCommand** | [**CreateEquipmentCommand**](CreateEquipmentCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

