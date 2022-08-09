# DoctorAffiliationsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2DoctoraffiliationsDoctorAffiliationIdMediasGet**](DoctorAffiliationsAPI.md#apiv2doctoraffiliationsdoctoraffiliationidmediasget) | **GET** /api/v2/doctoraffiliations/{doctorAffiliationId}/medias | Get all DoctorAffiliationMedias.
[**apiV2DoctoraffiliationsDoctorAffiliationIdMediasMediaIdGet**](DoctorAffiliationsAPI.md#apiv2doctoraffiliationsdoctoraffiliationidmediasmediaidget) | **GET** /api/v2/doctoraffiliations/{doctorAffiliationId}/medias/{mediaId} | Get DoctorAffiliationMedia.
[**apiV2DoctoraffiliationsGet**](DoctorAffiliationsAPI.md#apiv2doctoraffiliationsget) | **GET** /api/v2/doctoraffiliations | Get all doctor affiliations.
[**apiV2DoctoraffiliationsIdGet**](DoctorAffiliationsAPI.md#apiv2doctoraffiliationsidget) | **GET** /api/v2/doctoraffiliations/{id} | Get doctor affiliation.
[**apiV2DoctoraffiliationsSlugGet**](DoctorAffiliationsAPI.md#apiv2doctoraffiliationsslugget) | **GET** /api/v2/doctoraffiliations/{slug} | 


# **apiV2DoctoraffiliationsDoctorAffiliationIdMediasGet**
```swift
    open class func apiV2DoctoraffiliationsDoctorAffiliationIdMediasGet(doctorAffiliationId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: MediasModel?, _ error: Error?) -> Void)
```

Get all DoctorAffiliationMedias.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorAffiliationId = 987 // UUID | 
let id = 987 // UUID |  (optional)
let mediaType = MediaType() // MediaType |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all DoctorAffiliationMedias.
DoctorAffiliationsAPI.apiV2DoctoraffiliationsDoctorAffiliationIdMediasGet(doctorAffiliationId: doctorAffiliationId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **doctorAffiliationId** | [**UUID**](.md) |  | 
 **id** | [**UUID**](.md) |  | [optional] 
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

# **apiV2DoctoraffiliationsDoctorAffiliationIdMediasMediaIdGet**
```swift
    open class func apiV2DoctoraffiliationsDoctorAffiliationIdMediasMediaIdGet(doctorAffiliationId: UUID, mediaId: UUID, completion: @escaping (_ data: MediaModel?, _ error: Error?) -> Void)
```

Get DoctorAffiliationMedia.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorAffiliationId = 987 // UUID | 
let mediaId = 987 // UUID | 

// Get DoctorAffiliationMedia.
DoctorAffiliationsAPI.apiV2DoctoraffiliationsDoctorAffiliationIdMediasMediaIdGet(doctorAffiliationId: doctorAffiliationId, mediaId: mediaId) { (response, error) in
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
 **doctorAffiliationId** | [**UUID**](.md) |  | 
 **mediaId** | [**UUID**](.md) |  | 

### Return type

[**MediaModel**](MediaModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctoraffiliationsGet**
```swift
    open class func apiV2DoctoraffiliationsGet(hospitalId: UUID? = nil, hospitalName: String? = nil, doctorId: UUID? = nil, doctorName: String? = nil, doctorSlug: String? = nil, specialtyId: UUID? = nil, exceptDoctorId: UUID? = nil, consultationEnabled: Bool? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: DoctorAffiliationsModel?, _ error: Error?) -> Void)
```

Get all doctor affiliations.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let doctorId = 987 // UUID |  (optional)
let doctorName = "doctorName_example" // String |  (optional)
let doctorSlug = "doctorSlug_example" // String |  (optional)
let specialtyId = 987 // UUID |  (optional)
let exceptDoctorId = 987 // UUID |  (optional)
let consultationEnabled = true // Bool |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all doctor affiliations.
DoctorAffiliationsAPI.apiV2DoctoraffiliationsGet(hospitalId: hospitalId, hospitalName: hospitalName, doctorId: doctorId, doctorName: doctorName, doctorSlug: doctorSlug, specialtyId: specialtyId, exceptDoctorId: exceptDoctorId, consultationEnabled: consultationEnabled, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **hospitalId** | [**UUID**](.md) |  | [optional] 
 **hospitalName** | **String** |  | [optional] 
 **doctorId** | [**UUID**](.md) |  | [optional] 
 **doctorName** | **String** |  | [optional] 
 **doctorSlug** | **String** |  | [optional] 
 **specialtyId** | [**UUID**](.md) |  | [optional] 
 **exceptDoctorId** | [**UUID**](.md) |  | [optional] 
 **consultationEnabled** | **Bool** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**DoctorAffiliationsModel**](DoctorAffiliationsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctoraffiliationsIdGet**
```swift
    open class func apiV2DoctoraffiliationsIdGet(id: UUID, languageCode: String? = nil, completion: @escaping (_ data: DoctorAffiliationModel?, _ error: Error?) -> Void)
```

Get doctor affiliation.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)

// Get doctor affiliation.
DoctorAffiliationsAPI.apiV2DoctoraffiliationsIdGet(id: id, languageCode: languageCode) { (response, error) in
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
 **id** | [**UUID**](.md) |  | 
 **languageCode** | **String** |  | [optional] 

### Return type

[**DoctorAffiliationModel**](DoctorAffiliationModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctoraffiliationsSlugGet**
```swift
    open class func apiV2DoctoraffiliationsSlugGet(slug: String, languageCode: String? = nil, completion: @escaping (_ data: DoctorAffiliationModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional)

DoctorAffiliationsAPI.apiV2DoctoraffiliationsSlugGet(slug: slug, languageCode: languageCode) { (response, error) in
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

### Return type

[**DoctorAffiliationModel**](DoctorAffiliationModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

