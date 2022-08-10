//
// DoctorAffiliationModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct DoctorAffiliationModel: Codable {

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
    public var description: String?
    public var overview: String?
    public var content: String?
    public var background: String?
    public var backgroundThumbnail: String?
    public var customStyle: String?
    public var localizedUrls: [LocalizedUrlModel]?
    public var medias: [MediaModel]?

    public init(id: UUID? = nil, languageCode: String? = nil, hospitalId: UUID? = nil, hospitalName: String? = nil, hospitalSlug: String? = nil, doctorId: UUID? = nil, name: String? = nil, slug: String? = nil, confirmed: Bool? = nil, photo: String? = nil, photoThumbnail: String? = nil, consultationEnabled: Bool? = nil, consultationFee: Double? = nil, specialtiesSummerized: String? = nil, order: Int? = nil, description: String? = nil, overview: String? = nil, content: String? = nil, background: String? = nil, backgroundThumbnail: String? = nil, customStyle: String? = nil, localizedUrls: [LocalizedUrlModel]? = nil, medias: [MediaModel]? = nil) {
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
        self.description = description
        self.overview = overview
        self.content = content
        self.background = background
        self.backgroundThumbnail = backgroundThumbnail
        self.customStyle = customStyle
        self.localizedUrls = localizedUrls
        self.medias = medias
    }

}

