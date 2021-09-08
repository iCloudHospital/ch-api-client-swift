# SurveysAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1SurveysIdGet**](SurveysAPI.md#apiv1surveysidget) | **GET** /api/v1/surveys/{id} | Get the survey.
[**apiV1SurveysPost**](SurveysAPI.md#apiv1surveyspost) | **POST** /api/v1/surveys | Create user&#39;s survey response.


# **apiV1SurveysIdGet**
```swift
    open class func apiV1SurveysIdGet(id: UUID, completion: @escaping (_ data: SurveyModel?, _ error: Error?) -> Void)
```

Get the survey.

Sample request:        GET: /api/v1/surveys/29e54730-783f-40ed-b1e1-56db817c73e2

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID | 

// Get the survey.
SurveysAPI.apiV1SurveysIdGet(id: id) { (response, error) in
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

### Return type

[**SurveyModel**](SurveyModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1SurveysPost**
```swift
    open class func apiV1SurveysPost(createSurveyResponseCommand: CreateSurveyResponseCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Create user's survey response.

Sample request:        POST: /api/v1/surveys      {          \"surveyId\": \"29e54730-783f-40ed-b1e1-56db817c73e2\",          \"answers\": \"[{ ... }]\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let createSurveyResponseCommand = CreateSurveyResponseCommand(surveyId: 123, answers: "answers_example") // CreateSurveyResponseCommand |  (optional)

// Create user's survey response.
SurveysAPI.apiV1SurveysPost(createSurveyResponseCommand: createSurveyResponseCommand) { (response, error) in
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
 **createSurveyResponseCommand** | [**CreateSurveyResponseCommand**](CreateSurveyResponseCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

