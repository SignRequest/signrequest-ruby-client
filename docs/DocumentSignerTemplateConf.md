# SignRequestClient::DocumentSignerTemplateConf

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**signer_index** | **Integer** |  | [optional] 
**needs_to_sign** | **BOOLEAN** | When &#x60;false&#x60; user does not need to sign, but will receive a copy of the signed document and signing log, see: [Copy only](#section/Additional-signing-methods/Copy-only) | [optional] 
**approve_only** | **BOOLEAN** | Require user to approve the document (without adding a signature), see: [Approve only](#section/Additional-signing-methods/Approve-only) | [optional] 
**notify_only** | **BOOLEAN** | Send notifications about the document and a copy of the signed document and signing log, but don&#39;t require them to take any action, see: [Notify only](#section/Additional-signing-methods/Notify-only) | [optional] 
**in_person** | **BOOLEAN** | When used in combination with an embed url on the sender, after sender has signed, they will be redirected to the next &#x60;in_person&#x60; signer, see: [In person signing](#section/Additional-signing-methods/In-person-signing) | [optional] 
**order** | **Integer** |  | [optional] 
**placeholders** | [**Array&lt;Placeholder&gt;**](Placeholder.md) |  | [optional] 


