# ServicesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesPost**](ServicesAPI.md#apiv1hospitalshospitalidspecialtiesspecialtyidservicespost) | **POST** /api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/services | Create service.
[**apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdDelete**](ServicesAPI.md#apiv1hospitalshospitalidspecialtiesspecialtyidservicesserviceiddelete) | **DELETE** /api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/services/{serviceId} | Delete service.
[**apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdGet**](ServicesAPI.md#apiv1hospitalshospitalidspecialtiesspecialtyidservicesserviceidget) | **GET** /api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/services/{serviceId} | Get service.
[**apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdPut**](ServicesAPI.md#apiv1hospitalshospitalidspecialtiesspecialtyidservicesserviceidput) | **PUT** /api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/services/{serviceId} | Update service.
[**apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesquencePut**](ServicesAPI.md#apiv1hospitalshospitalidspecialtiesspecialtyidservicesquenceput) | **PUT** /api/v1/hospitals/{hospitalId}/specialties/{specialtyId}/servicesquence | Update service sequence.
[**apiV1HospitalsServicesGet**](ServicesAPI.md#apiv1hospitalsservicesget) | **GET** /api/v1/hospitals/services | Get all services.
[**apiV1HospitalsServicesSlugsSlugGet**](ServicesAPI.md#apiv1hospitalsservicesslugsslugget) | **GET** /api/v1/hospitals/services/slugs/{slug} | Get service by slug.


# **apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesPost**
```swift
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesPost(hospitalId: UUID, specialtyId: UUID, createServiceCommand: CreateServiceCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create service.

Sample request:        POST /api/v1/hospitals/1/specialties/1/services      {          \"name\": \"Heart check up\",          \"description\": \"Asan Hospital (Asan Medical Center) is the largest multidisciplinary medical center in South Korea, which can serve 2,700 patients at once.The key specialties in the hospital are organ transplant, oncology, cardiology, and cardiac surgery.Almost half of all heart transplants in South Korea are carried out (45%) at Asan.The success of organ transplants ranges from 90%. Every day, 11,800 outpatients and 2,550 inpatients are treated in Asan Hospital. Medical tourists from the USA, China, the UAE, Russia, Kazakhstan, and Mongolia choose Asan Hospital.\",          \"minPrice\": 2235,          \"maxPrice\": 2566,          \"priceReuqest\": false,          \"procedure\": \"Treatment\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let specialtyId = 987 // UUID | 
let createServiceCommand = CreateServiceCommand(name: "name_example", description: "description_example", minPrice: 123, maxPrice: 123, priceReuqest: false, procedure: Procedure()) // CreateServiceCommand |  (optional)

// Create service.
ServicesAPI.apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesPost(hospitalId: hospitalId, specialtyId: specialtyId, createServiceCommand: createServiceCommand) { (response, error) in
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
 **specialtyId** | [**UUID**](.md) |  | 
 **createServiceCommand** | [**CreateServiceCommand**](CreateServiceCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdDelete**
```swift
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdDelete(hospitalId: UUID, specialtyId: UUID, serviceId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete service.

Sample request:        DELETE /api/v1/hospitals/1/specialties/1/services/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let specialtyId = 987 // UUID | 
let serviceId = 987 // UUID | 

// Delete service.
ServicesAPI.apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdDelete(hospitalId: hospitalId, specialtyId: specialtyId, serviceId: serviceId) { (response, error) in
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
 **specialtyId** | [**UUID**](.md) |  | 
 **serviceId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdGet**
```swift
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdGet(hospitalId: UUID, specialtyId: UUID, serviceId: UUID, completion: @escaping (_ data: ServiceViewModel?, _ error: Error?) -> Void)
```

Get service.

Sample request:        GET /api/v1/hospitals/1/specialties/1/services/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let specialtyId = 987 // UUID | 
let serviceId = 987 // UUID | 

// Get service.
ServicesAPI.apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdGet(hospitalId: hospitalId, specialtyId: specialtyId, serviceId: serviceId) { (response, error) in
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
 **specialtyId** | [**UUID**](.md) |  | 
 **serviceId** | [**UUID**](.md) |  | 

### Return type

[**ServiceViewModel**](ServiceViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdPut**
```swift
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdPut(hospitalId: UUID, specialtyId: UUID, serviceId: UUID, updateServiceCommand: UpdateServiceCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update service.

Sample request:        PUT /api/v1/hospitals/1/specialties/1/services/1      {          \"name\": \"Extended analysis of blood\",          \"description\": \"Extended analysis of blood description.\",          \"minPrice\": 1000,          \"maxPrice\": 2600,          \"priceReuqest\": false      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let specialtyId = 987 // UUID | 
let serviceId = 987 // UUID | 
let updateServiceCommand = UpdateServiceCommand(name: "name_example", slug: "slug_example", description: "description_example", content: "content_example", hospitalName: "hospitalName_example", specialtyTypeId: 123, specialtyTypeName: "specialtyTypeName_example", specialtyName: "specialtyName_example", marketingType: MarketingType(), procedure: MarketingType(), minPrice: 123, maxPrice: 123, priceReuqest: false, order: 123, auditableEntity: {...}) // UpdateServiceCommand |  (optional)

// Update service.
ServicesAPI.apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesServiceIdPut(hospitalId: hospitalId, specialtyId: specialtyId, serviceId: serviceId, updateServiceCommand: updateServiceCommand) { (response, error) in
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
 **specialtyId** | [**UUID**](.md) |  | 
 **serviceId** | [**UUID**](.md) |  | 
 **updateServiceCommand** | [**UpdateServiceCommand**](UpdateServiceCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesquencePut**
```swift
    open class func apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesquencePut(hospitalId: UUID, specialtyId: UUID, updateServiceSequenceCommand: UpdateServiceSequenceCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update service sequence.

Smaple request:        PUT /api/v1/hospitals/1/specialties/1/servicesquence      {          \"serviceSequence\": [1, 3, 5]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let specialtyId = 987 // UUID | 
let updateServiceSequenceCommand = UpdateServiceSequenceCommand(serviceSequence: [123]) // UpdateServiceSequenceCommand |  (optional)

// Update service sequence.
ServicesAPI.apiV1HospitalsHospitalIdSpecialtiesSpecialtyIdServicesquencePut(hospitalId: hospitalId, specialtyId: specialtyId, updateServiceSequenceCommand: updateServiceSequenceCommand) { (response, error) in
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
 **specialtyId** | [**UUID**](.md) |  | 
 **updateServiceSequenceCommand** | [**UpdateServiceSequenceCommand**](UpdateServiceSequenceCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsServicesGet**
```swift
    open class func apiV1HospitalsServicesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, specialtyId: UUID? = nil, specialtyTypeId: UUID? = nil, specialtyTypeName: String? = nil, marketingType: MarketingType? = nil, procedure: Procedure? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: ServicesViewModel?, _ error: Error?) -> Void)
```

Get all services.

Sample request:        GET /api/v1/hospitals/services

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let hospitalSlug = "hospitalSlug_example" // String |  (optional)
let specialtyId = 987 // UUID |  (optional)
let specialtyTypeId = 987 // UUID |  (optional)
let specialtyTypeName = "specialtyTypeName_example" // String |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let procedure = Procedure() // Procedure |  (optional)
let created = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all services.
ServicesAPI.apiV1HospitalsServicesGet(id: id, name: name, description: description, hospitalId: hospitalId, hospitalName: hospitalName, hospitalSlug: hospitalSlug, specialtyId: specialtyId, specialtyTypeId: specialtyTypeId, specialtyTypeName: specialtyTypeName, marketingType: marketingType, procedure: procedure, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **hospitalSlug** | **String** |  | [optional] 
 **specialtyId** | [**UUID**](.md) |  | [optional] 
 **specialtyTypeId** | [**UUID**](.md) |  | [optional] 
 **specialtyTypeName** | **String** |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **procedure** | [**Procedure**](.md) |  | [optional] 
 **created** | **Date** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**ServicesViewModel**](ServicesViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsServicesSlugsSlugGet**
```swift
    open class func apiV1HospitalsServicesSlugsSlugGet(slug: String, completion: @escaping (_ data: ServiceViewModel?, _ error: Error?) -> Void)
```

Get service by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 

// Get service by slug.
ServicesAPI.apiV1HospitalsServicesSlugsSlugGet(slug: slug) { (response, error) in
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

### Return type

[**ServiceViewModel**](ServiceViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

