# ConsultationItemModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**languageCode** | **String** |  | [optional] 
**consultationType** | [**ConsultationType**](ConsultationType.md) |  | [optional] 
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
**doctorId** | **UUID** |  | [optional] 
**doctorName** | **String** |  | [optional] 
**doctorSlug** | **String** |  | [optional] 
**dealId** | **UUID** |  | [optional] 
**dealName** | **String** |  | [optional] [readonly] 
**dealSlug** | **String** |  | [optional] [readonly] 
**language** | **String** |  | [optional] 
**isAccountHolder** | **Bool** |  | [optional] 
**timeRange** | **String** |  | [optional] 
**approximateDateStart** | **Date** |  | [optional] 
**approximateDateEnd** | **Date** |  | [optional] 
**confirmedDateStart** | **Date** |  | [optional] 
**confirmedDateEnd** | **Date** |  | [optional] 
**fee** | **Double** |  | [optional] 
**applicationFee** | **Double** |  | [optional] 
**timeZone** | **String** |  | [optional] 
**requestDate** | **Date** |  | [optional] 
**domain** | **String** |  | [optional] 
**status** | [**ConsultationStatus**](ConsultationStatus.md) |  | [optional] 
**rejectReason** | [**RejectReason**](RejectReason.md) |  | [optional] 
**isOpen** | **Bool** |  | [optional] 
**paymentId** | **UUID** |  | [optional] 
**paymentEnabled** | **Bool** |  | [optional] 
**completionRate** | **Int** |  | [optional] 
**isExternal** | **Bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

