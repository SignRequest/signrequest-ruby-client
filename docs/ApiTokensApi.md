# SignRequestClient::ApiTokensApi

All URIs are relative to *https://signrequest.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_tokens_list**](ApiTokensApi.md#api_tokens_list) | **GET** /api-tokens/ | Retrieve a list of API tokens


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



