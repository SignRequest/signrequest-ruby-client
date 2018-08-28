# SignRequestClient::SignrequestQuickCreateApi

All URIs are relative to *https://signrequest.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**signrequest_quick_create_create**](SignrequestQuickCreateApi.md#signrequest_quick_create_create) | **POST** /signrequest-quick-create/ | 


# **signrequest_quick_create_create**
> SignRequestQuickCreate signrequest_quick_create_create(data)





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

api_instance = SignRequestClient::SignrequestQuickCreateApi.new

data = SignRequestClient::SignRequestQuickCreate.new # SignRequestQuickCreate | 


begin
  result = api_instance.signrequest_quick_create_create(data)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling SignrequestQuickCreateApi->signrequest_quick_create_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**SignRequestQuickCreate**](SignRequestQuickCreate.md)|  | 

### Return type

[**SignRequestQuickCreate**](SignRequestQuickCreate.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



