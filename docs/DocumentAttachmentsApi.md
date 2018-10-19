# SignRequestClient::DocumentAttachmentsApi

All URIs are relative to *https://signrequest.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**document_attachments_create**](DocumentAttachmentsApi.md#document_attachments_create) | **POST** /document-attachments/ | Create a Document Attachment
[**document_attachments_list**](DocumentAttachmentsApi.md#document_attachments_list) | **GET** /document-attachments/ | Retrieve a list of Document Attachments
[**document_attachments_read**](DocumentAttachmentsApi.md#document_attachments_read) | **GET** /document-attachments/{uuid}/ | Retrieve a Document Attachment


# **document_attachments_create**
> DocumentAttachment document_attachments_create(data)

Create a Document Attachment



### Example
```ruby
# load the gem
require 'signrequest_client'
# setup authorization
SignRequestClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SignRequestClient::DocumentAttachmentsApi.new

data = SignRequestClient::DocumentAttachment.new # DocumentAttachment | 


begin
  #Create a Document Attachment
  result = api_instance.document_attachments_create(data)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling DocumentAttachmentsApi->document_attachments_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**DocumentAttachment**](DocumentAttachment.md)|  | 

### Return type

[**DocumentAttachment**](DocumentAttachment.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **document_attachments_list**
> InlineResponse2001 document_attachments_list(opts)

Retrieve a list of Document Attachments



### Example
```ruby
# load the gem
require 'signrequest_client'
# setup authorization
SignRequestClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SignRequestClient::DocumentAttachmentsApi.new

opts = { 
  document__uuid: "document__uuid_example", # String | 
  document__external_id: "document__external_id_example", # String | 
  created: "created_example", # String | 
  page: 56, # Integer | A page number within the paginated result set.
  limit: 56 # Integer | Number of results to return per page.
}

begin
  #Retrieve a list of Document Attachments
  result = api_instance.document_attachments_list(opts)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling DocumentAttachmentsApi->document_attachments_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document__uuid** | **String**|  | [optional] 
 **document__external_id** | **String**|  | [optional] 
 **created** | **String**|  | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **document_attachments_read**
> DocumentAttachment document_attachments_read(uuid)

Retrieve a Document Attachment



### Example
```ruby
# load the gem
require 'signrequest_client'
# setup authorization
SignRequestClient.configure do |config|
  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SignRequestClient::DocumentAttachmentsApi.new

uuid = "uuid_example" # String | 


begin
  #Retrieve a Document Attachment
  result = api_instance.document_attachments_read(uuid)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling DocumentAttachmentsApi->document_attachments_read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 

### Return type

[**DocumentAttachment**](DocumentAttachment.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



