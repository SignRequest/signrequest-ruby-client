# SignRequestClient::WebhooksApi

All URIs are relative to *https://signrequest.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhooks_create**](WebhooksApi.md#webhooks_create) | **POST** /webhooks/ | Create a Webhook
[**webhooks_delete**](WebhooksApi.md#webhooks_delete) | **DELETE** /webhooks/{uuid}/ | Delete a Webhook
[**webhooks_list**](WebhooksApi.md#webhooks_list) | **GET** /webhooks/ | Retrieve a list of Webhooks
[**webhooks_partial_update**](WebhooksApi.md#webhooks_partial_update) | **PATCH** /webhooks/{uuid}/ | Partially update a Webhook
[**webhooks_read**](WebhooksApi.md#webhooks_read) | **GET** /webhooks/{uuid}/ | Retrieve a Webhook
[**webhooks_update**](WebhooksApi.md#webhooks_update) | **PUT** /webhooks/{uuid}/ | Update a Webhook


# **webhooks_create**
> WebhookSubscription webhooks_create(data)

Create a Webhook



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

api_instance = SignRequestClient::WebhooksApi.new

data = SignRequestClient::WebhookSubscription.new # WebhookSubscription | 


begin
  #Create a Webhook
  result = api_instance.webhooks_create(data)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling WebhooksApi->webhooks_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**WebhookSubscription**](WebhookSubscription.md)|  | 

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **webhooks_delete**
> webhooks_delete(uuid, )

Delete a Webhook



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

api_instance = SignRequestClient::WebhooksApi.new

uuid = 'uuid_example' # String | 


begin
  #Delete a Webhook
  api_instance.webhooks_delete(uuid, )
rescue SignRequestClient::ApiError => e
  puts "Exception when calling WebhooksApi->webhooks_delete: #{e}"
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



# **webhooks_list**
> InlineResponse2009 webhooks_list(opts)

Retrieve a list of Webhooks



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

api_instance = SignRequestClient::WebhooksApi.new

opts = { 
  page: 56, # Integer | A page number within the paginated result set.
  limit: 56 # Integer | Number of results to return per page.
}

begin
  #Retrieve a list of Webhooks
  result = api_instance.webhooks_list(opts)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling WebhooksApi->webhooks_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **webhooks_partial_update**
> WebhookSubscription webhooks_partial_update(uuid, data)

Partially update a Webhook



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

api_instance = SignRequestClient::WebhooksApi.new

uuid = 'uuid_example' # String | 

data = SignRequestClient::WebhookSubscription.new # WebhookSubscription | 


begin
  #Partially update a Webhook
  result = api_instance.webhooks_partial_update(uuid, data)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling WebhooksApi->webhooks_partial_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 
 **data** | [**WebhookSubscription**](WebhookSubscription.md)|  | 

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **webhooks_read**
> WebhookSubscription webhooks_read(uuid, )

Retrieve a Webhook



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

api_instance = SignRequestClient::WebhooksApi.new

uuid = 'uuid_example' # String | 


begin
  #Retrieve a Webhook
  result = api_instance.webhooks_read(uuid, )
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling WebhooksApi->webhooks_read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **webhooks_update**
> WebhookSubscription webhooks_update(uuid, data)

Update a Webhook



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

api_instance = SignRequestClient::WebhooksApi.new

uuid = 'uuid_example' # String | 

data = SignRequestClient::WebhookSubscription.new # WebhookSubscription | 


begin
  #Update a Webhook
  result = api_instance.webhooks_update(uuid, data)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling WebhooksApi->webhooks_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 
 **data** | [**WebhookSubscription**](WebhookSubscription.md)|  | 

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



