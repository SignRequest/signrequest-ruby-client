=begin
#SignRequest API

#API for SignRequest.com

OpenAPI spec version: v1
Contact: tech-support@signrequest.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SignRequestClient
  class DocumentsSearchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # ## Search interface for fast (autocomplete) searching of documents.  This can be useful to have your users search for a document in your interface.  Document names are tokenized on whitespace, hyphens and underscores to also match partial document names.  *Normal search:*  - ?**q**={{query}}  *Autocomplete search:*  - ?**autocomplete**={{partial query}}  *Search in document name:*  - ?**name**={{query}}  *Available (extra) filters:*  - ?**subdomain**={{ team_subdomain }} or use this endpoint with team_subdomain.signrequest.com (when not provided only personal documents are shown) - ?**signer_emails**={{ signer@email.com }} (will filter documents that an email needed to sign/approve) - ?**status**={{ si }} - ?**who**={{ mo }}  To include multiple values for a filter field separate the values with a pipe (|). For example to only search for completed documents use **status=se|vi** (sent and viewed).  *Pagination:*  - ?**page**={{ page_number: default 1 }} - ?**limit**={{ limit results: default 10, max 100 }}  *Format:*  By default json is returned, to export data as csv or xls use the format parameter.  - ?**format**=csv - ?**format**=xls  For csv and xls the data can also be exported with each signer on a separate row. In this mode also the signer inputs that have an *external_id* specified on a tag will be exported. All external_id's found will be exported as columns. To use this mode add the **signer_data** parameter.  - ?**format**=csv&**signer_data**=1 - ?**format**=xls&**signer_data**=1  Note that all documents are only ordered by **created** (newest first) when **q**, **autocomplete** or **name** are not used, else they are ordered by the strenght of the match.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page A page number within the paginated result set.
    # @option opts [Integer] :limit Number of results to return per page.
    # @return [InlineResponse2002]
    def documents_search_list(opts = {})
      data, _status_code, _headers = documents_search_list_with_http_info(opts)
      return data
    end

    # 
    # ## Search interface for fast (autocomplete) searching of documents.  This can be useful to have your users search for a document in your interface.  Document names are tokenized on whitespace, hyphens and underscores to also match partial document names.  *Normal search:*  - ?**q**&#x3D;{{query}}  *Autocomplete search:*  - ?**autocomplete**&#x3D;{{partial query}}  *Search in document name:*  - ?**name**&#x3D;{{query}}  *Available (extra) filters:*  - ?**subdomain**&#x3D;{{ team_subdomain }} or use this endpoint with team_subdomain.signrequest.com (when not provided only personal documents are shown) - ?**signer_emails**&#x3D;{{ signer@email.com }} (will filter documents that an email needed to sign/approve) - ?**status**&#x3D;{{ si }} - ?**who**&#x3D;{{ mo }}  To include multiple values for a filter field separate the values with a pipe (|). For example to only search for completed documents use **status&#x3D;se|vi** (sent and viewed).  *Pagination:*  - ?**page**&#x3D;{{ page_number: default 1 }} - ?**limit**&#x3D;{{ limit results: default 10, max 100 }}  *Format:*  By default json is returned, to export data as csv or xls use the format parameter.  - ?**format**&#x3D;csv - ?**format**&#x3D;xls  For csv and xls the data can also be exported with each signer on a separate row. In this mode also the signer inputs that have an *external_id* specified on a tag will be exported. All external_id&#39;s found will be exported as columns. To use this mode add the **signer_data** parameter.  - ?**format**&#x3D;csv&amp;**signer_data**&#x3D;1 - ?**format**&#x3D;xls&amp;**signer_data**&#x3D;1  Note that all documents are only ordered by **created** (newest first) when **q**, **autocomplete** or **name** are not used, else they are ordered by the strenght of the match.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page A page number within the paginated result set.
    # @option opts [Integer] :limit Number of results to return per page.
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def documents_search_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DocumentsSearchApi.documents_search_list ..."
      end
      # resource path
      local_var_path = "/documents-search/"

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/csv', 'application/vnd.ms-excel'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2002')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsSearchApi#documents_search_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # ## Search interface for fast (autocomplete) searching of documents.  This can be useful to have your users search for a document in your interface.  Document names are tokenized on whitespace, hyphens and underscores to also match partial document names.  *Normal search:*  - ?**q**={{query}}  *Autocomplete search:*  - ?**autocomplete**={{partial query}}  *Search in document name:*  - ?**name**={{query}}  *Available (extra) filters:*  - ?**subdomain**={{ team_subdomain }} or use this endpoint with team_subdomain.signrequest.com (when not provided only personal documents are shown) - ?**signer_emails**={{ signer@email.com }} (will filter documents that an email needed to sign/approve) - ?**status**={{ si }} - ?**who**={{ mo }}  To include multiple values for a filter field separate the values with a pipe (|). For example to only search for completed documents use **status=se|vi** (sent and viewed).  *Pagination:*  - ?**page**={{ page_number: default 1 }} - ?**limit**={{ limit results: default 10, max 100 }}  *Format:*  By default json is returned, to export data as csv or xls use the format parameter.  - ?**format**=csv - ?**format**=xls  For csv and xls the data can also be exported with each signer on a separate row. In this mode also the signer inputs that have an *external_id* specified on a tag will be exported. All external_id's found will be exported as columns. To use this mode add the **signer_data** parameter.  - ?**format**=csv&**signer_data**=1 - ?**format**=xls&**signer_data**=1  Note that all documents are only ordered by **created** (newest first) when **q**, **autocomplete** or **name** are not used, else they are ordered by the strenght of the match.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [DocumentSearch]
    def documents_search_read(id, opts = {})
      data, _status_code, _headers = documents_search_read_with_http_info(id, opts)
      return data
    end

    # 
    # ## Search interface for fast (autocomplete) searching of documents.  This can be useful to have your users search for a document in your interface.  Document names are tokenized on whitespace, hyphens and underscores to also match partial document names.  *Normal search:*  - ?**q**&#x3D;{{query}}  *Autocomplete search:*  - ?**autocomplete**&#x3D;{{partial query}}  *Search in document name:*  - ?**name**&#x3D;{{query}}  *Available (extra) filters:*  - ?**subdomain**&#x3D;{{ team_subdomain }} or use this endpoint with team_subdomain.signrequest.com (when not provided only personal documents are shown) - ?**signer_emails**&#x3D;{{ signer@email.com }} (will filter documents that an email needed to sign/approve) - ?**status**&#x3D;{{ si }} - ?**who**&#x3D;{{ mo }}  To include multiple values for a filter field separate the values with a pipe (|). For example to only search for completed documents use **status&#x3D;se|vi** (sent and viewed).  *Pagination:*  - ?**page**&#x3D;{{ page_number: default 1 }} - ?**limit**&#x3D;{{ limit results: default 10, max 100 }}  *Format:*  By default json is returned, to export data as csv or xls use the format parameter.  - ?**format**&#x3D;csv - ?**format**&#x3D;xls  For csv and xls the data can also be exported with each signer on a separate row. In this mode also the signer inputs that have an *external_id* specified on a tag will be exported. All external_id&#39;s found will be exported as columns. To use this mode add the **signer_data** parameter.  - ?**format**&#x3D;csv&amp;**signer_data**&#x3D;1 - ?**format**&#x3D;xls&amp;**signer_data**&#x3D;1  Note that all documents are only ordered by **created** (newest first) when **q**, **autocomplete** or **name** are not used, else they are ordered by the strenght of the match.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentSearch, Fixnum, Hash)>] DocumentSearch data, response status code and response headers
    def documents_search_read_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DocumentsSearchApi.documents_search_read ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DocumentsSearchApi.documents_search_read"
      end
      # resource path
      local_var_path = "/documents-search/{id}/".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/csv', 'application/vnd.ms-excel'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Token']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentSearch')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsSearchApi#documents_search_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end