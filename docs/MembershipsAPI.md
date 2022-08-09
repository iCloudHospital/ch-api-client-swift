# MembershipsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2MembershipsGet**](MembershipsAPI.md#apiv2membershipsget) | **GET** /api/v2/memberships | Get all memberships.
[**apiV2MembershipsMembershipIdGet**](MembershipsAPI.md#apiv2membershipsmembershipidget) | **GET** /api/v2/memberships/{membershipId} | Get membership.
[**apiV2MembershipsMembershipIdMembersGet**](MembershipsAPI.md#apiv2membershipsmembershipidmembersget) | **GET** /api/v2/memberships/{membershipId}/members | Get all members.


# **apiV2MembershipsGet**
```swift
    open class func apiV2MembershipsGet(id: UUID? = nil, planId: UUID? = nil, planName: String? = nil, ownerId: UUID? = nil, ownerName: String? = nil, isActive: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: MembershipsModel?, _ error: Error?) -> Void)
```

Get all memberships.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let id = 987 // UUID |  (optional)
let planId = 987 // UUID |  (optional)
let planName = "planName_example" // String |  (optional)
let ownerId = 987 // UUID |  (optional)
let ownerName = "ownerName_example" // String |  (optional)
let isActive = true // Bool |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all memberships.
MembershipsAPI.apiV2MembershipsGet(id: id, planId: planId, planName: planName, ownerId: ownerId, ownerName: ownerName, isActive: isActive, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **planId** | [**UUID**](.md) |  | [optional] 
 **planName** | **String** |  | [optional] 
 **ownerId** | [**UUID**](.md) |  | [optional] 
 **ownerName** | **String** |  | [optional] 
 **isActive** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**MembershipsModel**](MembershipsModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2MembershipsMembershipIdGet**
```swift
    open class func apiV2MembershipsMembershipIdGet(membershipId: UUID, completion: @escaping (_ data: MembershipModel?, _ error: Error?) -> Void)
```

Get membership.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let membershipId = 987 // UUID | 

// Get membership.
MembershipsAPI.apiV2MembershipsMembershipIdGet(membershipId: membershipId) { (response, error) in
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
 **membershipId** | [**UUID**](.md) |  | 

### Return type

[**MembershipModel**](MembershipModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2MembershipsMembershipIdMembersGet**
```swift
    open class func apiV2MembershipsMembershipIdMembersGet(membershipId: UUID, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, completion: @escaping (_ data: MembersModel?, _ error: Error?) -> Void)
```

Get all members.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CloudHospitalClient

let membershipId = 987 // UUID | 
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)
let lastRetrieved = Date() // Date |  (optional)

// Get all members.
MembershipsAPI.apiV2MembershipsMembershipIdMembersGet(membershipId: membershipId, page: page, limit: limit, lastRetrieved: lastRetrieved) { (response, error) in
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
 **membershipId** | [**UUID**](.md) |  | 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **lastRetrieved** | **Date** |  | [optional] 

### Return type

[**MembersModel**](MembersModel.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

