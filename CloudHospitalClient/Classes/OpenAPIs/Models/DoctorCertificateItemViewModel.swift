//
// DoctorCertificateItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct DoctorCertificateItemViewModel: Codable {

    public var id: UUID?
    public var doctorId: UUID?
    public var doctorName: String?
    public var certificate: String?
    public var activeFrom: Date?
    public var activeTo: Date?

    public init(id: UUID? = nil, doctorId: UUID? = nil, doctorName: String? = nil, certificate: String? = nil, activeFrom: Date? = nil, activeTo: Date? = nil) {
        self.id = id
        self.doctorId = doctorId
        self.doctorName = doctorName
        self.certificate = certificate
        self.activeFrom = activeFrom
        self.activeTo = activeTo
    }

}

