# SignRequestClient::SignrequestsApi

All URIs are relative to *https://signrequest.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**signrequests_cancel_signrequest**](SignrequestsApi.md#signrequests_cancel_signrequest) | **POST** /signrequests/{uuid}/cancel_signrequest/ | 
[**signrequests_create**](SignrequestsApi.md#signrequests_create) | **POST** /signrequests/ | 
[**signrequests_list**](SignrequestsApi.md#signrequests_list) | **GET** /signrequests/ | 
[**signrequests_read**](SignrequestsApi.md#signrequests_read) | **GET** /signrequests/{uuid}/ | 
[**signrequests_resend_signrequest_email**](SignrequestsApi.md#signrequests_resend_signrequest_email) | **POST** /signrequests/{uuid}/resend_signrequest_email/ | 


# **signrequests_cancel_signrequest**
> SignRequest signrequests_cancel_signrequest(uuid, data)





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

api_instance = SignRequestClient::SignrequestsApi.new

uuid = "uuid_example" # String | 

data = SignRequestClient::SignRequest.new # SignRequest | 


begin
  result = api_instance.signrequests_cancel_signrequest(uuid, data)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling SignrequestsApi->signrequests_cancel_signrequest: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 
 **data** | [**SignRequest**](SignRequest.md)|  | 

### Return type

[**SignRequest**](SignRequest.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **signrequests_create**
> SignRequest signrequests_create(data)





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

api_instance = SignRequestClient::SignrequestsApi.new

data = SignRequestClient::SignRequest.new # SignRequest | 


begin
  result = api_instance.signrequests_create(data)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling SignrequestsApi->signrequests_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**SignRequest**](SignRequest.md)|  | 

### Return type

[**SignRequest**](SignRequest.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **signrequests_list**
> InlineResponse2005 signrequests_list(opts)





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

api_instance = SignRequestClient::SignrequestsApi.new

opts = { 
  who: "who_example", # String | 
  from_email: "from_email_example", # String | 
  page: 56, # Integer | A page number within the paginated result set.
  limit: 56 # Integer | Number of results to return per page.
}

begin
  result = api_instance.signrequests_list(opts)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling SignrequestsApi->signrequests_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **who** | **String**|  | [optional] 
 **from_email** | **String**|  | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **signrequests_read**
> SignRequest signrequests_read(uuid)





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

api_instance = SignRequestClient::SignrequestsApi.new

uuid = "uuid_example" # String | 


begin
  result = api_instance.signrequests_read(uuid)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling SignrequestsApi->signrequests_read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 

### Return type

[**SignRequest**](SignRequest.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **signrequests_resend_signrequest_email**
> SignRequest signrequests_resend_signrequest_email(uuid, data)





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

api_instance = SignRequestClient::SignrequestsApi.new

uuid = "uuid_example" # String | 

data = SignRequestClient::SignRequest.new # SignRequest | 


begin
  result = api_instance.signrequests_resend_signrequest_email(uuid, data)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling SignrequestsApi->signrequests_resend_signrequest_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 
 **data** | [**SignRequest**](SignRequest.md)|  | 

### Return type

[**SignRequest**](SignRequest.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



