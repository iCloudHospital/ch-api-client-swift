# QuestionsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1HospitalsHospitalIdQuestionsPost**](QuestionsAPI.md#apiv1hospitalshospitalidquestionspost) | **POST** /api/v1/hospitals/{hospitalId}/questions | Create an question.
[**apiV1HospitalsHospitalIdQuestionsQuestionIdDelete**](QuestionsAPI.md#apiv1hospitalshospitalidquestionsquestioniddelete) | **DELETE** /api/v1/hospitals/{hospitalId}/questions/{questionId} | Delete question.
[**apiV1HospitalsHospitalIdQuestionsQuestionIdGet**](QuestionsAPI.md#apiv1hospitalshospitalidquestionsquestionidget) | **GET** /api/v1/hospitals/{hospitalId}/questions/{questionId} | Get question.
[**apiV1HospitalsHospitalIdQuestionsQuestionIdPut**](QuestionsAPI.md#apiv1hospitalshospitalidquestionsquestionidput) | **PUT** /api/v1/hospitals/{hospitalId}/questions/{questionId} | Update question.
[**apiV1HospitalsQuestionsGet**](QuestionsAPI.md#apiv1hospitalsquestionsget) | **GET** /api/v1/hospitals/questions | Get all questions.


# **apiV1HospitalsHospitalIdQuestionsPost**
```swift
    open class func apiV1HospitalsHospitalIdQuestionsPost(hospitalId: UUID, createQuestionCommand: CreateQuestionCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create an question.

Sample request:        POST /api/v1/hospitals/1/questions      {          \"title\": \"Hospital question\",          \"description\": \"This is a question.\",          \"body\": \"question body here\",          \"status\": \"Draft\",          \"hospitalId\": 1,          \"tags\": [            {              \"value\": \"string\",              \"order\": 0              }          ],          \"medias\": [            {              \"mediaType\": \"Photo\",              \"url\": \"string\",              \"thumbnailUrl\": \"string\",              \"description\": \"string\",              \"order\": 0            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let createQuestionCommand = CreateQuestionCommand(title: "title_example", body: "body_example", questionType: QuestionType(), questionStatus: QuestionStatus(), dealPackageId: 123, quantity: 123, medias: [MediaViewModel(id: 123, mediaType: MediaType(), url: "url_example", thumbnailUrl: "thumbnailUrl_example", description: "description_example", order: 123)]) // CreateQuestionCommand |  (optional)

// Create an question.
QuestionsAPI.apiV1HospitalsHospitalIdQuestionsPost(hospitalId: hospitalId, createQuestionCommand: createQuestionCommand) { (response, error) in
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
 **createQuestionCommand** | [**CreateQuestionCommand**](CreateQuestionCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdQuestionsQuestionIdDelete**
```swift
    open class func apiV1HospitalsHospitalIdQuestionsQuestionIdDelete(hospitalId: UUID, questionId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete question.

Sample request:        DELETE /api/v1/hospitals/1/questions/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let questionId = 987 // UUID | 

// Delete question.
QuestionsAPI.apiV1HospitalsHospitalIdQuestionsQuestionIdDelete(hospitalId: hospitalId, questionId: questionId) { (response, error) in
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
 **questionId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdQuestionsQuestionIdGet**
```swift
    open class func apiV1HospitalsHospitalIdQuestionsQuestionIdGet(hospitalId: UUID, questionId: UUID, completion: @escaping (_ data: QuestionViewModel?, _ error: Error?) -> Void)
```

Get question.

Sample request:        GET /api/v1/hospitals/1/questions/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let questionId = 987 // UUID | 

// Get question.
QuestionsAPI.apiV1HospitalsHospitalIdQuestionsQuestionIdGet(hospitalId: hospitalId, questionId: questionId) { (response, error) in
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
 **questionId** | [**UUID**](.md) |  | 

### Return type

[**QuestionViewModel**](QuestionViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsHospitalIdQuestionsQuestionIdPut**
```swift
    open class func apiV1HospitalsHospitalIdQuestionsQuestionIdPut(hospitalId: UUID, questionId: UUID, updateQuestionCommand: UpdateQuestionCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update question.

Sample request:        PUT /api/v1/hospitals/1/questions/1      {          \"title\": \"Samsung Hospital\",          \"description\": \"This is an question.\",          \"body\": \"updated question body here\",          \"status\": \"Draft\",          \"hospitalId\": 1,        ///                   \"medias\": [            {              \"mediaType\": \"Photo\",              \"url\": \"string\",              \"thumbnailUrl\": \"string\",              \"description\": \"string\",              \"order\": 0            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let hospitalId = 987 // UUID | 
let questionId = 987 // UUID | 
let updateQuestionCommand = UpdateQuestionCommand(title: "title_example", body: "body_example", questionType: QuestionType(), questionStatus: QuestionStatus(), medias: [MediaViewModel(id: 123, mediaType: MediaType(), url: "url_example", thumbnailUrl: "thumbnailUrl_example", description: "description_example", order: 123)]) // UpdateQuestionCommand |  (optional)

// Update question.
QuestionsAPI.apiV1HospitalsHospitalIdQuestionsQuestionIdPut(hospitalId: hospitalId, questionId: questionId, updateQuestionCommand: updateQuestionCommand) { (response, error) in
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
 **questionId** | [**UUID**](.md) |  | 
 **updateQuestionCommand** | [**UpdateQuestionCommand**](UpdateQuestionCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1HospitalsQuestionsGet**
```swift
    open class func apiV1HospitalsQuestionsGet(id: UUID? = nil, title: String? = nil, hospitalId: UUID? = nil, patientId: UUID? = nil, questionType: QuestionType? = nil, questionStatus: QuestionStatus? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: QuestionsViewModel?, _ error: Error?) -> Void)
```

Get all questions.

Sample request:        GET /api/v1/hospitals/1/questions

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let title = "title_example" // String |  (optional)
let hospitalId = 987 // UUID |  (optional)
let patientId = 987 // UUID |  (optional)
let questionType = QuestionType() // QuestionType |  (optional)
let questionStatus = QuestionStatus() // QuestionStatus |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all questions.
QuestionsAPI.apiV1HospitalsQuestionsGet(id: id, title: title, hospitalId: hospitalId, patientId: patientId, questionType: questionType, questionStatus: questionStatus, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **title** | **String** |  | [optional] 
 **hospitalId** | [**UUID**](.md) |  | [optional] 
 **patientId** | [**UUID**](.md) |  | [optional] 
 **questionType** | [**QuestionType**](.md) |  | [optional] 
 **questionStatus** | [**QuestionStatus**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**QuestionsViewModel**](QuestionsViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

