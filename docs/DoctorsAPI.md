# DoctorsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2DoctorsDoctorIdCertificatesCertificateIdGet**](DoctorsAPI.md#apiv2doctorsdoctoridcertificatescertificateidget) | **GET** /api/v2/doctors/{doctorId}/certificates/{certificateId} | Get DoctorCertificate.
[**apiV2DoctorsDoctorIdCertificatesGet**](DoctorsAPI.md#apiv2doctorsdoctoridcertificatesget) | **GET** /api/v2/doctors/{doctorId}/certificates | Get All DoctorCertificate.
[**apiV2DoctorsDoctorIdEducationsEducationIdGet**](DoctorsAPI.md#apiv2doctorsdoctorideducationseducationidget) | **GET** /api/v2/doctors/{doctorId}/educations/{educationId} | Get DoctorEducation.
[**apiV2DoctorsDoctorIdEducationsGet**](DoctorsAPI.md#apiv2doctorsdoctorideducationsget) | **GET** /api/v2/doctors/{doctorId}/educations | Get all DoctorEducations.
[**apiV2DoctorsDoctorIdGet**](DoctorsAPI.md#apiv2doctorsdoctoridget) | **GET** /api/v2/doctors/{doctorId} | 
[**apiV2DoctorsDoctorIdLanguagesGet**](DoctorsAPI.md#apiv2doctorsdoctoridlanguagesget) | **GET** /api/v2/doctors/{doctorId}/languages | Get all DoctorLanguages.
[**apiV2DoctorsDoctorIdLanguagesLanguageIdGet**](DoctorsAPI.md#apiv2doctorsdoctoridlanguageslanguageidget) | **GET** /api/v2/doctors/{doctorId}/languages/{languageId} | Get DoctorLanguage.
[**apiV2DoctorsDoctorIdMediasGet**](DoctorsAPI.md#apiv2doctorsdoctoridmediasget) | **GET** /api/v2/doctors/{doctorId}/medias | Get all DoctorMedias.
[**apiV2DoctorsDoctorIdMediasMediaIdGet**](DoctorsAPI.md#apiv2doctorsdoctoridmediasmediaidget) | **GET** /api/v2/doctors/{doctorId}/medias/{mediaId} | Get DoctorMedia.
[**apiV2DoctorsDoctorIdPortfoliosGet**](DoctorsAPI.md#apiv2doctorsdoctoridportfoliosget) | **GET** /api/v2/doctors/{doctorId}/portfolios | Get All DoctorPortfolios
[**apiV2DoctorsDoctorIdPortfoliosPortfolioIdGet**](DoctorsAPI.md#apiv2doctorsdoctoridportfoliosportfolioidget) | **GET** /api/v2/doctors/{doctorId}/portfolios/{portfolioId} | Get DoctorPortfolio.
[**apiV2DoctorsDoctorIdSpecialtiesGet**](DoctorsAPI.md#apiv2doctorsdoctoridspecialtiesget) | **GET** /api/v2/doctors/{doctorId}/specialties | Get All DoctorSpecialties.
[**apiV2DoctorsDoctorIdSpecialtiesSpecialtyIdGet**](DoctorsAPI.md#apiv2doctorsdoctoridspecialtiesspecialtyidget) | **GET** /api/v2/doctors/{doctorId}/specialties/{specialtyId} | Get DoctorSpecialty
[**apiV2DoctorsGet**](DoctorsAPI.md#apiv2doctorsget) | **GET** /api/v2/doctors | Get all Doctors.
[**apiV2DoctorsSimpleGet**](DoctorsAPI.md#apiv2doctorssimpleget) | **GET** /api/v2/doctors/simple | Get all Doctors.


# **apiV2DoctorsDoctorIdCertificatesCertificateIdGet**
```swift
    open class func apiV2DoctorsDoctorIdCertificatesCertificateIdGet(doctorId: UUID, certificateId: UUID, completion: @escaping (_ data: DoctorCertificateModel?, _ error: Error?) -> Void)
```

Get DoctorCertificate.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let certificateId = 987 // UUID | 

// Get DoctorCertificate.
DoctorsAPI.apiV2DoctorsDoctorIdCertificatesCertificateIdGet(doctorId: doctorId, certificateId: certificateId) { (response, error) in
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
 **certificateId** | [**UUID**](.md) |  | 

### Return type

[**DoctorCertificateModel**](DoctorCertificateModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctorsDoctorIdCertificatesGet**
```swift
    open class func apiV2DoctorsDoctorIdCertificatesGet(doctorId: UUID, doctorName: String? = nil, certificateId: UUID? = nil, certificate: String? = nil, activeFrom: Date? = nil, activeTo: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: DoctorCertificatesModel?, _ error: Error?) -> Void)
```

Get All DoctorCertificate.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let doctorName = "doctorName_example" // String |  (optional)
let certificateId = 987 // UUID |  (optional)
let certificate = "certificate_example" // String |  (optional)
let activeFrom = Date() // Date |  (optional)
let activeTo = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get All DoctorCertificate.
DoctorsAPI.apiV2DoctorsDoctorIdCertificatesGet(doctorId: doctorId, doctorName: doctorName, certificateId: certificateId, certificate: certificate, activeFrom: activeFrom, activeTo: activeTo, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **doctorName** | **String** |  | [optional] 
 **certificateId** | [**UUID**](.md) |  | [optional] 
 **certificate** | **String** |  | [optional] 
 **activeFrom** | **Date** |  | [optional] 
 **activeTo** | **Date** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**DoctorCertificatesModel**](DoctorCertificatesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctorsDoctorIdEducationsEducationIdGet**
```swift
    open class func apiV2DoctorsDoctorIdEducationsEducationIdGet(doctorId: UUID, educationId: UUID, completion: @escaping (_ data: DoctorEducationModel?, _ error: Error?) -> Void)
```

Get DoctorEducation.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let educationId = 987 // UUID | 

// Get DoctorEducation.
DoctorsAPI.apiV2DoctorsDoctorIdEducationsEducationIdGet(doctorId: doctorId, educationId: educationId) { (response, error) in
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
 **educationId** | [**UUID**](.md) |  | 

### Return type

[**DoctorEducationModel**](DoctorEducationModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctorsDoctorIdEducationsGet**
```swift
    open class func apiV2DoctorsDoctorIdEducationsGet(doctorId: UUID, doctorName: String? = nil, educationId: UUID? = nil, institution: String? = nil, qualification: String? = nil, graduationDate: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: DoctorEducationsModel?, _ error: Error?) -> Void)
```

Get all DoctorEducations.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let doctorName = "doctorName_example" // String |  (optional)
let educationId = 987 // UUID |  (optional)
let institution = "institution_example" // String |  (optional)
let qualification = "qualification_example" // String |  (optional)
let graduationDate = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all DoctorEducations.
DoctorsAPI.apiV2DoctorsDoctorIdEducationsGet(doctorId: doctorId, doctorName: doctorName, educationId: educationId, institution: institution, qualification: qualification, graduationDate: graduationDate, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **doctorName** | **String** |  | [optional] 
 **educationId** | [**UUID**](.md) |  | [optional] 
 **institution** | **String** |  | [optional] 
 **qualification** | **String** |  | [optional] 
 **graduationDate** | **Date** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**DoctorEducationsModel**](DoctorEducationsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctorsDoctorIdGet**
```swift
    open class func apiV2DoctorsDoctorIdGet(doctorId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil, completion: @escaping (_ data: DoctorModel?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)
let returnDefaultValue = true // Bool |  (optional)

DoctorsAPI.apiV2DoctorsDoctorIdGet(doctorId: doctorId, languageCode: languageCode, returnDefaultValue: returnDefaultValue) { (response, error) in
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
 **languageCode** | **String** |  | [optional] 
 **returnDefaultValue** | **Bool** |  | [optional] 

### Return type

[**DoctorModel**](DoctorModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctorsDoctorIdLanguagesGet**
```swift
    open class func apiV2DoctorsDoctorIdLanguagesGet(doctorId: UUID, language: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: DoctorLanguagesModel?, _ error: Error?) -> Void)
```

Get all DoctorLanguages.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let language = "language_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all DoctorLanguages.
DoctorsAPI.apiV2DoctorsDoctorIdLanguagesGet(doctorId: doctorId, language: language, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **language** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**DoctorLanguagesModel**](DoctorLanguagesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctorsDoctorIdLanguagesLanguageIdGet**
```swift
    open class func apiV2DoctorsDoctorIdLanguagesLanguageIdGet(doctorId: UUID, languageId: UUID, completion: @escaping (_ data: DoctorLanguageModel?, _ error: Error?) -> Void)
```

Get DoctorLanguage.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let languageId = 987 // UUID | 

// Get DoctorLanguage.
DoctorsAPI.apiV2DoctorsDoctorIdLanguagesLanguageIdGet(doctorId: doctorId, languageId: languageId) { (response, error) in
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
 **languageId** | [**UUID**](.md) |  | 

### Return type

[**DoctorLanguageModel**](DoctorLanguageModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctorsDoctorIdMediasGet**
```swift
    open class func apiV2DoctorsDoctorIdMediasGet(doctorId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: MediasModel?, _ error: Error?) -> Void)
```

Get all DoctorMedias.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let id = 987 // UUID |  (optional)
let mediaType = MediaType() // MediaType |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all DoctorMedias.
DoctorsAPI.apiV2DoctorsDoctorIdMediasGet(doctorId: doctorId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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

# **apiV2DoctorsDoctorIdMediasMediaIdGet**
```swift
    open class func apiV2DoctorsDoctorIdMediasMediaIdGet(doctorId: UUID, mediaId: UUID, completion: @escaping (_ data: MediaModel?, _ error: Error?) -> Void)
```

Get DoctorMedia.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let mediaId = 987 // UUID | 

// Get DoctorMedia.
DoctorsAPI.apiV2DoctorsDoctorIdMediasMediaIdGet(doctorId: doctorId, mediaId: mediaId) { (response, error) in
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
 **mediaId** | [**UUID**](.md) |  | 

### Return type

[**MediaModel**](MediaModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctorsDoctorIdPortfoliosGet**
```swift
    open class func apiV2DoctorsDoctorIdPortfoliosGet(doctorId: UUID, doctorName: String? = nil, portfolioId: UUID? = nil, name: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: DoctorPortfoliosModel?, _ error: Error?) -> Void)
```

Get All DoctorPortfolios

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let doctorName = "doctorName_example" // String |  (optional)
let portfolioId = 987 // UUID |  (optional)
let name = "name_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get All DoctorPortfolios
DoctorsAPI.apiV2DoctorsDoctorIdPortfoliosGet(doctorId: doctorId, doctorName: doctorName, portfolioId: portfolioId, name: name, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **doctorName** | **String** |  | [optional] 
 **portfolioId** | [**UUID**](.md) |  | [optional] 
 **name** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**DoctorPortfoliosModel**](DoctorPortfoliosModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctorsDoctorIdPortfoliosPortfolioIdGet**
```swift
    open class func apiV2DoctorsDoctorIdPortfoliosPortfolioIdGet(doctorId: UUID, portfolioId: UUID, completion: @escaping (_ data: DoctorPortfolioModel?, _ error: Error?) -> Void)
```

Get DoctorPortfolio.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let portfolioId = 987 // UUID | 

// Get DoctorPortfolio.
DoctorsAPI.apiV2DoctorsDoctorIdPortfoliosPortfolioIdGet(doctorId: doctorId, portfolioId: portfolioId) { (response, error) in
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
 **portfolioId** | [**UUID**](.md) |  | 

### Return type

[**DoctorPortfolioModel**](DoctorPortfolioModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctorsDoctorIdSpecialtiesGet**
```swift
    open class func apiV2DoctorsDoctorIdSpecialtiesGet(doctorId: UUID, doctorName: String? = nil, specialtyId: UUID? = nil, specialtyName: String? = nil, languageCode: String? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: DoctorSpecialtiesModel?, _ error: Error?) -> Void)
```

Get All DoctorSpecialties.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let doctorName = "doctorName_example" // String |  (optional)
let specialtyId = 987 // UUID |  (optional)
let specialtyName = "specialtyName_example" // String |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get All DoctorSpecialties.
DoctorsAPI.apiV2DoctorsDoctorIdSpecialtiesGet(doctorId: doctorId, doctorName: doctorName, specialtyId: specialtyId, specialtyName: specialtyName, languageCode: languageCode, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **doctorName** | **String** |  | [optional] 
 **specialtyId** | [**UUID**](.md) |  | [optional] 
 **specialtyName** | **String** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**DoctorSpecialtiesModel**](DoctorSpecialtiesModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctorsDoctorIdSpecialtiesSpecialtyIdGet**
```swift
    open class func apiV2DoctorsDoctorIdSpecialtiesSpecialtyIdGet(doctorId: UUID, specialtyId: UUID, languageCode: String? = nil, completion: @escaping (_ data: DoctorSpecialtyModel?, _ error: Error?) -> Void)
```

Get DoctorSpecialty

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let doctorId = 987 // UUID | 
let specialtyId = 987 // UUID | 
let languageCode = "languageCode_example" // String |  (optional)

// Get DoctorSpecialty
DoctorsAPI.apiV2DoctorsDoctorIdSpecialtiesSpecialtyIdGet(doctorId: doctorId, specialtyId: specialtyId, languageCode: languageCode) { (response, error) in
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
 **specialtyId** | [**UUID**](.md) |  | 
 **languageCode** | **String** |  | [optional] 

### Return type

[**DoctorSpecialtyModel**](DoctorSpecialtyModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctorsGet**
```swift
    open class func apiV2DoctorsGet(hospitalId: UUID? = nil, hospitalName: String? = nil, ids: [UUID]? = nil, specialtyId: UUID? = nil, consultationEnabled: Bool? = nil, languageCode: String? = nil, id: UUID? = nil, fullname: String? = nil, email: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: DoctorsModel?, _ error: Error?) -> Void)
```

Get all Doctors.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let ids = [123] // [UUID] |  (optional)
let specialtyId = 987 // UUID |  (optional)
let consultationEnabled = true // Bool |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let id = 987 // UUID |  (optional)
let fullname = "fullname_example" // String |  (optional)
let email = "email_example" // String |  (optional)
let gender = Gender() // Gender |  (optional)
let dateOfBirth = Date() // Date |  (optional)
let created = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all Doctors.
DoctorsAPI.apiV2DoctorsGet(hospitalId: hospitalId, hospitalName: hospitalName, ids: ids, specialtyId: specialtyId, consultationEnabled: consultationEnabled, languageCode: languageCode, id: id, fullname: fullname, email: email, gender: gender, dateOfBirth: dateOfBirth, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **ids** | [**[UUID]**](UUID.md) |  | [optional] 
 **specialtyId** | [**UUID**](.md) |  | [optional] 
 **consultationEnabled** | **Bool** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **id** | [**UUID**](.md) |  | [optional] 
 **fullname** | **String** |  | [optional] 
 **email** | **String** |  | [optional] 
 **gender** | [**Gender**](.md) |  | [optional] 
 **dateOfBirth** | **Date** |  | [optional] 
 **created** | **Date** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**DoctorsModel**](DoctorsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2DoctorsSimpleGet**
```swift
    open class func apiV2DoctorsSimpleGet(hospitalId: UUID? = nil, hospitalName: String? = nil, ids: [UUID]? = nil, specialtyId: UUID? = nil, consultationEnabled: Bool? = nil, languageCode: String? = nil, id: UUID? = nil, fullname: String? = nil, email: String? = nil, gender: Gender? = nil, dateOfBirth: Date? = nil, created: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: DoctorsSimpleModel?, _ error: Error?) -> Void)
```

Get all Doctors.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID |  (optional)
let hospitalName = "hospitalName_example" // String |  (optional)
let ids = [123] // [UUID] |  (optional)
let specialtyId = 987 // UUID |  (optional)
let consultationEnabled = true // Bool |  (optional)
let languageCode = "languageCode_example" // String |  (optional)
let id = 987 // UUID |  (optional)
let fullname = "fullname_example" // String |  (optional)
let email = "email_example" // String |  (optional)
let gender = Gender() // Gender |  (optional)
let dateOfBirth = Date() // Date |  (optional)
let created = Date() // Date |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all Doctors.
DoctorsAPI.apiV2DoctorsSimpleGet(hospitalId: hospitalId, hospitalName: hospitalName, ids: ids, specialtyId: specialtyId, consultationEnabled: consultationEnabled, languageCode: languageCode, id: id, fullname: fullname, email: email, gender: gender, dateOfBirth: dateOfBirth, created: created, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **ids** | [**[UUID]**](UUID.md) |  | [optional] 
 **specialtyId** | [**UUID**](.md) |  | [optional] 
 **consultationEnabled** | **Bool** |  | [optional] 
 **languageCode** | **String** |  | [optional] 
 **id** | [**UUID**](.md) |  | [optional] 
 **fullname** | **String** |  | [optional] 
 **email** | **String** |  | [optional] 
 **gender** | [**Gender**](.md) |  | [optional] 
 **dateOfBirth** | **Date** |  | [optional] 
 **created** | **Date** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**DoctorsSimpleModel**](DoctorsSimpleModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

