# SignRequestClient::DocumentAttachmentsApi

All URIs are relative to *https://signrequest.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**document_attachments_create**](DocumentAttachmentsApi.md#document_attachments_create) | **POST** /document-attachments/ | 
[**document_attachments_list**](DocumentAttachmentsApi.md#document_attachments_list) | **GET** /document-attachments/ | 
[**document_attachments_read**](DocumentAttachmentsApi.md#document_attachments_read) | **GET** /document-attachments/{uuid}/ | 


# **document_attachments_create**
> DocumentAttachment document_attachments_create(data)





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



