# HospitalItemModel

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

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


