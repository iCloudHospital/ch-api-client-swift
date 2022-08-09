//
// SpecialtyTypesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Combine



open class SpecialtyTypesAPI {
    /**
     Get all Departments.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter ids: (query)  (optional)
     - parameter specialtyTypeCategoryId: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SpecialtyTypesModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2SpecialtytypesGet(id: UUID? = nil, name: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, hospitalId: UUID? = nil, created: Date? = nil, ids: [UUID]? = nil, specialtyTypeCategoryId: UUID? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<SpecialtyTypesModel, Error> {
        return Future<SpecialtyTypesModel, Error>.init { promise in
            apiV2SpecialtytypesGetWithRequestBuilder(id: id, name: name, description: description, marketingType: marketingType, hospitalId: hospitalId, created: created, ids: ids, specialtyTypeCategoryId: specialtyTypeCategoryId, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     Get all Departments.
     - GET /api/v2/specialtytypes
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter ids: (query)  (optional)
     - parameter specialtyTypeCategoryId: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<SpecialtyTypesModel> 
     */
    open class func apiV2SpecialtytypesGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, hospitalId: UUID? = nil, created: Date? = nil, ids: [UUID]? = nil, specialtyTypeCategoryId: UUID? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<SpecialtyTypesModel> {
        let path = "/api/v2/specialtytypes"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(), 
            "Name": name?.encodeToJSON(), 
            "Description": description?.encodeToJSON(), 
            "MarketingType": marketingType?.encodeToJSON(), 
            "HospitalId": hospitalId?.encodeToJSON(), 
            "Created": created?.encodeToJSON(), 
            "Ids": ids?.encodeToJSON(), 
            "SpecialtyTypeCategoryId": specialtyTypeCategoryId?.encodeToJSON(), 
            "LanguageCode": languageCode?.encodeToJSON(), 
            "ShowHidden": showHidden?.encodeToJSON(), 
            "ReturnDefaultValue": returnDefaultValue?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<SpecialtyTypesModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all Hospitals.
     
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter ids: (query)  (optional)
     - parameter specialtyTypeCategoryId: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SpecialtyTypesSimpleModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2SpecialtytypesSimpleGet(id: UUID? = nil, name: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, hospitalId: UUID? = nil, created: Date? = nil, ids: [UUID]? = nil, specialtyTypeCategoryId: UUID? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<SpecialtyTypesSimpleModel, Error> {
        return Future<SpecialtyTypesSimpleModel, Error>.init { promise in
            apiV2SpecialtytypesSimpleGetWithRequestBuilder(id: id, name: name, description: description, marketingType: marketingType, hospitalId: hospitalId, created: created, ids: ids, specialtyTypeCategoryId: specialtyTypeCategoryId, languageCode: languageCode, showHidden: showHidden, returnDefaultValue: returnDefaultValue, page: page, limit: limit, lastRetrieved: lastRetrieved).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     Get all Hospitals.
     - GET /api/v2/specialtytypes/simple
     - parameter id: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter description: (query)  (optional)
     - parameter marketingType: (query)  (optional)
     - parameter hospitalId: (query)  (optional)
     - parameter created: (query)  (optional)
     - parameter ids: (query)  (optional)
     - parameter specialtyTypeCategoryId: (query)  (optional)
     - parameter languageCode: (query)  (optional)
     - parameter showHidden: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<SpecialtyTypesSimpleModel> 
     */
    open class func apiV2SpecialtytypesSimpleGetWithRequestBuilder(id: UUID? = nil, name: String? = nil, description: String? = nil, marketingType: MarketingType? = nil, hospitalId: UUID? = nil, created: Date? = nil, ids: [UUID]? = nil, specialtyTypeCategoryId: UUID? = nil, languageCode: String? = nil, showHidden: Bool? = nil, returnDefaultValue: Bool? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<SpecialtyTypesSimpleModel> {
        let path = "/api/v2/specialtytypes/simple"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(), 
            "Name": name?.encodeToJSON(), 
            "Description": description?.encodeToJSON(), 
            "MarketingType": marketingType?.encodeToJSON(), 
            "HospitalId": hospitalId?.encodeToJSON(), 
            "Created": created?.encodeToJSON(), 
            "Ids": ids?.encodeToJSON(), 
            "SpecialtyTypeCategoryId": specialtyTypeCategoryId?.encodeToJSON(), 
            "LanguageCode": languageCode?.encodeToJSON(), 
            "ShowHidden": showHidden?.encodeToJSON(), 
            "ReturnDefaultValue": returnDefaultValue?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<SpecialtyTypesSimpleModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SpecialtyTypeModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2SpecialtytypesSlugGet(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<SpecialtyTypeModel, Error> {
        return Future<SpecialtyTypeModel, Error>.init { promise in
            apiV2SpecialtytypesSlugGetWithRequestBuilder(slug: slug, languageCode: languageCode, returnDefaultValue: returnDefaultValue).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - GET /api/v2/specialtytypes/{slug}
     - parameter slug: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: RequestBuilder<SpecialtyTypeModel> 
     */
    open class func apiV2SpecialtytypesSlugGetWithRequestBuilder(slug: String, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> RequestBuilder<SpecialtyTypeModel> {
        var path = "/api/v2/specialtytypes/{slug}"
        let slugPreEscape = "\(APIHelper.mapValueToPathItem(slug))"
        let slugPostEscape = slugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{slug}", with: slugPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(), 
            "returnDefaultValue": returnDefaultValue?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<SpecialtyTypeModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter specialtyTypeId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SpecialtyTypeModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2SpecialtytypesSpecialtyTypeIdGet(specialtyTypeId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<SpecialtyTypeModel, Error> {
        return Future<SpecialtyTypeModel, Error>.init { promise in
            apiV2SpecialtytypesSpecialtyTypeIdGetWithRequestBuilder(specialtyTypeId: specialtyTypeId, languageCode: languageCode, returnDefaultValue: returnDefaultValue).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     - GET /api/v2/specialtytypes/{specialtyTypeId}
     - parameter specialtyTypeId: (path)  
     - parameter languageCode: (query)  (optional)
     - parameter returnDefaultValue: (query)  (optional)
     - returns: RequestBuilder<SpecialtyTypeModel> 
     */
    open class func apiV2SpecialtytypesSpecialtyTypeIdGetWithRequestBuilder(specialtyTypeId: UUID, languageCode: String? = nil, returnDefaultValue: Bool? = nil) -> RequestBuilder<SpecialtyTypeModel> {
        var path = "/api/v2/specialtytypes/{specialtyTypeId}"
        let specialtyTypeIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyTypeId))"
        let specialtyTypeIdPostEscape = specialtyTypeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{specialtyTypeId}", with: specialtyTypeIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "languageCode": languageCode?.encodeToJSON(), 
            "returnDefaultValue": returnDefaultValue?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<SpecialtyTypeModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all SpecialtyTypeMedias.
     
     - parameter specialtyTypeId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<MediasModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2SpecialtytypesSpecialtyTypeIdMediasGet(specialtyTypeId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<MediasModel, Error> {
        return Future<MediasModel, Error>.init { promise in
            apiV2SpecialtytypesSpecialtyTypeIdMediasGetWithRequestBuilder(specialtyTypeId: specialtyTypeId, id: id, mediaType: mediaType, page: page, limit: limit, lastRetrieved: lastRetrieved).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     Get all SpecialtyTypeMedias.
     - GET /api/v2/specialtytypes/{specialtyTypeId}/medias
     - parameter specialtyTypeId: (path)  
     - parameter id: (query)  (optional)
     - parameter mediaType: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - returns: RequestBuilder<MediasModel> 
     */
    open class func apiV2SpecialtytypesSpecialtyTypeIdMediasGetWithRequestBuilder(specialtyTypeId: UUID, id: UUID? = nil, mediaType: MediaType? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil) -> RequestBuilder<MediasModel> {
        var path = "/api/v2/specialtytypes/{specialtyTypeId}/medias"
        let specialtyTypeIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyTypeId))"
        let specialtyTypeIdPostEscape = specialtyTypeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{specialtyTypeId}", with: specialtyTypeIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(), 
            "MediaType": mediaType?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<MediasModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get SpecialtyTypeMedia.
     
     - parameter specialtyTypeId: (path)  
     - parameter mediaId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<MediaModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2SpecialtytypesSpecialtyTypeIdMediasMediaIdGet(specialtyTypeId: UUID, mediaId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<MediaModel, Error> {
        return Future<MediaModel, Error>.init { promise in
            apiV2SpecialtytypesSpecialtyTypeIdMediasMediaIdGetWithRequestBuilder(specialtyTypeId: specialtyTypeId, mediaId: mediaId).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }

    /**
     Get SpecialtyTypeMedia.
     - GET /api/v2/specialtytypes/{specialtyTypeId}/medias/{mediaId}
     - parameter specialtyTypeId: (path)  
     - parameter mediaId: (path)  
     - returns: RequestBuilder<MediaModel> 
     */
    open class func apiV2SpecialtytypesSpecialtyTypeIdMediasMediaIdGetWithRequestBuilder(specialtyTypeId: UUID, mediaId: UUID) -> RequestBuilder<MediaModel> {
        var path = "/api/v2/specialtytypes/{specialtyTypeId}/medias/{mediaId}"
        let specialtyTypeIdPreEscape = "\(APIHelper.mapValueToPathItem(specialtyTypeId))"
        let specialtyTypeIdPostEscape = specialtyTypeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{specialtyTypeId}", with: specialtyTypeIdPostEscape, options: .literal, range: nil)
        let mediaIdPreEscape = "\(APIHelper.mapValueToPathItem(mediaId))"
        let mediaIdPostEscape = mediaIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{mediaId}", with: mediaIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<MediaModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
