//
// MoviesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

extension CloudHospitalClientAPI {


open class MoviesAPI {
    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1MoviesPost(apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        apiV1MoviesPostWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /api/v1/movies
     - OAuth:
       - type: oauth2
       - name: oauth2
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1MoviesPostWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/api/v1/movies"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = CloudHospitalClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
}
