# SignRequest API Client

SignRequestClient - the Ruby gem for the SignRequest API

## Installation

Add this to the Gemfile:

    gem 'signrequest_client', '~> 1.0.0'

And then run:

    bundle install

## Getting Started

The client needs to be configured with an API token from your [team api settings page](https://signrequest.com/#/teams).

```ruby
# Setup authorization
SignRequestClient.configure do |config|
  config.api_key['Authorization'] = 'YOUR API KEY'
  config.api_key_prefix['Authorization'] = 'Token'
end

documents_api = SignRequestClient::DocumentsApi.new
document = SignRequestClient::Document.new

begin
  result = documents_api.documents_create(document)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling ApiTokensApi->api_tokens_create: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to _https://signrequest.com/api/v1_

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SignRequestClient::ApiTokensApi* | [**api_tokens_create**](docs/ApiTokensApi.md#api_tokens_create) | **POST** /api-tokens/ | Create an API token
*SignRequestClient::ApiTokensApi* | [**api_tokens_delete**](docs/ApiTokensApi.md#api_tokens_delete) | **DELETE** /api-tokens/{key}/ | Delete an API token
*SignRequestClient::ApiTokensApi* | [**api_tokens_list**](docs/ApiTokensApi.md#api_tokens_list) | **GET** /api-tokens/ | Retrieve a list of API tokens
*SignRequestClient::ApiTokensApi* | [**api_tokens_read**](docs/ApiTokensApi.md#api_tokens_read) | **GET** /api-tokens/{key}/ | Retrieve an API token
*SignRequestClient::DocumentAttachmentsApi* | [**document_attachments_create**](docs/DocumentAttachmentsApi.md#document_attachments_create) | **POST** /document-attachments/ | Create a Document Attachment
*SignRequestClient::DocumentAttachmentsApi* | [**document_attachments_list**](docs/DocumentAttachmentsApi.md#document_attachments_list) | **GET** /document-attachments/ | Retrieve a list of Document Attachments
*SignRequestClient::DocumentAttachmentsApi* | [**document_attachments_read**](docs/DocumentAttachmentsApi.md#document_attachments_read) | **GET** /document-attachments/{uuid}/ | Retrieve a Document Attachment
*SignRequestClient::DocumentsApi* | [**documents_create**](docs/DocumentsApi.md#documents_create) | **POST** /documents/ | Create a Document
*SignRequestClient::DocumentsApi* | [**documents_delete**](docs/DocumentsApi.md#documents_delete) | **DELETE** /documents/{uuid}/ | Delete a Document
*SignRequestClient::DocumentsApi* | [**documents_list**](docs/DocumentsApi.md#documents_list) | **GET** /documents/ | Retrieve a list of Documents
*SignRequestClient::DocumentsApi* | [**documents_read**](docs/DocumentsApi.md#documents_read) | **GET** /documents/{uuid}/ | Retrieve a Document
*SignRequestClient::DocumentsSearchApi* | [**documents_search_list**](docs/DocumentsSearchApi.md#documents_search_list) | **GET** /documents-search/ | Search documents
*SignRequestClient::EventsApi* | [**events_list**](docs/EventsApi.md#events_list) | **GET** /events/ | Retrieve a list of Events
*SignRequestClient::EventsApi* | [**events_read**](docs/EventsApi.md#events_read) | **GET** /events/{id}/ | Retrieve an Event
*SignRequestClient::SignrequestQuickCreateApi* | [**signrequest_quick_create_create**](docs/SignrequestQuickCreateApi.md#signrequest_quick_create_create) | **POST** /signrequest-quick-create/ | Quick create a SignRequest
*SignRequestClient::SignrequestsApi* | [**signrequests_cancel_signrequest**](docs/SignrequestsApi.md#signrequests_cancel_signrequest) | **POST** /signrequests/{uuid}/cancel_signrequest/ | Cancel a SignRequest
*SignRequestClient::SignrequestsApi* | [**signrequests_create**](docs/SignrequestsApi.md#signrequests_create) | **POST** /signrequests/ | Create a SignRequest
*SignRequestClient::SignrequestsApi* | [**signrequests_list**](docs/SignrequestsApi.md#signrequests_list) | **GET** /signrequests/ | Retrieve a list of SignRequests
*SignRequestClient::SignrequestsApi* | [**signrequests_read**](docs/SignrequestsApi.md#signrequests_read) | **GET** /signrequests/{uuid}/ | Retrieve a SignRequest
*SignRequestClient::SignrequestsApi* | [**signrequests_resend_signrequest_email**](docs/SignrequestsApi.md#signrequests_resend_signrequest_email) | **POST** /signrequests/{uuid}/resend_signrequest_email/ | Resend a SignRequest
*SignRequestClient::TeamMembersApi* | [**team_members_list**](docs/TeamMembersApi.md#team_members_list) | **GET** /team-members/ | Retrieve a list of Team Members
*SignRequestClient::TeamMembersApi* | [**team_members_read**](docs/TeamMembersApi.md#team_members_read) | **GET** /team-members/{uuid}/ | Retrieve a Team Member
*SignRequestClient::TeamsApi* | [**teams_create**](docs/TeamsApi.md#teams_create) | **POST** /teams/ | Create a Team
*SignRequestClient::TeamsApi* | [**teams_invite_member**](docs/TeamsApi.md#teams_invite_member) | **POST** /teams/{subdomain}/invite_member/ | Invite a Team Member
*SignRequestClient::TeamsApi* | [**teams_list**](docs/TeamsApi.md#teams_list) | **GET** /teams/ | Retrieve a list of Teams
*SignRequestClient::TeamsApi* | [**teams_partial_update**](docs/TeamsApi.md#teams_partial_update) | **PATCH** /teams/{subdomain}/ | Update a Team
*SignRequestClient::TeamsApi* | [**teams_read**](docs/TeamsApi.md#teams_read) | **GET** /teams/{subdomain}/ | Retrieve a Team
*SignRequestClient::TemplatesApi* | [**templates_list**](docs/TemplatesApi.md#templates_list) | **GET** /templates/ | Retrieve a list of Templates
*SignRequestClient::TemplatesApi* | [**templates_read**](docs/TemplatesApi.md#templates_read) | **GET** /templates/{uuid}/ | Retrieve a Template
*SignRequestClient::WebhooksApi* | [**webhooks_create**](docs/WebhooksApi.md#webhooks_create) | **POST** /webhooks/ | Create a Webhook
*SignRequestClient::WebhooksApi* | [**webhooks_delete**](docs/WebhooksApi.md#webhooks_delete) | **DELETE** /webhooks/{uuid}/ | Delete a Webhook
*SignRequestClient::WebhooksApi* | [**webhooks_list**](docs/WebhooksApi.md#webhooks_list) | **GET** /webhooks/ | Retrieve a list of Webhooks
*SignRequestClient::WebhooksApi* | [**webhooks_partial_update**](docs/WebhooksApi.md#webhooks_partial_update) | **PATCH** /webhooks/{uuid}/ | Partially update a Webhook
*SignRequestClient::WebhooksApi* | [**webhooks_read**](docs/WebhooksApi.md#webhooks_read) | **GET** /webhooks/{uuid}/ | Retrieve a Webhook
*SignRequestClient::WebhooksApi* | [**webhooks_update**](docs/WebhooksApi.md#webhooks_update) | **PUT** /webhooks/{uuid}/ | Update a Webhook


## Documentation for Models

 - [SignRequestClient::AuthToken](docs/AuthToken.md)
 - [SignRequestClient::Document](docs/Document.md)
 - [SignRequestClient::DocumentAttachment](docs/DocumentAttachment.md)
 - [SignRequestClient::DocumentSearch](docs/DocumentSearch.md)
 - [SignRequestClient::DocumentSignerTemplateConf](docs/DocumentSignerTemplateConf.md)
 - [SignRequestClient::Event](docs/Event.md)
 - [SignRequestClient::FileFromSf](docs/FileFromSf.md)
 - [SignRequestClient::InlineDocumentSignerIntegrationData](docs/InlineDocumentSignerIntegrationData.md)
 - [SignRequestClient::InlineIntegrationData](docs/InlineIntegrationData.md)
 - [SignRequestClient::InlinePrefillTags](docs/InlinePrefillTags.md)
 - [SignRequestClient::InlineResponse200](docs/InlineResponse200.md)
 - [SignRequestClient::InlineResponse2001](docs/InlineResponse2001.md)
 - [SignRequestClient::InlineResponse2002](docs/InlineResponse2002.md)
 - [SignRequestClient::InlineResponse2003](docs/InlineResponse2003.md)
 - [SignRequestClient::InlineResponse2004](docs/InlineResponse2004.md)
 - [SignRequestClient::InlineResponse2005](docs/InlineResponse2005.md)
 - [SignRequestClient::InlineResponse2006](docs/InlineResponse2006.md)
 - [SignRequestClient::InlineResponse2007](docs/InlineResponse2007.md)
 - [SignRequestClient::InlineResponse2008](docs/InlineResponse2008.md)
 - [SignRequestClient::InlineResponse2009](docs/InlineResponse2009.md)
 - [SignRequestClient::InlineResponse201](docs/InlineResponse201.md)
 - [SignRequestClient::InlineResponse2011](docs/InlineResponse2011.md)
 - [SignRequestClient::InlineSignRequest](docs/InlineSignRequest.md)
 - [SignRequestClient::InlineTeam](docs/InlineTeam.md)
 - [SignRequestClient::InlineTeamMember](docs/InlineTeamMember.md)
 - [SignRequestClient::InviteMember](docs/InviteMember.md)
 - [SignRequestClient::Placeholder](docs/Placeholder.md)
 - [SignRequestClient::RequiredAttachment](docs/RequiredAttachment.md)
 - [SignRequestClient::SignRequest](docs/SignRequest.md)
 - [SignRequestClient::SignRequestQuickCreate](docs/SignRequestQuickCreate.md)
 - [SignRequestClient::Signer](docs/Signer.md)
 - [SignRequestClient::SignerAttachment](docs/SignerAttachment.md)
 - [SignRequestClient::SignerInputs](docs/SignerInputs.md)
 - [SignRequestClient::SigningLog](docs/SigningLog.md)
 - [SignRequestClient::Team](docs/Team.md)
 - [SignRequestClient::TeamMember](docs/TeamMember.md)
 - [SignRequestClient::Template](docs/Template.md)
 - [SignRequestClient::User](docs/User.md)
 - [SignRequestClient::WebhookSubscription](docs/WebhookSubscription.md)

