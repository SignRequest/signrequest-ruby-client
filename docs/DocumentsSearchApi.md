# SignRequestClient::DocumentsSearchApi

All URIs are relative to *https://signrequest.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**documents_search_list**](DocumentsSearchApi.md#documents_search_list) | **GET** /documents-search/ | Search documents


# **documents_search_list**
> InlineResponse2002 documents_search_list(opts)

Search documents

Search interface for fast (autocomplete) searching of documents.  This can be useful to have your users search for a document in your interface.  Document names are tokenized on whitespace, hyphens and underscores to also match partial document names.  *Normal search:*  - ?**q**={{query}}  *Autocomplete search:*  - ?**autocomplete**={{partial query}}  *Search in document name:*  - ?**name**={{query}}  *Available (extra) filters:*  - ?**subdomain**={{ team_subdomain }} or use this endpoint with team_subdomain.signrequest.com (when not provided only personal documents are shown) - ?**signer_emails**={{ signer@email.com }} (will filter documents that an email needed to sign/approve) - ?**status**={{ si }} - ?**who**={{ mo }}  To include multiple values for a filter field separate the values with a pipe (|). For example to only search for completed documents use **status=se|vi** (sent and viewed).  *Pagination:*  - ?**page**={{ page_number: default 1 }} - ?**limit**={{ limit results: default 10, max 100 }}  *Format:*  By default json is returned, to export data as csv or xls use the format parameter.  - ?**format**=csv - ?**format**=xls  For csv and xls the data can also be exported with each signer on a separate row. In this mode also the signer inputs that have an *external_id* specified on a tag will be exported. All external_id's found will be exported as columns. To use this mode add the **signer_data** parameter.  - ?**format**=csv&**signer_data**=1 - ?**format**=xls&**signer_data**=1  Note that all documents are only ordered by **created** (newest first) when **q**, **autocomplete** or **name** are not used, else they are ordered by the strenght of the match.

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

api_instance = SignRequestClient::DocumentsSearchApi.new

opts = { 
  page: 56, # Integer | A page number within the paginated result set.
  limit: 56, # Integer | Number of results to return per page.
  q: "q_example", # String | Normal search query
  autocomplete: "autocomplete_example", # String | Partial search query
  name: "name_example", # String | Document name
  subdomain: "subdomain_example", # String | 
  signer_emails: "signer_emails_example", # String | Email needed to sign/approve
  status: "status_example", # String | `co`: converting, `ne`: new, `se`: sent, `vi`: viewed, `si`: signed, `do`: downloaded, `sd`: signed and downloaded, `ca`: cancelled, `de`: declined, `ec`: error converting, `es`: error sending, `xp`: expired
  who: "who_example", # String | `m`: only me, `mo`: me and others, `o`: only others
  format: "format_example", # String | Export format, can be `json` (default), `csv`, or `xls`
  signer_data: 8.14 # Float | Set to `1` to export with each signer on a separate row
}

begin
  #Search documents
  result = api_instance.documents_search_list(opts)
  p result
rescue SignRequestClient::ApiError => e
  puts "Exception when calling DocumentsSearchApi->documents_search_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **limit** | **Integer**| Number of results to return per page. | [optional] 
 **q** | **String**| Normal search query | [optional] 
 **autocomplete** | **String**| Partial search query | [optional] 
 **name** | **String**| Document name | [optional] 
 **subdomain** | **String**|  | [optional] 
 **signer_emails** | **String**| Email needed to sign/approve | [optional] 
 **status** | **String**| &#x60;co&#x60;: converting, &#x60;ne&#x60;: new, &#x60;se&#x60;: sent, &#x60;vi&#x60;: viewed, &#x60;si&#x60;: signed, &#x60;do&#x60;: downloaded, &#x60;sd&#x60;: signed and downloaded, &#x60;ca&#x60;: cancelled, &#x60;de&#x60;: declined, &#x60;ec&#x60;: error converting, &#x60;es&#x60;: error sending, &#x60;xp&#x60;: expired | [optional] 
 **who** | **String**| &#x60;m&#x60;: only me, &#x60;mo&#x60;: me and others, &#x60;o&#x60;: only others | [optional] 
 **format** | **String**| Export format, can be &#x60;json&#x60; (default), &#x60;csv&#x60;, or &#x60;xls&#x60; | [optional] 
 **signer_data** | **Float**| Set to &#x60;1&#x60; to export with each signer on a separate row | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/csv, application/vnd.ms-excel



