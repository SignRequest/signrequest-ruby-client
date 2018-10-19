# SignRequestClient::TeamMembersApi

All URIs are relative to *https://signrequest.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**team_members_list**](TeamMembersApi.md#team_members_list) | **GET** /team-members/ | Retrieve a list of Team Members
[**team_members_read**](TeamMembersApi.md#team_members_read) | **GET** /team-members/{uuid}/ | Retrieve a Team Member


# **team_members_list**
> InlineResponse2006 team_members_list(opts)

Retrieve a list of Team Members



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

api_instance = SignRequestClient::TeamMembersApi.new

opts = { 
  is_active: "is_active_example", # String | 
  is_owner: "is_owner_example", # String | 
  is_admin: "is_admin_example", # String | 
  user__email: "user__email_example", # String | 
  user__first_name: "user__first_name_example", # String | 
  user__last_name: "user__last_name_example", # String | 
  page: 56, # Integer | A page number within the paginated result set.
  limit: 56 # Integer | Number of results to return per page.
}

begin
  #Retrieve a list of Team Members
  result = api_instance.team_members_list(opts)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling TeamMembersApi->team_members_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **is_active** | **String**|  | [optional] 
 **is_owner** | **String**|  | [optional] 
 **is_admin** | **String**|  | [optional] 
 **user__email** | **String**|  | [optional] 
 **user__first_name** | **String**|  | [optional] 
 **user__last_name** | **String**|  | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **team_members_read**
> TeamMember team_members_read(uuid)

Retrieve a Team Member



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

api_instance = SignRequestClient::TeamMembersApi.new

uuid = "uuid_example" # String | 


begin
  #Retrieve a Team Member
  result = api_instance.team_members_read(uuid)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling TeamMembersApi->team_members_read: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 

### Return type

[**TeamMember**](TeamMember.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



