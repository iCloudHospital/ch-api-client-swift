//
// HospitalItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct HospitalItemViewModel: Codable, Hashable {

    public var id: UUID?
    public var name: String?
    public var slug: String?
    public var description: String?
    public var logo: String?
    public var overview: String?
    public var bedsCount: Int?
    public var operationsPerYear: Int?
    public var foundationYear: Int?
    public var medicalStaffCount: Int?
    public var doctorCount: Int?
    public var countryId: UUID?
    public var countryName: String?
    public var marketingType: MarketingType?
    public var consultationEnabled: Bool?
    public var consultationFee: Double?
    public var timeZone: String?
    public var articlesCount: Int?
    public var packagesCount: Int?
    public var equipmentsCount: Int?
    public var reviewsCount: Int?
    public var departmentsCount: Int?
    public var specialtiesCount: Int?
    public var accreditationsCount: Int?
    public var doctorAffiliationsCount: Int?
    public var managerAffiliationsCount: Int?
    public var specialtiesSummerized: String?
    public var awards: [AwardViewModel]?
    public var medias: [MediaViewModel]?
    public var accreditations: [AccreditationViewModel]?
    public var evaluations: [HospitalEvaluationViewModel]?
    public var location: LocationViewModel?
    public var auditableEntity: AuditableEntity?

    public init(id: UUID? = nil, name: String? = nil, slug: String? = nil, description: String? = nil, logo: String? = nil, overview: String? = nil, bedsCount: Int? = nil, operationsPerYear: Int? = nil, foundationYear: Int? = nil, medicalStaffCount: Int? = nil, doctorCount: Int? = nil, countryId: UUID? = nil, countryName: String? = nil, marketingType: MarketingType? = nil, consultationEnabled: Bool? = nil, consultationFee: Double? = nil, timeZone: String? = nil, articlesCount: Int? = nil, packagesCount: Int? = nil, equipmentsCount: Int? = nil, reviewsCount: Int? = nil, departmentsCount: Int? = nil, specialtiesCount: Int? = nil, accreditationsCount: Int? = nil, doctorAffiliationsCount: Int? = nil, managerAffiliationsCount: Int? = nil, specialtiesSummerized: String? = nil, awards: [AwardViewModel]? = nil, medias: [MediaViewModel]? = nil, accreditations: [AccreditationViewModel]? = nil, evaluations: [HospitalEvaluationViewModel]? = nil, location: LocationViewModel? = nil, auditableEntity: AuditableEntity? = nil) {
        self.id = id
        self.name = name
        self.slug = slug
        self.description = description
        self.logo = logo
        self.overview = overview
        self.bedsCount = bedsCount
        self.operationsPerYear = operationsPerYear
        self.foundationYear = foundationYear
        self.medicalStaffCount = medicalStaffCount
        self.doctorCount = doctorCount
        self.countryId = countryId
        self.countryName = countryName
        self.marketingType = marketingType
        self.consultationEnabled = consultationEnabled
        self.consultationFee = consultationFee
        self.timeZone = timeZone
        self.articlesCount = articlesCount
        self.packagesCount = packagesCount
        self.equipmentsCount = equipmentsCount
        self.reviewsCount = reviewsCount
        self.departmentsCount = departmentsCount
        self.specialtiesCount = specialtiesCount
        self.accreditationsCount = accreditationsCount
        self.doctorAffiliationsCount = doctorAffiliationsCount
        self.managerAffiliationsCount = managerAffiliationsCount
        self.specialtiesSummerized = specialtiesSummerized
        self.awards = awards
        self.medias = medias
        self.accreditations = accreditations
        self.evaluations = evaluations
        self.location = location
        self.auditableEntity = auditableEntity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case slug
        case description
        case logo
        case overview
        case bedsCount
        case operationsPerYear
        case foundationYear
        case medicalStaffCount
        case doctorCount
        case countryId
        case countryName
        case marketingType
        case consultationEnabled
        case consultationFee
        case timeZone
        case articlesCount
        case packagesCount
        case equipmentsCount
        case reviewsCount
        case departmentsCount
        case specialtiesCount
        case accreditationsCount
        case doctorAffiliationsCount
        case managerAffiliationsCount
        case specialtiesSummerized
        case awards
        case medias
        case accreditations
        case evaluations
        case location
        case auditableEntity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(overview, forKey: .overview)
        try container.encodeIfPresent(bedsCount, forKey: .bedsCount)
        try container.encodeIfPresent(operationsPerYear, forKey: .operationsPerYear)
        try container.encodeIfPresent(foundationYear, forKey: .foundationYear)
        try container.encodeIfPresent(medicalStaffCount, forKey: .medicalStaffCount)
        try container.encodeIfPresent(doctorCount, forKey: .doctorCount)
        try container.encodeIfPresent(countryId, forKey: .countryId)
        try container.encodeIfPresent(countryName, forKey: .countryName)
        try container.encodeIfPresent(marketingType, forKey: .marketingType)
        try container.encodeIfPresent(consultationEnabled, forKey: .consultationEnabled)
        try container.encodeIfPresent(consultationFee, forKey: .consultationFee)
        try container.encodeIfPresent(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(articlesCount, forKey: .articlesCount)
        try container.encodeIfPresent(packagesCount, forKey: .packagesCount)
        try container.encodeIfPresent(equipmentsCount, forKey: .equipmentsCount)
        try container.encodeIfPresent(reviewsCount, forKey: .reviewsCount)
        try container.encodeIfPresent(departmentsCount, forKey: .departmentsCount)
        try container.encodeIfPresent(specialtiesCount, forKey: .specialtiesCount)
        try container.encodeIfPresent(accreditationsCount, forKey: .accreditationsCount)
        try container.encodeIfPresent(doctorAffiliationsCount, forKey: .doctorAffiliationsCount)
        try container.encodeIfPresent(managerAffiliationsCount, forKey: .managerAffiliationsCount)
        try container.encodeIfPresent(specialtiesSummerized, forKey: .specialtiesSummerized)
        try container.encodeIfPresent(awards, forKey: .awards)
        try container.encodeIfPresent(medias, forKey: .medias)
        try container.encodeIfPresent(accreditations, forKey: .accreditations)
        try container.encodeIfPresent(evaluations, forKey: .evaluations)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(auditableEntity, forKey: .auditableEntity)
    }
}

