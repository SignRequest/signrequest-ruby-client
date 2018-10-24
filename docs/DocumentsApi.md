# SignRequestClient::DocumentsApi

All URIs are relative to *https://signrequest.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**documents_create**](DocumentsApi.md#documents_create) | **POST** /documents/ | Create a Document
[**documents_delete**](DocumentsApi.md#documents_delete) | **DELETE** /documents/{uuid}/ | Delete a Document
[**documents_list**](DocumentsApi.md#documents_list) | **GET** /documents/ | Retrieve a list of Documents
[**documents_read**](DocumentsApi.md#documents_read) | **GET** /documents/{uuid}/ | Retrieve a Document


# **documents_create**
> Document documents_create(data)

Create a Document



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

api_instance = SignRequestClient::DocumentsApi.new

data = SignRequestClient::Document.new # Document | 


begin
  #Create a Document
  result = api_instance.documents_create(data)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling DocumentsApi->documents_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Document**](Document.md)|  | 

### Return type

[**Document**](Document.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **documents_delete**
> documents_delete(uuid)

Delete a Document



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

api_instance = SignRequestClient::DocumentsApi.new

uuid = "uuid_example" # String | 


begin
  #Delete a Document
  api_instance.documents_delete(uuid)
rescue SignRequestClient::ApiError => e
  puts "Exception when calling DocumentsApi->documents_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **documents_list**
> InlineResponse2003 documents_list(opts)

Retrieve a list of Documents



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

api_instance = SignRequestClient::DocumentsApi.new

opts = { 
  external_id: "external_id_example", # String | 
  signrequest__who: "signrequest__who_example", # String | 
  signrequest__from_email: "signrequest__from_email_example", # String | 
  status: "status_example", # String | 
  user__email: "user__email_example", # String | 
  user__first_name: "user__first_name_example", # String | 
  user__last_name: "user__last_name_example", # String | 
  created: "created_example", # String | 
  modified: "modified_example", # String | 
  page: 56, # Integer | A page number within the paginated result set.
  limit: 56 # Integer | Number of results to return per page.
}

begin
  #Retrieve a list of Documents
  result = api_instance.documents_list(opts)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling DocumentsApi->documents_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_id** | **String**|  | [optional] 
 **signrequest__who** | **String**|  | [optional] 
 **signrequest__from_email** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 
 **user__email** | **String**|  | [optional] 
 **user__first_name** | **String**|  | [optional] 
 **user__last_name** | **String**|  | [optional] 
 **created** | **String**|  | [optional] 
 **modified** | **String**|  | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **documents_read**
> Document documents_read(uuid)

Retrieve a Document



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

api_instance = SignRequestClient::DocumentsApi.new

uuid = "uuid_example" # String | 


begin
  #Retrieve a Document
  result = api_instance.documents_read(uuid)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling DocumentsApi->documents_read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 

### Return type

[**Document**](Document.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



