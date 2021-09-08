//
// SurveysAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Combine



open class SurveysAPI {
    /**
     Get the survey.
     
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<SurveyModel, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1SurveysIdGet(id: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<SurveyModel, Error> {
        return Future<SurveyModel, Error>.init { promise in
            apiV1SurveysIdGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     Get the survey.
     - GET /api/v1/surveys/{id}
     - Sample request:        GET: /api/v1/surveys/29e54730-783f-40ed-b1e1-56db817c73e2
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter id: (path)  
     - returns: RequestBuilder<SurveyModel> 
     */
    open class func apiV1SurveysIdGetWithRequestBuilder(id: UUID) -> RequestBuilder<SurveyModel> {
        var path = "/api/v1/surveys/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SurveyModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create user's survey response.
     
     - parameter createSurveyResponseCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV1SurveysPost(createSurveyResponseCommand: CreateSurveyResponseCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            apiV1SurveysPostWithRequestBuilder(createSurveyResponseCommand: createSurveyResponseCommand).execute(apiResponseQueue) { result -> Void in
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
     Create user's survey response.
     - POST /api/v1/surveys
     - Sample request:        POST: /api/v1/surveys      {          \"surveyId\": \"29e54730-783f-40ed-b1e1-56db817c73e2\",          \"answers\": \"[{ ... }]\"      }
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter createSurveyResponseCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1SurveysPostWithRequestBuilder(createSurveyResponseCommand: CreateSurveyResponseCommand? = nil) -> RequestBuilder<Bool> {
        let path = "/api/v1/surveys"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createSurveyResponseCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
