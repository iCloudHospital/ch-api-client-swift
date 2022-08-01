# HospitalModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**languageCode** | **String** |  | [optional] 
**name** | **String** |  | [optional] [readonly] 
**slug** | **String** |  | [optional] [readonly] 
**confirmed** | **Bool** |  | [optional] [readonly] 
**logo** | **String** |  | [optional] 
**marketingType** | [**MarketingType**](MarketingType.md) |  | [optional] 
**consultationEnabled** | **Bool** |  | [optional] 
**consultationFee** | **Double** |  | [optional] 
**timeZone** | **String** |  | [optional] 
**websiteUrl** | **String** |  | [optional] 
**paymentEnabled** | **Bool** |  | [optional] 
**countryId** | **UUID** |  | [optional] 
**specialtiesSummerized** | **String** |  | [optional] [readonly] 
**accreditations** | [HospitalAccreditationItemModel] |  | [optional] 
**medias** | [MediaModel] |  | [optional] 
**location** | [**LocationModel**](LocationModel.md) |  | [optional] 
**description** | **String** |  | [optional] [readonly] 
**overview** | **String** |  | [optional] [readonly] 
**content** | **String** |  | [optional] [readonly] 
**localizedUrls** | [LocalizedUrlModel] |  | [optional] [readonly] 
**bedsCount** | **Int** |  | [optional] 
**operationsPerYear** | **Int** |  | [optional] 
**foundationYear** | **Int** |  | [optional] 
**medicalStaffCount** | **Int** |  | [optional] 
**doctorCount** | **Int** |  | [optional] 
**contactTel** | **String** |  | [optional] 
**contactEmail** | **String** |  | [optional] 
**customStyle** | **String** |  | [optional] 
**evaluations** | [HospitalEvaluationItemModel] |  | [optional] 
**hospitalWorkingDays** | [WorkingDay] |  | [optional] 
**hospitalSnsHandles** | [SnsHandle] |  | [optional] 
**languages** | [HospitalLanguageItemModel] |  | [optional] 
**awards** | [AwardModel] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


