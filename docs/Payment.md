# Payment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**paymentMethod** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**patientId** | **UUID** |  | [optional] 
**patient** | [**Patient**](Patient.md) |  | [optional] 
**customerId** | **String** |  | [optional] 
**customer** | [**Customer**](Customer.md) |  | [optional] 
**chargeId** | **String** |  | [optional] 
**refundId** | **String** |  | [optional] 
**chargeStatus** | [**ChargeStatus**](ChargeStatus.md) |  | [optional] 
**refundStatus** | [**RefundStatus**](RefundStatus.md) |  | [optional] 
**paymentStatus** | [**PaymentStatus**](PaymentStatus.md) |  | [optional] 
**isFullPayment** | **Bool** |  | [optional] 
**currency** | **String** |  | [optional] 
**fee** | **Double** |  | [optional] 
**applicationFee** | **Double** |  | [optional] 
**cardBrand** | **String** |  | [optional] 
**cardLast4Digits** | **String** |  | [optional] 
**chargeStatusChangeLogs** | [ChangeLog] |  | [optional] 
**refundStatusChangeLogs** | [ChangeLog] |  | [optional] 
**paymentStatusChangeLogs** | [ChangeLog] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


