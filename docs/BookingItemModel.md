# BookingItemModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**languageCode** | **String** |  | [optional] 
**patientId** | **UUID** |  | [optional] 
**patientName** | **String** |  | [optional] 
**patientPhoto** | **String** |  | [optional] 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**phone** | **String** |  | [optional] 
**dateOfBirth** | **Date** |  | [optional] 
**gender** | [**Gender**](Gender.md) |  | [optional] 
**comment** | **String** |  | [optional] 
**hospitalId** | **UUID** |  | [optional] 
**hospitalName** | **String** |  | [optional] [readonly] 
**hospitalSlug** | **String** |  | [optional] [readonly] 
**hospitalTimeZone** | **String** |  | [optional] 
**dealId** | **UUID** |  | [optional] 
**dealName** | **String** |  | [optional] [readonly] 
**dealSlug** | **String** |  | [optional] [readonly] 
**dealPackageId** | **UUID** |  | [optional] 
**refundPolicy** | [**RefundPolicy**](RefundPolicy.md) |  | [optional] 
**quantity** | **Int** |  | [optional] 
**approximateDateStart** | **Date** |  | [optional] 
**approximateDateEnd** | **Date** |  | [optional] 
**confirmedDateStart** | **Date** |  | [optional] 
**confirmedDateEnd** | **Date** |  | [optional] 
**fee** | **Double** |  | [optional] 
**applicationFee** | **Double** |  | [optional] 
**timeZone** | **String** |  | [optional] 
**requestDate** | **Date** |  | [optional] 
**status** | [**BookingStatus**](BookingStatus.md) |  | [optional] 
**rejectReason** | [**RejectReason**](RejectReason.md) |  | [optional] 
**rejectComment** | **String** |  | [optional] 
**isOpen** | **Bool** |  | [optional] 
**isExternal** | **Bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


