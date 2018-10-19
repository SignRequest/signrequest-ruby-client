# SignRequestClient::ApiTokensApi

All URIs are relative to *https://signrequest.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_tokens_create**](ApiTokensApi.md#api_tokens_create) | **POST** /api-tokens/ | Create an API token
[**api_tokens_delete**](ApiTokensApi.md#api_tokens_delete) | **DELETE** /api-tokens/{key}/ | Delete an API token
[**api_tokens_list**](ApiTokensApi.md#api_tokens_list) | **GET** /api-tokens/ | Retrieve a list of API tokens
[**api_tokens_read**](ApiTokensApi.md#api_tokens_read) | **GET** /api-tokens/{key}/ | Retrieve an API token


# **api_tokens_create**
> AuthToken api_tokens_create(data)

Create an API token

You can create an API token in the [team api settings page](/#/teams). It is also possible to get or create a token using the REST api with your login credentials.

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

api_instance = SignRequestClient::ApiTokensApi.new

data = SignRequestClient::AuthToken.new # AuthToken | 


begin
  #Create an API token
  result = api_instance.api_tokens_create(data)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling ApiTokensApi->api_tokens_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**AuthToken**](AuthToken.md)|  | 

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **api_tokens_delete**
> api_tokens_delete(key)

Delete an API token



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

api_instance = SignRequestClient::ApiTokensApi.new

key = "key_example" # String | A unique value identifying this api token.


begin
  #Delete an API token
  api_instance.api_tokens_delete(key)
rescue SignRequestClient::ApiError => e
  puts "Exception when calling ApiTokensApi->api_tokens_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| A unique value identifying this api token. | 

### Return type

nil (empty response body)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **api_tokens_list**
> InlineResponse200 api_tokens_list(opts)

Retrieve a list of API tokens



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

api_instance = SignRequestClient::ApiTokensApi.new

opts = { 
  page: 56, # Integer | A page number within the paginated result set.
  limit: 56 # Integer | Number of results to return per page.
}

begin
  #Retrieve a list of API tokens
  result = api_instance.api_tokens_list(opts)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling ApiTokensApi->api_tokens_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **api_tokens_read**
> AuthToken api_tokens_read(key)

Retrieve an API token



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

api_instance = SignRequestClient::ApiTokensApi.new

key = "key_example" # String | A unique value identifying this api token.


begin
  #Retrieve an API token
  result = api_instance.api_tokens_read(key)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling ApiTokensApi->api_tokens_read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| A unique value identifying this api token. | 

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



