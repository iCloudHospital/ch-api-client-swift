# Booking

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**patientId** | **UUID** |  | [optional] 
**patient** | [**Patient**](Patient.md) |  | [optional] 
**hospitalId** | **UUID** |  | [optional] 
**hospital** | [**Hospital**](Hospital.md) |  | [optional] 
**dealPackageId** | **UUID** |  | [optional] 
**dealPackage** | [**DealPackage**](DealPackage.md) |  | [optional] 
**quantity** | **Int** |  | [optional] 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**phone** | **String** |  | [optional] 
**dateOfBirth** | **Date** |  | [optional] 
**gender** | [**Gender**](Gender.md) |  | [optional] 
**comment** | **String** |  | [optional] 
**approximateDateStart** | **Date** |  | [optional] 
**approximateDateEnd** | **Date** |  | [optional] 
**confirmedDateStart** | **Date** |  | [optional] 
**confirmedDateEnd** | **Date** |  | [optional] 
**fee** | **Double** |  | [optional] 
**applicationFee** | **Double** |  | [optional] 
**status** | [**BookingStatus**](BookingStatus.md) |  | [optional] 
**rejectReason** | [**RejectReason**](RejectReason.md) |  | [optional] 
**rejectComment** | **String** |  | [optional] 
**isOpen** | **Bool** |  | [optional] 
**paymentId** | **UUID** |  | [optional] 
**payment** | [**Payment**](Payment.md) |  | [optional] 
**timeZone** | **String** |  | [optional] 
**statusChangeLogs** | [ChangeLog] |  | [optional] 
**medias** | [Media] |  | [optional] 
**auditableEntity** | [**AuditableEntity**](AuditableEntity.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


