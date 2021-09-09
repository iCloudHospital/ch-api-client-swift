# DoctorsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1DoctorsDoctorIdDelete**](DoctorsAPI.md#apiv1doctorsdoctoriddelete) | **DELETE** /api/v1/doctors/{doctorId} | Delete doctor.
[**apiV1DoctorsDoctorIdGet**](DoctorsAPI.md#apiv1doctorsdoctoridget) | **GET** /api/v1/doctors/{doctorId} | Get hospital doctor.
[**apiV1DoctorsDoctorIdPut**](DoctorsAPI.md#apiv1doctorsdoctoridput) | **PUT** /api/v1/doctors/{doctorId} | Update hospital doctor.
[**apiV1DoctorsGet**](DoctorsAPI.md#apiv1doctorsget) | **GET** /api/v1/doctors | Get all hospital doctors.
[**apiV1DoctorsPost**](DoctorsAPI.md#apiv1doctorspost) | **POST** /api/v1/doctors | Create hospital doctor.
[**apiV1DoctorsSlugsSlugGet**](DoctorsAPI.md#apiv1doctorsslugsslugget) | **GET** /api/v1/doctors/slugs/{slug} | Get hospital doctor by slug.


# **apiV1DoctorsDoctorIdDelete**
```swift
    open class func apiV1DoctorsDoctorIdDelete(doctorId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete doctor.

Sample request:        DELETE /api/v1/doctors/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 

// Delete doctor.
DoctorsAPI.apiV1DoctorsDoctorIdDelete(doctorId: doctorId) { (response, error) in
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
 **doctorId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DoctorsDoctorIdGet**
```swift
    open class func apiV1DoctorsDoctorIdGet(doctorId: UUID, languageCode: String? = nil, completion: @escaping (_ data: DoctorViewModel?, _ error: Error?) -> Void)
```

Get hospital doctor.

Sample request:        GET /api/v1/doctors/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional) (default to "")

// Get hospital doctor.
DoctorsAPI.apiV1DoctorsDoctorIdGet(doctorId: doctorId, languageCode: languageCode) { (response, error) in
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
 **doctorId** | [**UUID**](.md) |  | 
 **languageCode** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**DoctorViewModel**](DoctorViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DoctorsDoctorIdPut**
```swift
    open class func apiV1DoctorsDoctorIdPut(doctorId: UUID, updateDoctorCommand: UpdateDoctorCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update hospital doctor.

Sample request:        PUT /api/v1/doctors/1      {          \"firstName\": \"string\",          \"lastName\": \"string\",          \"photo\": \"string\",          \"locations\": [            {              \"locationType\": \"LivesIn\",              \"latitude\": 0,              \"longitude\": 0,              \"country\": \"string\",              \"state\": \"string\",              \"county\": \"string\",              \"city\": \"string\",              \"zipCode\": \"string\",              \"address\": \"string\"            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let updateDoctorCommand = UpdateDoctorCommand(firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), languages: [UserLanguageViewModel(id: 123, language: "language_example")], locations: [UserLocationViewModel(latitude: 123, longitude: 123, country: "country_example", state: "state_example", county: "county_example", city: "city_example", zipCode: "zipCode_example", address: "address_example", locationType: UserLocationType())], startPracticeDate: Date(), overview: "overview_example", consultationEnabled: false, consultationFee: 123, doctorEducations: [DoctorEducationItemViewModel(id: 123, doctorId: 123, doctorName: "doctorName_example", institution: "institution_example", qualification: "qualification_example", graduationDate: Date(), graduationYear: 123, graduationMonth: 123)], doctorPortfolios: [DoctorPortfolioItemViewModel(id: 123, doctorId: 123, doctorName: "doctorName_example", name: "name_example", description: "description_example", photoBefore: "photoBefore_example", photoAfter: "photoAfter_example")], doctorSpecialties: [DoctorSpecialtyItemViewModel(specialtyId: 123, specialtyName: "specialtyName_example", specialtySlug: "specialtySlug_example", specialtyTypeId: 123, specialtyTypeName: "specialtyTypeName_example", order: 123)], doctorCertificates: [DoctorCertificateItemViewModel(id: 123, doctorId: 123, doctorName: "doctorName_example", certificate: "certificate_example", activeFrom: Date(), activeTo: Date())], doctorAwards: [AwardViewModel(id: 123, name: "name_example", image: "image_example", date: Date())]) // UpdateDoctorCommand |  (optional)

// Update hospital doctor.
DoctorsAPI.apiV1DoctorsDoctorIdPut(doctorId: doctorId, updateDoctorCommand: updateDoctorCommand) { (response, error) in
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
 **doctorId** | [**UUID**](.md) |  | 
 **updateDoctorCommand** | [**UpdateDoctorCommand**](UpdateDoctorCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DoctorsGet**
```swift
    open class func apiV1DoctorsGet(countryId: UUID? = nil, hospitalId: UUID? = nil, marketingType: MarketingType? = nil, specialtyId: UUID? = nil, specialtyTypeId: UUID? = nil, consultationEnabled: Bool? = nil, exceptDoctorId: UUID? = nil, exceptDoctorIds: [UUID]? = nil, languageCode: String? = nil, ids: [UUID]? = nil, id: UUID? = nil, fullname: String? = nil, email: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: DoctorsViewModel?, _ error: Error?) -> Void)
```

Get all hospital doctors.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let countryId = 987 // UUID |  (optional)
let hospitalId = 987 // UUID |  (optional)
let marketingType = MarketingType() // MarketingType |  (optional)
let specialtyId = 987 // UUID |  (optional)
let specialtyTypeId = 987 // UUID |  (optional)
let consultationEnabled = true // Bool |  (optional)
let exceptDoctorId = 987 // UUID |  (optional)
let exceptDoctorIds = [123] // [UUID] |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let ids = [123] // [UUID] |  (optional)
let id = 987 // UUID |  (optional)
let fullname = "fullname_example" // String |  (optional)
let email = "email_example" // String |  (optional)
let gender = Gender() // Gender |  (optional)
let dateOfBirth = Date() // Date |  (optional)
let created = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all hospital doctors.
DoctorsAPI.apiV1DoctorsGet(countryId: countryId, hospitalId: hospitalId, marketingType: marketingType, specialtyId: specialtyId, specialtyTypeId: specialtyTypeId, consultationEnabled: consultationEnabled, exceptDoctorId: exceptDoctorId, exceptDoctorIds: exceptDoctorIds, languageCode: languageCode, ids: ids, id: id, fullname: fullname, email: email, gender: gender, dateOfBirth: dateOfBirth, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **countryId** | [**UUID**](.md) |  | [optional] 
 **hospitalId** | [**UUID**](.md) |  | [optional] 
 **marketingType** | [**MarketingType**](.md) |  | [optional] 
 **specialtyId** | [**UUID**](.md) |  | [optional] 
 **specialtyTypeId** | [**UUID**](.md) |  | [optional] 
 **consultationEnabled** | **Bool** |  | [optional] 
 **exceptDoctorId** | [**UUID**](.md) |  | [optional] 
 **exceptDoctorIds** | [**[UUID]**](UUID.md) |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **ids** | [**[UUID]**](UUID.md) |  | [optional] 
 **id** | [**UUID**](.md) |  | [optional] 
 **fullname** | **String** |  | [optional] 
 **email** | **String** |  | [optional] 
 **gender** | [**Gender**](.md) |  | [optional] 
 **dateOfBirth** | **Date** |  | [optional] 
 **created** | **Date** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**DoctorsViewModel**](DoctorsViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DoctorsPost**
```swift
    open class func apiV1DoctorsPost(createDoctorCommand: CreateDoctorCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create hospital doctor.

Sample request:        POST /api/v1/doctors      {          \"userName\": \"cloudDoctor\",          \"email\": \"doctor@icloudhospital.com\",          \"hospitalId\": 1,          \"firstName\": \"cloud\",          \"lastName\": \"doctor\",          \"photo\": \"string\",          \"photoThumbnail\": \"string\",          \"gender\": \"NotSpecified\",          \"dateOfBirth\": \"2020-02-22T17:57:32.048Z\",          \"locations\": [            {              \"locationType\": \"LivesIn\",              \"latitude\": 0,              \"longitude\": 0,              \"country\": \"string\",              \"state\": \"string\",              \"county\": \"string\",              \"city\": \"string\",              \"zipCode\": \"string\",              \"address\": \"string\"            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createDoctorCommand = CreateDoctorCommand(firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", photo: "photo_example", photoThumbnail: "photoThumbnail_example", gender: Gender(), dateOfBirth: Date(), medias: [MediaViewModel(id: 123, mediaType: MediaType(), url: "url_example", thumbnailUrl: "thumbnailUrl_example", description: "description_example", order: 123)], languages: [UserLanguageViewModel(id: 123, language: "language_example")], locations: [UserLocationViewModel(latitude: 123, longitude: 123, country: "country_example", state: "state_example", county: "county_example", city: "city_example", zipCode: "zipCode_example", address: "address_example", locationType: UserLocationType())], userName: "userName_example", email: "email_example", hospitalId: 123, consultationEnabled: false, consultationFee: 123, educations: [DoctorEducationViewModel(id: 123, doctorId: 123, doctorName: "doctorName_example", institution: "institution_example", qualification: "qualification_example", graduationDate: Date(), graduationYear: 123, graduationMonth: 123)], portfolios: [DoctorPortfolioViewModel(id: 123, doctorId: 123, doctorName: "doctorName_example", name: "name_example", description: "description_example", photoBefore: "photoBefore_example", photoAfter: "photoAfter_example")], specialties: [DoctorSpecialtyViewModel(specialtyId: 123, specialtyName: "specialtyName_example", specialtySlug: "specialtySlug_example", specialtyTypeId: 123, specialtyTypeName: "specialtyTypeName_example", order: 123, doctorId: 123, doctorName: "doctorName_example")], certificates: [DoctorCertificateViewModel(id: 123, doctorId: 123, doctorName: "doctorName_example", certificate: "certificate_example", activeFrom: Date(), activeTo: Date())], awards: [AwardViewModel(id: 123, name: "name_example", image: "image_example", date: Date())]) // CreateDoctorCommand |  (optional)

// Create hospital doctor.
DoctorsAPI.apiV1DoctorsPost(createDoctorCommand: createDoctorCommand) { (response, error) in
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
 **createDoctorCommand** | [**CreateDoctorCommand**](CreateDoctorCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DoctorsSlugsSlugGet**
```swift
    open class func apiV1DoctorsSlugsSlugGet(slug: String, languageCode: String? = nil, completion: @escaping (_ data: DoctorViewModel?, _ error: Error?) -> Void)
```

Get hospital doctor by slug.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let slug = "slug_example" // String | 
let languageCode = "languageCode_example" // String |  (optional) (default to "")

// Get hospital doctor by slug.
DoctorsAPI.apiV1DoctorsSlugsSlugGet(slug: slug, languageCode: languageCode) { (response, error) in
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
 **languageCode** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**DoctorViewModel**](DoctorViewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

