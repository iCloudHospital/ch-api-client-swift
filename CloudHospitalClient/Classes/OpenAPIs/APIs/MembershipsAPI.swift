//
// MembershipsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MembershipsAPI {

    /**
     Get all memberships.
     
     - parameter id: (query)  (optional)
     - parameter planId: (query)  (optional)
     - parameter planName: (query)  (optional)
     - parameter ownerId: (query)  (optional)
     - parameter ownerName: (query)  (optional)
     - parameter isActive: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: AnyPublisher<MembershipsModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2MembershipsGet(id: UUID? = nil, planId: UUID? = nil, planName: String? = nil, ownerId: UUID? = nil, ownerName: String? = nil, isActive: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> AnyPublisher<MembershipsModel, Error> {
        var requestTask: RequestTask?
        return Future<MembershipsModel, Error> { promise in
            requestTask = apiV2MembershipsGetWithRequestBuilder(id: id, planId: planId, planName: planName, ownerId: ownerId, ownerName: ownerName, isActive: isActive, page: page, limit: limit, lastRetrieved: lastRetrieved).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Get all memberships.
     - GET /api/v2/memberships
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter id: (query)  (optional)
     - parameter planId: (query)  (optional)
     - parameter planName: (query)  (optional)
     - parameter ownerId: (query)  (optional)
     - parameter ownerName: (query)  (optional)
     - parameter isActive: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<MembershipsModel> 
     */
    open class func apiV2MembershipsGetWithRequestBuilder(id: UUID? = nil, planId: UUID? = nil, planName: String? = nil, ownerId: UUID? = nil, ownerName: String? = nil, isActive: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<MembershipsModel> {
        let localVariablePath = "/api/v2/memberships"
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(),
            "PlanId": planId?.encodeToJSON(),
            "PlanName": planName?.encodeToJSON(),
            "OwnerId": ownerId?.encodeToJSON(),
            "OwnerName": ownerName?.encodeToJSON(),
            "IsActive": isActive?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MembershipsModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get membership.
     
     - parameter membershipId: (path)  
     - returns: AnyPublisher<MembershipModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2MembershipsMembershipIdGet(membershipId: UUID) -> AnyPublisher<MembershipModel, Error> {
        var requestTask: RequestTask?
        return Future<MembershipModel, Error> { promise in
            requestTask = apiV2MembershipsMembershipIdGetWithRequestBuilder(membershipId: membershipId).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Get membership.
     - GET /api/v2/memberships/{membershipId}
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter membershipId: (path)  
     - returns: RequestBuilder<MembershipModel> 
     */
    open class func apiV2MembershipsMembershipIdGetWithRequestBuilder(membershipId: UUID) -> RequestBuilder<MembershipModel> {
        var localVariablePath = "/api/v2/memberships/{membershipId}"
        let membershipIdPreEscape = "\(APIHelper.mapValueToPathItem(membershipId))"
        let membershipIdPostEscape = membershipIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{membershipId}", with: membershipIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MembershipModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get all members.
     
     - parameter membershipId: (path)  
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: AnyPublisher<MembersModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2MembershipsMembershipIdMembersGet(membershipId: UUID, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> AnyPublisher<MembersModel, Error> {
        var requestTask: RequestTask?
        return Future<MembersModel, Error> { promise in
            requestTask = apiV2MembershipsMembershipIdMembersGetWithRequestBuilder(membershipId: membershipId, page: page, limit: limit, lastRetrieved: lastRetrieved).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Get all members.
     - GET /api/v2/memberships/{membershipId}/members
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter membershipId: (path)  
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<MembersModel> 
     */
    open class func apiV2MembershipsMembershipIdMembersGetWithRequestBuilder(membershipId: UUID, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<MembersModel> {
        var localVariablePath = "/api/v2/memberships/{membershipId}/members"
        let membershipIdPreEscape = "\(APIHelper.mapValueToPathItem(membershipId))"
        let membershipIdPostEscape = membershipIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{membershipId}", with: membershipIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "lastRetrieved": lastRetrieved?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MembersModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}