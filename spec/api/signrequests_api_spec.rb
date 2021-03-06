=begin
#SignRequest API

#API for SignRequest.com

OpenAPI spec version: v1
Contact: tech-support@signrequest.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SignRequestClient::SignrequestsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SignrequestsApi' do
  before do
    # run before each test
    @instance = SignRequestClient::SignrequestsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SignrequestsApi' do
    it 'should create an instance of SignrequestsApi' do
      expect(@instance).to be_instance_of(SignRequestClient::SignrequestsApi)
    end
  end

  # unit tests for signrequests_cancel_signrequest
  # 
  # 
  # @param uuid 
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [SignRequest]
  describe 'signrequests_cancel_signrequest test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signrequests_create
  # 
  # 
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [SignRequest]
  describe 'signrequests_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signrequests_list
  # 
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :who 
  # @option opts [String] :from_email 
  # @option opts [Integer] :page A page number within the paginated result set.
  # @option opts [Integer] :limit Number of results to return per page.
  # @return [InlineResponse2005]
  describe 'signrequests_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signrequests_read
  # 
  # 
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [SignRequest]
  describe 'signrequests_read test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signrequests_resend_signrequest_email
  # 
  # 
  # @param uuid 
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [SignRequest]
  describe 'signrequests_resend_signrequest_email test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
