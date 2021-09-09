# QuestionCommentsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1QuestionsQuestionIdQuestioncommentsGet**](QuestionCommentsAPI.md#apiv1questionsquestionidquestioncommentsget) | **GET** /api/v1/questions/{questionId}/questioncomments | Get all questionComment.
[**apiV1QuestionsQuestionIdQuestioncommentsPost**](QuestionCommentsAPI.md#apiv1questionsquestionidquestioncommentspost) | **POST** /api/v1/questions/{questionId}/questioncomments | Create an questionComment.
[**apiV1QuestionsQuestionIdQuestioncommentsQuestionCommentIdDelete**](QuestionCommentsAPI.md#apiv1questionsquestionidquestioncommentsquestioncommentiddelete) | **DELETE** /api/v1/questions/{questionId}/questioncomments/{questionCommentId} | Delete questionComment.
[**apiV1QuestionsQuestionIdQuestioncommentsQuestionCommentIdGet**](QuestionCommentsAPI.md#apiv1questionsquestionidquestioncommentsquestioncommentidget) | **GET** /api/v1/questions/{questionId}/questioncomments/{questionCommentId} | Get questionComment.
[**apiV1QuestionsQuestionIdQuestioncommentsQuestionCommentIdPut**](QuestionCommentsAPI.md#apiv1questionsquestionidquestioncommentsquestioncommentidput) | **PUT** /api/v1/questions/{questionId}/questioncomments/{questionCommentId} | Update questionComment.


# **apiV1QuestionsQuestionIdQuestioncommentsGet**
```swift
    open class func apiV1QuestionsQuestionIdQuestioncommentsGet(questionId: UUID, id: UUID? = nil, userId: UUID? = nil, questionId2: UUID? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, completion: @escaping (_ data: QuestionCommentsViewModel?, _ error: Error?) -> Void)
```

Get all questionComment.

Sample request:        GET /api/v1/questionComment

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let questionId = 987 // UUID | 
let id = 987 // UUID |  (optional)
let userId = 987 // UUID |  (optional)
let questionId2 = 987 // UUID |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)
let current = true // Bool |  (optional)

// Get all questionComment.
QuestionCommentsAPI.apiV1QuestionsQuestionIdQuestioncommentsGet(questionId: questionId, id: id, userId: userId, questionId2: questionId2, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current) { (response, error) in
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
 **questionId** | [**UUID**](.md) |  | 
 **id** | [**UUID**](.md) |  | [optional] 
 **userId** | [**UUID**](.md) |  | [optional] 
 **questionId2** | [**UUID**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 
 **current** | **Bool** |  | [optional] 

### Return type

[**QuestionCommentsViewModel**](QuestionCommentsViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1QuestionsQuestionIdQuestioncommentsPost**
```swift
    open class func apiV1QuestionsQuestionIdQuestioncommentsPost(questionId: UUID, createQuestionCommentCommand: CreateQuestionCommentCommand? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Create an questionComment.

Sample request:        POST /api/v1/questions/1/questionComment      {          \"description\": \"This is a questionComment.\",          \"body\": \"questionComment body here\",          \"status\": \"Draft\",          \"hospitalId\": 1,          \"medias\": [            {              \"mediaType\": \"Photo\",              \"url\": \"string\",              \"thumbnailUrl\": \"string\",              \"description\": \"string\",              \"order\": 0            }          ]      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let questionId = 987 // UUID | 
let createQuestionCommentCommand = CreateQuestionCommentCommand(body: "body_example", medias: [MediaViewModel(id: 123, mediaType: MediaType(), url: "url_example", thumbnailUrl: "thumbnailUrl_example", description: "description_example", order: 123)]) // CreateQuestionCommentCommand |  (optional)

// Create an questionComment.
QuestionCommentsAPI.apiV1QuestionsQuestionIdQuestioncommentsPost(questionId: questionId, createQuestionCommentCommand: createQuestionCommentCommand) { (response, error) in
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
 **questionId** | [**UUID**](.md) |  | 
 **createQuestionCommentCommand** | [**CreateQuestionCommentCommand**](CreateQuestionCommentCommand.md) |  | [optional] 

### Return type

**UUID**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1QuestionsQuestionIdQuestioncommentsQuestionCommentIdDelete**
```swift
    open class func apiV1QuestionsQuestionIdQuestioncommentsQuestionCommentIdDelete(questionId: UUID, questionCommentId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete questionComment.

Sample request:        DELETE /api/v1/questions/1/questionComments/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let questionId = 987 // UUID | 
let questionCommentId = 987 // UUID | 

// Delete questionComment.
QuestionCommentsAPI.apiV1QuestionsQuestionIdQuestioncommentsQuestionCommentIdDelete(questionId: questionId, questionCommentId: questionCommentId) { (response, error) in
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
 **questionId** | [**UUID**](.md) |  | 
 **questionCommentId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1QuestionsQuestionIdQuestioncommentsQuestionCommentIdGet**
```swift
    open class func apiV1QuestionsQuestionIdQuestioncommentsQuestionCommentIdGet(questionId: UUID, questionCommentId: UUID, completion: @escaping (_ data: QuestionCommentViewModel?, _ error: Error?) -> Void)
```

Get questionComment.

Sample request:        GET /api/v1/questionComment/1

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let questionId = 987 // UUID | 
let questionCommentId = 987 // UUID | 

// Get questionComment.
QuestionCommentsAPI.apiV1QuestionsQuestionIdQuestioncommentsQuestionCommentIdGet(questionId: questionId, questionCommentId: questionCommentId) { (response, error) in
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
 **questionId** | [**UUID**](.md) |  | 
 **questionCommentId** | [**UUID**](.md) |  | 

### Return type

[**QuestionCommentViewModel**](QuestionCommentViewModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1QuestionsQuestionIdQuestioncommentsQuestionCommentIdPut**
```swift
    open class func apiV1QuestionsQuestionIdQuestioncommentsQuestionCommentIdPut(questionId: UUID, questionCommentId: UUID, updateQuestionCommentCommand: UpdateQuestionCommentCommand? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Update questionComment.

Sample request:        PUT /api/v1/questions/1/questionComments/1      {          \"QuestionTitle\": \"Question title\",          \"body\": \"updated questionComment body here\"      }

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let questionId = 987 // UUID | 
let questionCommentId = 987 // UUID | 
let updateQuestionCommentCommand = UpdateQuestionCommentCommand(body: "body_example", medias: [MediaViewModel(id: 123, mediaType: MediaType(), url: "url_example", thumbnailUrl: "thumbnailUrl_example", description: "description_example", order: 123)]) // UpdateQuestionCommentCommand |  (optional)

// Update questionComment.
QuestionCommentsAPI.apiV1QuestionsQuestionIdQuestioncommentsQuestionCommentIdPut(questionId: questionId, questionCommentId: questionCommentId, updateQuestionCommentCommand: updateQuestionCommentCommand) { (response, error) in
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
 **questionId** | [**UUID**](.md) |  | 
 **questionCommentId** | [**UUID**](.md) |  | 
 **updateQuestionCommentCommand** | [**UpdateQuestionCommentCommand**](UpdateQuestionCommentCommand.md) |  | [optional] 

### Return type

**Bool**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

