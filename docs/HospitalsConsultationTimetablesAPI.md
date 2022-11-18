# HospitalsConsultationTimetablesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2HospitalsHospitalIdConsultationtimetablesGet**](HospitalsConsultationTimetablesAPI.md#apiv2hospitalshospitalidconsultationtimetablesget) | **GET** /api/v2/hospitals/{hospitalId}/consultationtimetables | Get hospital consultation timetables by hospitalId


# **apiV2HospitalsHospitalIdConsultationtimetablesGet**
```swift
    open class func apiV2HospitalsHospitalIdConsultationtimetablesGet(hospitalId: UUID, year: Int? = nil, month: Int? = nil, timeZone: String? = nil, consultationIdExcluded: UUID? = nil, completion: @escaping (_ data: ConsultationTimetableModel?, _ error: Error?) -> Void)
```

Get hospital consultation timetables by hospitalId

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let year = 987 // Int |  (optional)
let month = 987 // Int |  (optional)
let timeZone = "timeZone_example" // String |  (optional)
let consultationIdExcluded = 987 // UUID |  (optional)

// Get hospital consultation timetables by hospitalId
HospitalsConsultationTimetablesAPI.apiV2HospitalsHospitalIdConsultationtimetablesGet(hospitalId: hospitalId, year: year, month: month, timeZone: timeZone, consultationIdExcluded: consultationIdExcluded) { (response, error) in
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
 **hospitalId** | **UUID** |  | 
 **year** | **Int** |  | [optional] 
 **month** | **Int** |  | [optional] 
 **timeZone** | **String** |  | [optional] 
 **consultationIdExcluded** | **UUID** |  | [optional] 

### Return type

[**ConsultationTimetableModel**](ConsultationTimetableModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

