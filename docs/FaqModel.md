# FaqModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**languageCode** | **String** |  | [optional] 
**name** | **String** |  | [optional] [readonly] 
**slug** | **String** |  | [optional] [readonly] 
**confirmed** | **Bool** |  | [optional] [readonly] 
**parentId** | **UUID** |  | [optional] 
**order** | **Int** |  | [optional] 
**hospitalId** | **UUID** |  | [optional] 
**hospitalName** | **String** |  | [optional] [readonly] 
**hospitalSlug** | **String** |  | [optional] [readonly] 
**hospitalWebsiteUrl** | **String** |  | [optional] 
**faqCategoryId** | **UUID** |  | [optional] [readonly] 
**faqCategoryName** | **String** |  | [optional] [readonly] 
**faqTags** | [FaqTagItemModel] |  | [optional] 
**medias** | [MediaModel] |  | [optional] 
**auditableEntity** | [**AuditableEntity**](AuditableEntity.md) |  | [optional] 
**description** | **String** |  | [optional] [readonly] 
**overview** | **String** |  | [optional] [readonly] 
**content** | **String** |  | [optional] [readonly] 
**localizedUrls** | [LocalizedUrlModel] |  | [optional] [readonly] 
**customStyle** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


