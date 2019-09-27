=begin
#SignRequest API

#API for SignRequest.com

OpenAPI spec version: v1
Contact: tech-support@signrequest.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'date'

module SignRequestClient
  class WebhookSubscription
    attr_accessor :url

    attr_accessor :uuid

    # Optional name to easily identify what webhook is used for
    attr_accessor :name

    attr_accessor :event_type

    attr_accessor :callback_url

    attr_accessor :integration

    attr_accessor :team

    attr_accessor :created

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'url' => :'url',
        :'uuid' => :'uuid',
        :'name' => :'name',
        :'event_type' => :'event_type',
        :'callback_url' => :'callback_url',
        :'integration' => :'integration',
        :'team' => :'team',
        :'created' => :'created'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'url' => :'String',
        :'uuid' => :'String',
        :'name' => :'String',
        :'event_type' => :'String',
        :'callback_url' => :'String',
        :'integration' => :'String',
        :'team' => :'DocumentTeam',
        :'created' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'event_type')
        self.event_type = attributes[:'event_type']
      end

      if attributes.has_key?(:'callback_url')
        self.callback_url = attributes[:'callback_url']
      end

      if attributes.has_key?(:'integration')
        self.integration = attributes[:'integration']
      end

      if attributes.has_key?(:'team')
        self.team = attributes[:'team']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@uuid.nil? && @uuid.to_s.length < 1
        invalid_properties.push('invalid value for "uuid", the character length must be great than or equal to 1.')
      end

      if !@name.nil? && @name.to_s.length > 255
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 255.')
      end

      if @event_type.nil?
        invalid_properties.push('invalid value for "event_type", event_type cannot be nil.')
      end

      if @callback_url.nil?
        invalid_properties.push('invalid value for "callback_url", callback_url cannot be nil.')
      end

      if @callback_url.to_s.length > 2100
        invalid_properties.push('invalid value for "callback_url", the character length must be smaller than or equal to 2100.')
      end

      if @callback_url.to_s.length < 1
        invalid_properties.push('invalid value for "callback_url", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@uuid.nil? && @uuid.to_s.length < 1
      return false if !@name.nil? && @name.to_s.length > 255
      return false if @event_type.nil?
      event_type_validator = EnumAttributeValidator.new('String', ['convert_error', 'converted', 'sending_error', 'sent', 'declined', 'cancelled', 'expired', 'signed', 'viewed', 'downloaded', 'signer_signed', 'signer_email_bounced', 'signer_viewed_email', 'signer_viewed', 'signer_forwarded', 'signer_downloaded', 'signrequest_received'])
      return false unless event_type_validator.valid?(@event_type)
      return false if @callback_url.nil?
      return false if @callback_url.to_s.length > 2100
      return false if @callback_url.to_s.length < 1
      integration_validator = EnumAttributeValidator.new('String', ['mfiles', 'salesforce', 'formdesk', 'zapier', 'txhash'])
      return false unless integration_validator.valid?(@integration)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] uuid Value to be assigned
    def uuid=(uuid)
      if !uuid.nil? && uuid.to_s.length < 1
        fail ArgumentError, 'invalid value for "uuid", the character length must be great than or equal to 1.'
      end

      @uuid = uuid
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 255
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 255.'
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_type Object to be assigned
    def event_type=(event_type)
      validator = EnumAttributeValidator.new('String', ['convert_error', 'converted', 'sending_error', 'sent', 'declined', 'cancelled', 'expired', 'signed', 'viewed', 'downloaded', 'signer_signed', 'signer_email_bounced', 'signer_viewed_email', 'signer_viewed', 'signer_forwarded', 'signer_downloaded', 'signrequest_received'])
      unless validator.valid?(event_type)
        fail ArgumentError, 'invalid value for "event_type", must be one of #{validator.allowable_values}.'
      end
      @event_type = event_type
    end

    # Custom attribute writer method with validation
    # @param [Object] callback_url Value to be assigned
    def callback_url=(callback_url)
      if callback_url.nil?
        fail ArgumentError, 'callback_url cannot be nil'
      end

      if callback_url.to_s.length > 2100
        fail ArgumentError, 'invalid value for "callback_url", the character length must be smaller than or equal to 2100.'
      end

      if callback_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "callback_url", the character length must be great than or equal to 1.'
      end

      @callback_url = callback_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] integration Object to be assigned
    def integration=(integration)
      validator = EnumAttributeValidator.new('String', ['mfiles', 'salesforce', 'formdesk', 'zapier', 'txhash'])
      unless validator.valid?(integration)
        fail ArgumentError, 'invalid value for "integration", must be one of #{validator.allowable_values}.'
      end
      @integration = integration
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          url == o.url &&
          uuid == o.uuid &&
          name == o.name &&
          event_type == o.event_type &&
          callback_url == o.callback_url &&
          integration == o.integration &&
          team == o.team &&
          created == o.created
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [url, uuid, name, event_type, callback_url, integration, team, created].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SignRequestClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
