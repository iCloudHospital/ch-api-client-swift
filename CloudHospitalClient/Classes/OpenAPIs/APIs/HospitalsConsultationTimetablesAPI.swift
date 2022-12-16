//
// HospitalsConsultationTimetablesAPI.swift
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

open class HospitalsConsultationTimetablesAPI {

    /**
     Get hospital consultation timetables by hospitalId
     
     - parameter hospitalId: (path)  
     - parameter year: (query)  (optional)
     - parameter month: (query)  (optional)
     - parameter timeZone: (query)  (optional)
     - parameter consultationIdExcluded: (query)  (optional)
     - returns: AnyPublisher<ConsultationTimetableModel, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func apiV2HospitalsHospitalIdConsultationtimetablesGet(hospitalId: UUID, year: Int? = nil, month: Int? = nil, timeZone: String? = nil, consultationIdExcluded: UUID? = nil) -> AnyPublisher<ConsultationTimetableModel, Error> {
        var requestTask: RequestTask?
        return Future<ConsultationTimetableModel, Error> { promise in
            requestTask = apiV2HospitalsHospitalIdConsultationtimetablesGetWithRequestBuilder(hospitalId: hospitalId, year: year, month: month, timeZone: timeZone, consultationIdExcluded: consultationIdExcluded).execute { result in
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
     Get hospital consultation timetables by hospitalId
     - GET /api/v2/hospitals/{hospitalId}/consultationtimetables
     - OAuth:
       - type: oauth2
       - name: oauth2
     - parameter hospitalId: (path)  
     - parameter year: (query)  (optional)
     - parameter month: (query)  (optional)
     - parameter timeZone: (query)  (optional)
     - parameter consultationIdExcluded: (query)  (optional)
     - returns: RequestBuilder<ConsultationTimetableModel> 
     */
    open class func apiV2HospitalsHospitalIdConsultationtimetablesGetWithRequestBuilder(hospitalId: UUID, year: Int? = nil, month: Int? = nil, timeZone: String? = nil, consultationIdExcluded: UUID? = nil) -> RequestBuilder<ConsultationTimetableModel> {
        var localVariablePath = "/api/v2/hospitals/{hospitalId}/consultationtimetables"
        let hospitalIdPreEscape = "\(APIHelper.mapValueToPathItem(hospitalId))"
        let hospitalIdPostEscape = hospitalIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{hospitalId}", with: hospitalIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = CloudHospitalClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Year": (wrappedValue: year?.encodeToJSON(), isExplode: true),
            "Month": (wrappedValue: month?.encodeToJSON(), isExplode: true),
            "TimeZone": (wrappedValue: timeZone?.encodeToJSON(), isExplode: true),
            "ConsultationIdExcluded": (wrappedValue: consultationIdExcluded?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ConsultationTimetableModel>.Type = CloudHospitalClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}