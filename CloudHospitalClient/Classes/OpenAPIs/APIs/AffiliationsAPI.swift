//
// AffiliationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

extension CloudHospitalClientAPI {


open class AffiliationsAPI {
    /**
     Remove link between the doctor and the hospital.
     
     - parameter hospitalId: (path)  
     - parameter doctorId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1HospitalsHospitalIdDoctorsDoctorIdDelete(hospitalId: UUID, doctorId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: Bool?,_ error: Error?) -> Void)) {
        apiV1HospitalsHospitalIdDoctorsDoctorIdDeleteWithRequestBuilder(hospitalId: hospitalId, doctorId: doctorId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove link between the doctor and the hospital.
     - DELETE /api/v1/hospitals/{hospitalId}/doctors/{doctorId}
     - Sample request:        DELETE /api/v1/hospitals/1/doctors/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter doctorId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdDoctorsDoctorIdDeleteWithRequestBuilder(hospitalId: UUID, doctorId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/hospitals/{hospitalId}/doctors/{doctorId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let doctorIdPreEscape = "\(APIHelper.mapValueToPathItem(doctorId))"
        let doctorIdPostEscape = doctorIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{doctorId}", with: doctorIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Link a doctor to a hospital.
     
     - parameter hospitalId: (path)  
     - parameter doctorId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1HospitalsHospitalIdDoctorsDoctorIdPost(hospitalId: UUID, doctorId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: DoctorAffiliationViewModel?,_ error: Error?) -> Void)) {
        apiV1HospitalsHospitalIdDoctorsDoctorIdPostWithRequestBuilder(hospitalId: hospitalId, doctorId: doctorId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Link a doctor to a hospital.
     - POST /api/v1/hospitals/{hospitalId}/doctors/{doctorId}
     - Sample request:        POST /api/v1/hospitals/1/doctors/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter doctorId: (path)  
     - returns: RequestBuilder<DoctorAffiliationViewModel> 
     */
    open class func apiV1HospitalsHospitalIdDoctorsDoctorIdPostWithRequestBuilder(hospitalId: UUID, doctorId: UUID) -> RequestBuilder<DoctorAffiliationViewModel> {
        var path = "/api/v1/hospitals/{hospitalId}/doctors/{doctorId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let doctorIdPreEscape = "\(APIHelper.mapValueToPathItem(doctorId))"
        let doctorIdPostEscape = doctorIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{doctorId}", with: doctorIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<DoctorAffiliationViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Remove link between the manager and the hospital.
     
     - parameter hospitalId: (path)  
     - parameter managerId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1HospitalsHospitalIdManagersManagerIdDelete(hospitalId: UUID, managerId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: Bool?,_ error: Error?) -> Void)) {
        apiV1HospitalsHospitalIdManagersManagerIdDeleteWithRequestBuilder(hospitalId: hospitalId, managerId: managerId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove link between the manager and the hospital.
     - DELETE /api/v1/hospitals/{hospitalId}/managers/{managerId}
     - Sample request:        DELETE /api/v1/hospitals/1/managers/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter managerId: (path)  
     - returns: RequestBuilder<Bool> 
     */
    open class func apiV1HospitalsHospitalIdManagersManagerIdDeleteWithRequestBuilder(hospitalId: UUID, managerId: UUID) -> RequestBuilder<Bool> {
        var path = "/api/v1/hospitals/{hospitalId}/managers/{managerId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let managerIdPreEscape = "\(APIHelper.mapValueToPathItem(managerId))"
        let managerIdPostEscape = managerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{managerId}", with: managerIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Link a manager to a hospital.
     
     - parameter hospitalId: (path)  
     - parameter managerId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func apiV1HospitalsHospitalIdManagersManagerIdPost(hospitalId: UUID, managerId: UUID, apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, completion: @escaping ((_ data: ManagerAffiliationViewModel?,_ error: Error?) -> Void)) {
        apiV1HospitalsHospitalIdManagersManagerIdPostWithRequestBuilder(hospitalId: hospitalId, managerId: managerId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Link a manager to a hospital.
     - POST /api/v1/hospitals/{hospitalId}/managers/{managerId}
     - Sample request:        POST /api/v1/hospitals/1/managers/1
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter managerId: (path)  
     - returns: RequestBuilder<ManagerAffiliationViewModel> 
     */
    open class func apiV1HospitalsHospitalIdManagersManagerIdPostWithRequestBuilder(hospitalId: UUID, managerId: UUID) -> RequestBuilder<ManagerAffiliationViewModel> {
        var path = "/api/v1/hospitals/{hospitalId}/managers/{managerId}"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let managerIdPreEscape = "\(APIHelper.mapValueToPathItem(managerId))"
        let managerIdPostEscape = managerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{managerId}", with: managerIdPostEscape, options: .literal, range: nil)
        let URLString = CloudHospitalClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ManagerAffiliationViewModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
}
