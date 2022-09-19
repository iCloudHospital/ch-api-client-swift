# SpecialtiesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2SpecialtiesGet**](SpecialtiesAPI.md#apiv2specialtiesget) | **GET** /api/v2/specialties | Get all Specialties.
[**apiV2SpecialtiesSimpleGet**](SpecialtiesAPI.md#apiv2specialtiessimpleget) | **GET** /api/v2/specialties/simple | Get all Specialties Simple.
[**apiV2SpecialtiesSlugGet**](SpecialtiesAPI.md#apiv2specialtiesslugget) | **GET** /api/v2/specialties/{slug} | 
[**apiV2SpecialtiesSpecialtyIdGet**](SpecialtiesAPI.md#apiv2specialtiesspecialtyidget) | **GET** /api/v2/specialties/{specialtyId} | 
[**apiV2SpecialtiesSpecialtyIdMediasGet**](SpecialtiesAPI.md#apiv2specialtiesspecialtyidmediasget) | **GET** /api/v2/specialties/{specialtyId}/medias | Get all SpecialtyMedias.
[**apiV2SpecialtiesSpecialtyIdMediasMediaIdGet**](SpecialtiesAPI.md#apiv2specialtiesspecialtyidmediasmediaidget) | **GET** /api/v2/specialties/{specialtyId}/medias/{mediaId} | Get SpecialtyMedia.


# **apiV2SpecialtiesGet**
```swift
    open class func apiV2SpecialtiesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, specialtyTypeId: UUID? = nil, marketingType: MarketingType? = nil, hospitalId: UUID? = nil, created: Date? = nil, languageCode: String? = nil, ids: [UUID]? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: SpecialtiesModel?, _ error: Error?) -> Void)
```

Get all Specialties.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let specialtyTypeId = 987 // UUID |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let hospitalId = 987 // UUID |  (optional)
let created = Date() // Date |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let ids = [123] // [UUID] |  (optional)
let returnDefaultValue = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all Specialties.
SpecialtiesAPI.apiV2SpecialtiesGet(id: id, name: name, description: description, specialtyTypeId: specialtyTypeId, marketingType: marketingType, hospitalId: hospitalId, created: created, languageCode: languageCode, ids: ids, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **description** | **String** |  | [optional] 
 **specialtyTypeId** | **UUID** |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **hospitalId** | **UUID** |  | [optional] 
 **created** | **Date** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **ids** | [**[UUID]**](UUID.md) |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**SpecialtiesModel**](SpecialtiesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2SpecialtiesSimpleGet**
```swift
    open class func apiV2SpecialtiesSimpleGet(id: UUID? = nil, name: String? = nil, description: String? = nil, specialtyTypeId: UUID? = nil, marketingType: MarketingType? = nil, hospitalId: UUID? = nil, created: Date? = nil, languageCode: String? = nil, ids: [UUID]? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: SpecialtiesSimpleModel?, _ error: Error?) -> Void)
```

Get all Specialties Simple.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let specialtyTypeId = 987 // UUID |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let hospitalId = 987 // UUID |  (optional)
let created = Date() // Date |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let ids = [123] // [UUID] |  (optional)
let returnDefaultValue = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all Specialties Simple.
SpecialtiesAPI.apiV2SpecialtiesSimpleGet(id: id, name: name, description: description, specialtyTypeId: specialtyTypeId, marketingType: marketingType, hospitalId: hospitalId, created: created, languageCode: languageCode, ids: ids, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **description** | **String** |  | [optional] 
 **specialtyTypeId** | **UUID** |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **hospitalId** | **UUID** |  | [optional] 
 **created** | **Date** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **ids** | [**[UUID]**](UUID.md) |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**SpecialtiesSimpleModel**](SpecialtiesSimpleModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2SpecialtiesSlugGet**
```swift
    open class func apiV2SpecialtiesSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: SpecialtyModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

// 
SpecialtiesAPI.apiV2SpecialtiesSlugGet(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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
 **returnDefaultValue** | **Bool** |  | [optional] 

### Return type

[**SpecialtyModel**](SpecialtyModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2SpecialtiesSpecialtyIdGet**
```swift
    open class func apiV2SpecialtiesSpecialtyIdGet(specialtyId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: SpecialtyModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

// 
SpecialtiesAPI.apiV2SpecialtiesSpecialtyIdGet(specialtyId: specialtyId, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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
 **specialtyId** | **UUID** |  | 
 **languageCode** | **String** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 

### Return type

[**SpecialtyModel**](SpecialtyModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2SpecialtiesSpecialtyIdMediasGet**
```swift
    open class func apiV2SpecialtiesSpecialtyIdMediasGet(specialtyId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: MediasModel?, _ error: Error?) -> Void)
```

Get all SpecialtyMedias.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyId = 987 // UUID | 
let id = 987 // UUID |  (optional)
let mediaType = MediaType() // MediaType |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all SpecialtyMedias.
SpecialtiesAPI.apiV2SpecialtiesSpecialtyIdMediasGet(specialtyId: specialtyId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **specialtyId** | **UUID** |  | 
 **id** | **UUID** |  | [optional] 
 **mediaType** | [**MediaType**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**MediasModel**](MediasModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2SpecialtiesSpecialtyIdMediasMediaIdGet**
```swift
    open class func apiV2SpecialtiesSpecialtyIdMediasMediaIdGet(specialtyId: UUID, mediaId: UUID, completion: @escaping (_ data: MediaModel?, _ error: Error?) -> Void)
```

Get SpecialtyMedia.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyId = 987 // UUID | 
let mediaId = 987 // UUID | 

// Get SpecialtyMedia.
SpecialtiesAPI.apiV2SpecialtiesSpecialtyIdMediasMediaIdGet(specialtyId: specialtyId, mediaId: mediaId) { (response, error) in
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
 **specialtyId** | **UUID** |  | 
 **mediaId** | **UUID** |  | 

### Return type

[**MediaModel**](MediaModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

