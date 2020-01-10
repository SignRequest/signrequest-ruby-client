# SignRequestClient::Signer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** |  | 
**display_name** | **String** |  | [optional] 
**first_name** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 
**email_viewed** | **BOOLEAN** |  | [optional] 
**viewed** | **BOOLEAN** |  | [optional] 
**signed** | **BOOLEAN** |  | [optional] 
**downloaded** | **BOOLEAN** |  | [optional] 
**signed_on** | **DateTime** |  | [optional] 
**needs_to_sign** | **BOOLEAN** | When &#x60;false&#x60; user does not need to sign, but will receive a copy of the signed document and signing log, see: [Copy only](#section/Additional-signing-methods/Copy-only) | [optional] [default to true]
**approve_only** | **BOOLEAN** | Require user to approve the document (without adding a signature), see: [Approve only](#section/Additional-signing-methods/Approve-only) | [optional] 
**notify_only** | **BOOLEAN** | Send notifications about the document and a copy of the signed document and signing log, but don&#39;t require them to take any action, see: [Notify only](#section/Additional-signing-methods/Notify-only) | [optional] 
**in_person** | **BOOLEAN** | When used in combination with an embed url on the sender, after sender has signed, they will be redirected to the next &#x60;in_person&#x60; signer, see: [In person signing](#section/Additional-signing-methods/In-person-signing) | [optional] 
**order** | **Integer** |  | [optional] 
**language** | **String** |  | [optional] 
**force_language** | **BOOLEAN** |  | [optional] 
**emailed** | **BOOLEAN** |  | [optional] 
**verify_phone_number** | **String** |  | [optional] 
**verify_bank_account** | **String** |  | [optional] 
**declined** | **BOOLEAN** |  | [optional] 
**declined_on** | **DateTime** |  | [optional] 
**forwarded** | **String** |  | [optional] 
**forwarded_on** | **DateTime** |  | [optional] 
**forwarded_to_email** | **String** |  | [optional] 
**forwarded_reason** | **String** |  | [optional] 
**message** | **String** |  | [optional] 
**embed_url_user_id** | **String** |  | [optional] 
**inputs** | [**Array&lt;SignerInputs&gt;**](SignerInputs.md) |  | [optional] 
**use_stamp_for_approve_only** | **BOOLEAN** | Place an approval stamp on a document when a signer approves a document | [optional] 
**embed_url** | **String** |  | [optional] 
**attachments** | [**Array&lt;SignerAttachment&gt;**](SignerAttachment.md) |  | [optional] 
**redirect_url** | **String** |  | [optional] 
**redirect_url_declined** | **String** |  | [optional] 
**after_document** | **String** |  | [optional] 
**integrations** | [**Array&lt;InlineDocumentSignerIntegrationData&gt;**](InlineDocumentSignerIntegrationData.md) |  | [optional] 
**password** | **String** | Require the signer to enter this password before signing a document. This field is write only. | [optional] 


