//
// DoctorAffiliationItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct DoctorAffiliationItemModel: Codable {

    public var id: UUID?
    public var languageCode: String?
    public var hospitalId: UUID?
    public var hospitalName: String?
    public var hospitalSlug: String?
    public var doctorId: UUID?
    public var name: String?
    public var slug: String?
    public var confirmed: Bool?
    public var photo: String?
    public var photoThumbnail: String?
    public var consultationEnabled: Bool?
    public var consultationFee: Double?
    public var specialtiesSummerized: String?
    public var order: Int?

    public init(id: UUID? = nil, languageCode: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, doctorId: UUID? = nil, name: String? = nil, slug: String? = nil, confirmed: Bool? = nil, photo: String? = nil, photoThumbnail: String? = nil, consultationEnabled: Bool? = nil, consultationFee: Double? = nil, specialtiesSummerized: String? = nil, order: Int? = nil) {
        self.id = id
        self.languageCode = languageCode
        self.hospitalId = hospitalId
        self.hospitalName = hospitalName
        self.hospitalSlug = hospitalSlug
        self.doctorId = doctorId
        self.name = name
        self.slug = slug
        self.confirmed = confirmed
        self.photo = photo
        self.photoThumbnail = photoThumbnail
        self.consultationEnabled = consultationEnabled
        self.consultationFee = consultationFee
        self.specialtiesSummerized = specialtiesSummerized
        self.order = order
    }

}

