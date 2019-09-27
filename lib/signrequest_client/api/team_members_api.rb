=begin
#SignRequest API

#API for SignRequest.com

OpenAPI spec version: v1
Contact: tech-support@signrequest.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'

module SignRequestClient
  class TeamMembersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve a list of Team Members
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :is_active 
    # @option opts [String] :is_owner 
    # @option opts [String] :is_admin 
    # @option opts [String] :user__email 
    # @option opts [String] :user__first_name 
    # @option opts [String] :user__last_name 
    # @option opts [Integer] :page A page number within the paginated result set.
    # @option opts [Integer] :limit Number of results to return per page.
    # @return [InlineResponse2006]
    def team_members_list(opts = {})
      data, _status_code, _headers = team_members_list_with_http_info(opts)
      data
    end

    # Retrieve a list of Team Members
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :is_active 
    # @option opts [String] :is_owner 
    # @option opts [String] :is_admin 
    # @option opts [String] :user__email 
    # @option opts [String] :user__first_name 
    # @option opts [String] :user__last_name 
    # @option opts [Integer] :page A page number within the paginated result set.
    # @option opts [Integer] :limit Number of results to return per page.
    # @return [Array<(InlineResponse2006, Fixnum, Hash)>] InlineResponse2006 data, response status code and response headers
    def team_members_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamMembersApi.team_members_list ...'
      end
      # resource path
      local_var_path = '/team-members/'

      # query parameters
      query_params = {}
      query_params[:'is_active'] = opts[:'is_active'] if !opts[:'is_active'].nil?
      query_params[:'is_owner'] = opts[:'is_owner'] if !opts[:'is_owner'].nil?
      query_params[:'is_admin'] = opts[:'is_admin'] if !opts[:'is_admin'].nil?
      query_params[:'user__email'] = opts[:'user__email'] if !opts[:'user__email'].nil?
      query_params[:'user__first_name'] = opts[:'user__first_name'] if !opts[:'user__first_name'].nil?
      query_params[:'user__last_name'] = opts[:'user__last_name'] if !opts[:'user__last_name'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
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
        :return_type => 'InlineResponse2006')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamMembersApi#team_members_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a Team Member
    # 
    # @param uuid 
    # @param [Hash] opts the optional parameters
    # @return [TeamMember]
    def team_members_read(uuid, opts = {})
      data, _status_code, _headers = team_members_read_with_http_info(uuid, opts)
      data
    end

    # Retrieve a Team Member
    # 
    # @param uuid 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TeamMember, Fixnum, Hash)>] TeamMember data, response status code and response headers
    def team_members_read_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamMembersApi.team_members_read ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling TeamMembersApi.team_members_read"
      end
      # resource path
      local_var_path = '/team-members/{uuid}/'.sub('{' + 'uuid' + '}', uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
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
        :return_type => 'TeamMember')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamMembersApi#team_members_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
