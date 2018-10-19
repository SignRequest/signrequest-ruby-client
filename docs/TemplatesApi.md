# SignRequestClient::TemplatesApi

All URIs are relative to *https://signrequest.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**templates_list**](TemplatesApi.md#templates_list) | **GET** /templates/ | Retrieve a list of Templates
[**templates_read**](TemplatesApi.md#templates_read) | **GET** /templates/{uuid}/ | Retrieve a Template


# **templates_list**
> InlineResponse2008 templates_list(opts)

Retrieve a list of Templates



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

api_instance = SignRequestClient::TemplatesApi.new

opts = { 
  page: 56, # Integer | A page number within the paginated result set.
  limit: 56 # Integer | Number of results to return per page.
}

begin
  #Retrieve a list of Templates
  result = api_instance.templates_list(opts)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling TemplatesApi->templates_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **templates_read**
> Template templates_read(uuid)

Retrieve a Template



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

api_instance = SignRequestClient::TemplatesApi.new

uuid = "uuid_example" # String | 


begin
  #Retrieve a Template
  result = api_instance.templates_read(uuid)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling TemplatesApi->templates_read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 

### Return type

[**Template**](Template.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



