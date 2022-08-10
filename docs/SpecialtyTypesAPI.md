# SpecialtyTypesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2SpecialtytypesGet**](SpecialtyTypesAPI.md#apiv2specialtytypesget) | **GET** /api/v2/specialtytypes | Get all Departments.
[**apiV2SpecialtytypesSimpleGet**](SpecialtyTypesAPI.md#apiv2specialtytypessimpleget) | **GET** /api/v2/specialtytypes/simple | Get all Hospitals.
[**apiV2SpecialtytypesSlugGet**](SpecialtyTypesAPI.md#apiv2specialtytypesslugget) | **GET** /api/v2/specialtytypes/{slug} | 
[**apiV2SpecialtytypesSpecialtyTypeIdGet**](SpecialtyTypesAPI.md#apiv2specialtytypesspecialtytypeidget) | **GET** /api/v2/specialtytypes/{specialtyTypeId} | 
[**apiV2SpecialtytypesSpecialtyTypeIdMediasGet**](SpecialtyTypesAPI.md#apiv2specialtytypesspecialtytypeidmediasget) | **GET** /api/v2/specialtytypes/{specialtyTypeId}/medias | Get all SpecialtyTypeMedias.
[**apiV2SpecialtytypesSpecialtyTypeIdMediasMediaIdGet**](SpecialtyTypesAPI.md#apiv2specialtytypesspecialtytypeidmediasmediaidget) | **GET** /api/v2/specialtytypes/{specialtyTypeId}/medias/{mediaId} | Get SpecialtyTypeMedia.


# **apiV2SpecialtytypesGet**
```swift
    open class func apiV2SpecialtytypesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, hospitalId: UUID? = nil, created: Date? = nil, ids: [UUID]? = nil, specialtyTypeCategoryId: UUID? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: SpecialtyTypesModel?, _ error: Error?) -> Void)
```

Get all Departments.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let hospitalId = 987 // UUID |  (optional)
let created = Date() // Date |  (optional)
let ids = [123] // [UUID] |  (optional)
let specialtyTypeCategoryId = 987 // UUID |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let showHidden = true // Bool |  (optional)
let returnDefaultValue = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all Departments.
SpecialtyTypesAPI.apiV2SpecialtytypesGet(id: id, name: name, description: description, marketingType: marketingType, hospitalId: hospitalId, created: created, ids: ids, specialtyTypeCategoryId: specialtyTypeCategoryId, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **hospitalId** | **UUID** |  | [optional] 
 **created** | **Date** |  | [optional] 
 **ids** | [**[UUID]**](UUID.md) |  | [optional] 
 **specialtyTypeCategoryId** | **UUID** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **showHidden** | **Bool** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**SpecialtyTypesModel**](SpecialtyTypesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2SpecialtytypesSimpleGet**
```swift
    open class func apiV2SpecialtytypesSimpleGet(id: UUID? = nil, name: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, hospitalId: UUID? = nil, created: Date? = nil, ids: [UUID]? = nil, specialtyTypeCategoryId: UUID? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: SpecialtyTypesSimpleModel?, _ error: Error?) -> Void)
```

Get all Hospitals.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let description = "description_example" // String |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let hospitalId = 987 // UUID |  (optional)
let created = Date() // Date |  (optional)
let ids = [123] // [UUID] |  (optional)
let specialtyTypeCategoryId = 987 // UUID |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let showHidden = true // Bool |  (optional)
let returnDefaultValue = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all Hospitals.
SpecialtyTypesAPI.apiV2SpecialtytypesSimpleGet(id: id, name: name, description: description, marketingType: marketingType, hospitalId: hospitalId, created: created, ids: ids, specialtyTypeCategoryId: specialtyTypeCategoryId, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **hospitalId** | **UUID** |  | [optional] 
 **created** | **Date** |  | [optional] 
 **ids** | [**[UUID]**](UUID.md) |  | [optional] 
 **specialtyTypeCategoryId** | **UUID** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **showHidden** | **Bool** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**SpecialtyTypesSimpleModel**](SpecialtyTypesSimpleModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2SpecialtytypesSlugGet**
```swift
    open class func apiV2SpecialtytypesSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: SpecialtyTypeModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

// 
SpecialtyTypesAPI.apiV2SpecialtytypesSlugGet(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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

[**SpecialtyTypeModel**](SpecialtyTypeModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2SpecialtytypesSpecialtyTypeIdGet**
```swift
    open class func apiV2SpecialtytypesSpecialtyTypeIdGet(specialtyTypeId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: SpecialtyTypeModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyTypeId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

// 
SpecialtyTypesAPI.apiV2SpecialtytypesSpecialtyTypeIdGet(specialtyTypeId: specialtyTypeId, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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
 **specialtyTypeId** | **UUID** |  | 
 **languageCode** | **String** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 

### Return type

[**SpecialtyTypeModel**](SpecialtyTypeModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2SpecialtytypesSpecialtyTypeIdMediasGet**
```swift
    open class func apiV2SpecialtytypesSpecialtyTypeIdMediasGet(specialtyTypeId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: MediasModel?, _ error: Error?) -> Void)
```

Get all SpecialtyTypeMedias.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyTypeId = 987 // UUID | 
let id = 987 // UUID |  (optional)
let mediaType = MediaType() // MediaType |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all SpecialtyTypeMedias.
SpecialtyTypesAPI.apiV2SpecialtytypesSpecialtyTypeIdMediasGet(specialtyTypeId: specialtyTypeId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **specialtyTypeId** | **UUID** |  | 
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

# **apiV2SpecialtytypesSpecialtyTypeIdMediasMediaIdGet**
```swift
    open class func apiV2SpecialtytypesSpecialtyTypeIdMediasMediaIdGet(specialtyTypeId: UUID, mediaId: UUID, completion: @escaping (_ data: MediaModel?, _ error: Error?) -> Void)
```

Get SpecialtyTypeMedia.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let specialtyTypeId = 987 // UUID | 
let mediaId = 987 // UUID | 

// Get SpecialtyTypeMedia.
SpecialtyTypesAPI.apiV2SpecialtytypesSpecialtyTypeIdMediasMediaIdGet(specialtyTypeId: specialtyTypeId, mediaId: mediaId) { (response, error) in
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
 **specialtyTypeId** | **UUID** |  | 
 **mediaId** | **UUID** |  | 

### Return type

[**MediaModel**](MediaModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

