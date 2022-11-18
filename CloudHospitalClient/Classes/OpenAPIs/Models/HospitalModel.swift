//
// HospitalModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct HospitalModel: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var languageCode: String?
    public var name: String?
    public var slug: String?
    public var confirmed: Bool?
    public var logo: String?
    public var marketingType: MarketingType?
    public var consultationEnabled: Bool?
    public var consultationFee: Double?
    public var timeZone: String?
    public var websiteUrl: String?
    public var paymentEnabled: Bool?
    public var countryId: UUID?
    public var specialtiesSummerized: String?
    public var accreditations: [HospitalAccreditationItemModel]?
    public var medias: [MediaModel]?
    public var location: LocationModel?
    public var description: String?
    public var overview: String?
    public var content: String?
    public var localizedUrls: [LocalizedUrlModel]?
    public var bedsCount: Int?
    public var operationsPerYear: Int?
    public var foundationYear: Int?
    public var medicalStaffCount: Int?
    public var doctorCount: Int?
    public var contactTel: String?
    public var contactEmail: String?
    public var customStyle: String?
    public var evaluations: [HospitalEvaluationItemModel]?
    public var hospitalWorkingDays: [WorkingDay]?
    public var hospitalSnsHandles: [SnsHandle]?
    public var languages: [HospitalLanguageItemModel]?
    public var awards: [AwardModel]?
    public var consultationOption: HospitalConsultationOptionModel?

    public init(id: UUID? = nil, languageCode: String? = nil, name: String? = nil, slug: String? = nil, confirmed: Bool? = nil, logo: String? = nil, marketingType: MarketingType? = nil, consultationEnabled: Bool? = nil, consultationFee: Double? = nil, timeZone: String? = nil, websiteUrl: String? = nil, paymentEnabled: Bool? = nil, countryId: UUID? = nil, specialtiesSummerized: String? = nil, accreditations: [HospitalAccreditationItemModel]? = nil, medias: [MediaModel]? = nil, location: LocationModel? = nil, description: String? = nil, overview: String? = nil, content: String? = nil, localizedUrls: [LocalizedUrlModel]? = nil, bedsCount: Int? = nil, operationsPerYear: Int? = nil, foundationYear: Int? = nil, medicalStaffCount: Int? = nil, doctorCount: Int? = nil, contactTel: String? = nil, contactEmail: String? = nil, customStyle: String? = nil, evaluations: [HospitalEvaluationItemModel]? = nil, hospitalWorkingDays: [WorkingDay]? = nil, hospitalSnsHandles: [SnsHandle]? = nil, languages: [HospitalLanguageItemModel]? = nil, awards: [AwardModel]? = nil, consultationOption: HospitalConsultationOptionModel? = nil) {
        self.id = id
        self.languageCode = languageCode
        self.name = name
        self.slug = slug
        self.confirmed = confirmed
        self.logo = logo
        self.marketingType = marketingType
        self.consultationEnabled = consultationEnabled
        self.consultationFee = consultationFee
        self.timeZone = timeZone
        self.websiteUrl = websiteUrl
        self.paymentEnabled = paymentEnabled
        self.countryId = countryId
        self.specialtiesSummerized = specialtiesSummerized
        self.accreditations = accreditations
        self.medias = medias
        self.location = location
        self.description = description
        self.overview = overview
        self.content = content
        self.localizedUrls = localizedUrls
        self.bedsCount = bedsCount
        self.operationsPerYear = operationsPerYear
        self.foundationYear = foundationYear
        self.medicalStaffCount = medicalStaffCount
        self.doctorCount = doctorCount
        self.contactTel = contactTel
        self.contactEmail = contactEmail
        self.customStyle = customStyle
        self.evaluations = evaluations
        self.hospitalWorkingDays = hospitalWorkingDays
        self.hospitalSnsHandles = hospitalSnsHandles
        self.languages = languages
        self.awards = awards
        self.consultationOption = consultationOption
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case languageCode
        case name
        case slug
        case confirmed
        case logo
        case marketingType
        case consultationEnabled
        case consultationFee
        case timeZone
        case websiteUrl
        case paymentEnabled
        case countryId
        case specialtiesSummerized
        case accreditations
        case medias
        case location
        case description
        case overview
        case content
        case localizedUrls
        case bedsCount
        case operationsPerYear
        case foundationYear
        case medicalStaffCount
        case doctorCount
        case contactTel
        case contactEmail
        case customStyle
        case evaluations
        case hospitalWorkingDays
        case hospitalSnsHandles
        case languages
        case awards
        case consultationOption
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(languageCode, forKey: .languageCode)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(confirmed, forKey: .confirmed)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(marketingType, forKey: .marketingType)
        try container.encodeIfPresent(consultationEnabled, forKey: .consultationEnabled)
        try container.encodeIfPresent(consultationFee, forKey: .consultationFee)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)
        try container.encodeIfPresent(paymentEnabled, forKey: .paymentEnabled)
        try container.encodeIfPresent(countryId, forKey: .countryId)
        try container.encodeIfPresent(specialtiesSummerized, forKey: .specialtiesSummerized)
        try container.encodeIfPresent(accreditations, forKey: .accreditations)
        try container.encodeIfPresent(medias, forKey: .medias)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(overview, forKey: .overview)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(localizedUrls, forKey: .localizedUrls)
        try container.encodeIfPresent(bedsCount, forKey: .bedsCount)
        try container.encodeIfPresent(operationsPerYear, forKey: .operationsPerYear)
        try container.encodeIfPresent(foundationYear, forKey: .foundationYear)
        try container.encodeIfPresent(medicalStaffCount, forKey: .medicalStaffCount)
        try container.encodeIfPresent(doctorCount, forKey: .doctorCount)
        try container.encodeIfPresent(contactTel, forKey: .contactTel)
        try container.encodeIfPresent(contactEmail, forKey: .contactEmail)
        try container.encodeIfPresent(customStyle, forKey: .customStyle)
        try container.encodeIfPresent(evaluations, forKey: .evaluations)
        try container.encodeIfPresent(hospitalWorkingDays, forKey: .hospitalWorkingDays)
        try container.encodeIfPresent(hospitalSnsHandles, forKey: .hospitalSnsHandles)
        try container.encodeIfPresent(languages, forKey: .languages)
        try container.encodeIfPresent(awards, forKey: .awards)
        try container.encodeIfPresent(consultationOption, forKey: .consultationOption)
    }
}

