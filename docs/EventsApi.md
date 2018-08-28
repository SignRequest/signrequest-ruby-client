# SignRequestClient::EventsApi

All URIs are relative to *https://signrequest.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**events_list**](EventsApi.md#events_list) | **GET** /events/ | 
[**events_read**](EventsApi.md#events_read) | **GET** /events/{id}/ | 


# **events_list**
> InlineResponse2004 events_list(opts)





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

api_instance = SignRequestClient::EventsApi.new

opts = { 
  document__uuid: "document__uuid_example", # String | 
  document__external_id: "document__external_id_example", # String | 
  document__signrequest__who: "document__signrequest__who_example", # String | 
  document__signrequest__from_email: "document__signrequest__from_email_example", # String | 
  document__status: "document__status_example", # String | 
  document__user__email: "document__user__email_example", # String | 
  document__user__first_name: "document__user__first_name_example", # String | 
  document__user__last_name: "document__user__last_name_example", # String | 
  delivered: "delivered_example", # String | 
  delivered_on: "delivered_on_example", # String | 
  timestamp: "timestamp_example", # String | 
  status: "status_example", # String | 
  event_type: "event_type_example", # String | 
  page: 56, # Integer | A page number within the paginated result set.
  limit: 56 # Integer | Number of results to return per page.
}

begin
  result = api_instance.events_list(opts)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling EventsApi->events_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document__uuid** | **String**|  | [optional] 
 **document__external_id** | **String**|  | [optional] 
 **document__signrequest__who** | **String**|  | [optional] 
 **document__signrequest__from_email** | **String**|  | [optional] 
 **document__status** | **String**|  | [optional] 
 **document__user__email** | **String**|  | [optional] 
 **document__user__first_name** | **String**|  | [optional] 
 **document__user__last_name** | **String**|  | [optional] 
 **delivered** | **String**|  | [optional] 
 **delivered_on** | **String**|  | [optional] 
 **timestamp** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 
 **event_type** | **String**|  | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **events_read**
> Event events_read(id)





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

api_instance = SignRequestClient::EventsApi.new

id = 56 # Integer | A unique integer value identifying this event.


begin
  result = api_instance.events_read(id)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling EventsApi->events_read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| A unique integer value identifying this event. | 

### Return type

[**Event**](Event.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



