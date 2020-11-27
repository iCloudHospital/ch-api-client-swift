//
// DoctorCertificatesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

extension CloudHospitalClientAPI {


open class DoctorCertificatesAPI {
    /**
     Get all certificates.
     
     - parameter id: (query)  (optional)
     - parameter doctorId: (query)  (optional)
     - parameter doctorName: (query)  (optional)
     - parameter certificate: (query)  (optional)
     - parameter activeFrom: (query)  (optional)
     - parameter activeTo: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1DoctorsCertificatesGet(id: UUID? = nil, doctorId: UUID? = nil, doctorName: String? = nil, certificate: String? = nil, activeFrom: Date? = nil, activeTo: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: DoctorCertificatesViewModel?,_ error: Error?) -> Void)) {
        apiV1DoctorsCertificatesGetWithRequestBuilder(id: id, doctorId: doctorId, doctorName: doctorName, certificate: certificate, activeFrom: activeFrom, activeTo: activeTo, page: page, limit: limit, lastRetrieved: lastRetrieved, current: current).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all certificates.
     - GET /api/v1/doctors/certificates
     - Sample request:        GET /api/v1/doctors/certificates
     - parameter id: (query)  (optional)
     - parameter doctorId: (query)  (optional)
     - parameter doctorName: (query)  (optional)
     - parameter certificate: (query)  (optional)
     - parameter activeFrom: (query)  (optional)
     - parameter activeTo: (query)  (optional)
     - parameter page: (query)  (optional)
     - parameter limit: (query)  (optional)
     - parameter lastRetrieved: (query)  (optional)
     - parameter current: (query)  (optional)
     - returns: RequestBuilder<DoctorCertificatesViewModel> 
     */
    open class func apiV1DoctorsCertificatesGetWithRequestBuilder(id: UUID? = nil, doctorId: UUID? = nil, doctorName: String? = nil, certificate: String? = nil, activeFrom: Date? = nil, activeTo: Date? = nil, page: Int? = nil, limit: Int? = nil, lastRetrieved: Date? = nil, current: Bool? = nil) -> RequestBuilder<DoctorCertificatesViewModel> {
        let path = "/api/v1/doctors/certificates"
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Id": id?.encodeToJSON(), 
            "DoctorId": doctorId?.encodeToJSON(), 
            "DoctorName": doctorName?.encodeToJSON(), 
            "Certificate": certificate?.encodeToJSON(), 
            "ActiveFrom": activeFrom?.encodeToJSON(), 
            "ActiveTo": activeTo?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "lastRetrieved": lastRetrieved?.encodeToJSON(), 
            "Current": current?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<DoctorCertificatesViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete certificate.
     
     - parameter doctorId: (path)  
     - parameter certificateId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1DoctorsDoctorIdCertificatesCertificateIdDelete(doctorId: UUID, certificateId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: Bool?,_ error: Error?) -> Void)) {
        apiV1DoctorsDoctorIdCertificatesCertificateIdDeleteWithRequestBuilder(doctorId: doctorId, certificateId: certificateId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete certificate.
     - DELETE /api/v1/doctors/{doctorId}/certificates/{certificateId}
     - Sample request:        DELETE /api/v1/doctors/1/certificates/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter doctorId: (path)  
     - parameter certificateId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1DoctorsDoctorIdCertificatesCertificateIdDeleteWithRequestBuilder(doctorId: UUID, certificateId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/doctors/{doctorId}/certificates/{certificateId}"
        let doctorIdPreEscape = "\(APIHelper.mapValueToPathItem(doctorId))"
        let doctorIdPostEscape = doctorIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{doctorId}", with: doctorIdPostEscape, options: .literal, range: nil)
        let certificateIdPreEscape = "\(APIHelper.mapValueToPathItem(certificateId))"
        let certificateIdPostEscape = certificateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{certificateId}", with: certificateIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get certificate.
     
     - parameter doctorId: (path)  
     - parameter certificateId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1DoctorsDoctorIdCertificatesCertificateIdGet(doctorId: UUID, certificateId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: DoctorCertificateViewModel?,_ error: Error?) -> Void)) {
        apiV1DoctorsDoctorIdCertificatesCertificateIdGetWithRequestBuilder(doctorId: doctorId, certificateId: certificateId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get certificate.
     - GET /api/v1/doctors/{doctorId}/certificates/{certificateId}
     - Sample request:        GET /api/v1/doctors/1/certificates/1
     - parameter doctorId: (path)  
     - parameter certificateId: (path)  
     - returns: RequestBuilder<DoctorCertificateViewModel> 
     */
    open class func apiV1DoctorsDoctorIdCertificatesCertificateIdGetWithRequestBuilder(doctorId: UUID, certificateId: UUID) -> RequestBuilder<DoctorCertificateViewModel> {
        var path = "/api/v1/doctors/{doctorId}/certificates/{certificateId}"
        let doctorIdPreEscape = "\(APIHelper.mapValueToPathItem(doctorId))"
        let doctorIdPostEscape = doctorIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{doctorId}", with: doctorIdPostEscape, options: .literal, range: nil)
        let certificateIdPreEscape = "\(APIHelper.mapValueToPathItem(certificateId))"
        let certificateIdPostEscape = certificateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{certificateId}", with: certificateIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<DoctorCertificateViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update department.
     
     - parameter doctorId: (path)  
     - parameter certificateId: (path)  
     - parameter updateDoctorCertificateCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1DoctorsDoctorIdCertificatesCertificateIdPut(doctorId: UUID, certificateId: UUID, updateDoctorCertificateCommand: UpdateDoctorCertificateCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: Bool?,_ error: Error?) -> Void)) {
        apiV1DoctorsDoctorIdCertificatesCertificateIdPutWithRequestBuilder(doctorId: doctorId, certificateId: certificateId, updateDoctorCertificateCommand: updateDoctorCertificateCommand).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update department.
     - PUT /api/v1/doctors/{doctorId}/certificates/{certificateId}
     - Sample request:
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter doctorId: (path)  
     - parameter certificateId: (path)  
     - parameter updateDoctorCertificateCommand: (body)  (optional)
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1DoctorsDoctorIdCertificatesCertificateIdPutWithRequestBuilder(doctorId: UUID, certificateId: UUID, updateDoctorCertificateCommand: UpdateDoctorCertificateCommand? = nil) -> RequestBuilder<Bool> {
        var path = "/api/v1/doctors/{doctorId}/certificates/{certificateId}"
        let doctorIdPreEscape = "\(APIHelper.mapValueToPathItem(doctorId))"
        let doctorIdPostEscape = doctorIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{doctorId}", with: doctorIdPostEscape, options: .literal, range: nil)
        let certificateIdPreEscape = "\(APIHelper.mapValueToPathItem(certificateId))"
        let certificateIdPostEscape = certificateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{certificateId}", with: certificateIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateDoctorCertificateCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create certificate.
     
     - parameter doctorId: (path)  
     - parameter createDoctorCertificateCommand: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1DoctorsDoctorIdCertificatesPost(doctorId: UUID, createDoctorCertificateCommand: CreateDoctorCertificateCommand? = nil, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: DoctorCertificate?,_ error: Error?) -> Void)) {
        apiV1DoctorsDoctorIdCertificatesPostWithRequestBuilder(doctorId: doctorId, createDoctorCertificateCommand: createDoctorCertificateCommand).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create certificate.
     - POST /api/v1/doctors/{doctorId}/certificates
     - Sample request:        POST /api/v1/doctors/1/certificates/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter doctorId: (path)  
     - parameter createDoctorCertificateCommand: (body)  (optional)
     - returns: RequestBuilder<DoctorCertificate> 
     */
    open class func apiV1DoctorsDoctorIdCertificatesPostWithRequestBuilder(doctorId: UUID, createDoctorCertificateCommand: CreateDoctorCertificateCommand? = nil) -> RequestBuilder<DoctorCertificate> {
        var path = "/api/v1/doctors/{doctorId}/certificates"
        let doctorIdPreEscape = "\(APIHelper.mapValueToPathItem(doctorId))"
        let doctorIdPostEscape = doctorIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{doctorId}", with: doctorIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createDoctorCertificateCommand)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<DoctorCertificate>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
}
