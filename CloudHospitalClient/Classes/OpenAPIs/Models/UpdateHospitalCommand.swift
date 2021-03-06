//
// UpdateHospitalCommand.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct UpdateHospitalCommand: Codable {

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

    public init(name: String? = nil, slug: String? = nil, description: String? = nil, logo: String? = nil, overview: String? = nil, bedsCount: Int? = nil, operationsPerYear: Int? = nil, foundationYear: Int? = nil, medicalStaffCount: Int? = nil, doctorCount: Int? = nil, countryName: String? = nil, marketingType: MarketingType? = nil, consultationEnabled: Bool? = nil, consultationFee: Double? = nil, timeZone: String? = nil, articlesCount: Int? = nil, packagesCount: Int? = nil, equipmentsCount: Int? = nil, reviewsCount: Int? = nil, departmentsCount: Int? = nil, specialtiesCount: Int? = nil, accreditationsCount: Int? = nil, doctorAffiliationsCount: Int? = nil, managerAffiliationsCount: Int? = nil, specialtiesSummerized: String? = nil, awards: [AwardViewModel]? = nil, medias: [MediaViewModel]? = nil, accreditations: [AccreditationViewModel]? = nil, evaluations: [HospitalEvaluationViewModel]? = nil, location: LocationViewModel? = nil, auditableEntity: AuditableEntity? = nil) {
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

}

