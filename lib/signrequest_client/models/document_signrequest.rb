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
  class DocumentSignrequest
    # Email of user sending the SignRequest (must be a validated email)
    attr_accessor :from_email

    # Name to be used in the `From` email header, e.g. `{from_email_name} <no-reply@signrequest.com>`
    attr_accessor :from_email_name

    # Have the sender of a SignRequest prepare the document before sending the request out, see: [prepare using the web interface](#section/Preparing-a-document/Prepare-using-the-web-interface)
    attr_accessor :is_being_prepared

    attr_accessor :prepare_url

    # URL at which SignRequest will redirect to when a document is signed
    attr_accessor :redirect_url

    # URL at which SignRequest will redirect to when a document is declined
    attr_accessor :redirect_url_declined

    attr_accessor :required_attachments

    # Disable uploading/adding of attachments
    attr_accessor :disable_attachments

    # Disable usage of signatures generated by typing (text)
    attr_accessor :disable_text_signatures

    # Disable adding of text
    attr_accessor :disable_text

    # Disable adding of dates
    attr_accessor :disable_date

    # Disable all SignRequest status emails as well as the email that contains the signed documents
    attr_accessor :disable_emails

    # Disable usage of uploaded signatures (images)
    attr_accessor :disable_upload_signatures

    # Disables storing timestamp proof hashes in blockchain integrations.
    attr_accessor :disable_blockchain_proof

    # When true a text message verification is needed before the signer can see the document
    attr_accessor :text_message_verification_locked

    # Subject of SignRequest email
    attr_accessor :subject

    # Message to include in SignRequest email, may contain the following html tags: `a`, `abbr`, `acronym`, `b`, `blockquote`, `code`, `em`, `i`, `ul`, `li`, `ol`, and `strong`
    attr_accessor :message

    # `m`: only me, `mo`: me and others, `o`: only others
    attr_accessor :who

    # Automatically remind signers to sign a document
    attr_accessor :send_reminders

    attr_accessor :signers

    attr_accessor :uuid

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
        :'from_email' => :'from_email',
        :'from_email_name' => :'from_email_name',
        :'is_being_prepared' => :'is_being_prepared',
        :'prepare_url' => :'prepare_url',
        :'redirect_url' => :'redirect_url',
        :'redirect_url_declined' => :'redirect_url_declined',
        :'required_attachments' => :'required_attachments',
        :'disable_attachments' => :'disable_attachments',
        :'disable_text_signatures' => :'disable_text_signatures',
        :'disable_text' => :'disable_text',
        :'disable_date' => :'disable_date',
        :'disable_emails' => :'disable_emails',
        :'disable_upload_signatures' => :'disable_upload_signatures',
        :'disable_blockchain_proof' => :'disable_blockchain_proof',
        :'text_message_verification_locked' => :'text_message_verification_locked',
        :'subject' => :'subject',
        :'message' => :'message',
        :'who' => :'who',
        :'send_reminders' => :'send_reminders',
        :'signers' => :'signers',
        :'uuid' => :'uuid'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'from_email' => :'String',
        :'from_email_name' => :'String',
        :'is_being_prepared' => :'BOOLEAN',
        :'prepare_url' => :'String',
        :'redirect_url' => :'String',
        :'redirect_url_declined' => :'String',
        :'required_attachments' => :'Array<RequiredAttachment>',
        :'disable_attachments' => :'BOOLEAN',
        :'disable_text_signatures' => :'BOOLEAN',
        :'disable_text' => :'BOOLEAN',
        :'disable_date' => :'BOOLEAN',
        :'disable_emails' => :'BOOLEAN',
        :'disable_upload_signatures' => :'BOOLEAN',
        :'disable_blockchain_proof' => :'BOOLEAN',
        :'text_message_verification_locked' => :'BOOLEAN',
        :'subject' => :'String',
        :'message' => :'String',
        :'who' => :'String',
        :'send_reminders' => :'BOOLEAN',
        :'signers' => :'Array<Signer>',
        :'uuid' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'from_email')
        self.from_email = attributes[:'from_email']
      end

      if attributes.has_key?(:'from_email_name')
        self.from_email_name = attributes[:'from_email_name']
      end

      if attributes.has_key?(:'is_being_prepared')
        self.is_being_prepared = attributes[:'is_being_prepared']
      end

      if attributes.has_key?(:'prepare_url')
        self.prepare_url = attributes[:'prepare_url']
      end

      if attributes.has_key?(:'redirect_url')
        self.redirect_url = attributes[:'redirect_url']
      end

      if attributes.has_key?(:'redirect_url_declined')
        self.redirect_url_declined = attributes[:'redirect_url_declined']
      end

      if attributes.has_key?(:'required_attachments')
        if (value = attributes[:'required_attachments']).is_a?(Array)
          self.required_attachments = value
        end
      end

      if attributes.has_key?(:'disable_attachments')
        self.disable_attachments = attributes[:'disable_attachments']
      end

      if attributes.has_key?(:'disable_text_signatures')
        self.disable_text_signatures = attributes[:'disable_text_signatures']
      end

      if attributes.has_key?(:'disable_text')
        self.disable_text = attributes[:'disable_text']
      end

      if attributes.has_key?(:'disable_date')
        self.disable_date = attributes[:'disable_date']
      end

      if attributes.has_key?(:'disable_emails')
        self.disable_emails = attributes[:'disable_emails']
      end

      if attributes.has_key?(:'disable_upload_signatures')
        self.disable_upload_signatures = attributes[:'disable_upload_signatures']
      end

      if attributes.has_key?(:'disable_blockchain_proof')
        self.disable_blockchain_proof = attributes[:'disable_blockchain_proof']
      end

      if attributes.has_key?(:'text_message_verification_locked')
        self.text_message_verification_locked = attributes[:'text_message_verification_locked']
      end

      if attributes.has_key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.has_key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.has_key?(:'who')
        self.who = attributes[:'who']
      end

      if attributes.has_key?(:'send_reminders')
        self.send_reminders = attributes[:'send_reminders']
      end

      if attributes.has_key?(:'signers')
        if (value = attributes[:'signers']).is_a?(Array)
          self.signers = value
        end
      end

      if attributes.has_key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@from_email.nil? && @from_email.to_s.length < 1
        invalid_properties.push('invalid value for "from_email", the character length must be great than or equal to 1.')
      end

      if !@from_email_name.nil? && @from_email_name.to_s.length < 1
        invalid_properties.push('invalid value for "from_email_name", the character length must be great than or equal to 1.')
      end

      if !@prepare_url.nil? && @prepare_url.to_s.length < 1
        invalid_properties.push('invalid value for "prepare_url", the character length must be great than or equal to 1.')
      end

      if !@redirect_url.nil? && @redirect_url.to_s.length < 1
        invalid_properties.push('invalid value for "redirect_url", the character length must be great than or equal to 1.')
      end

      if !@redirect_url_declined.nil? && @redirect_url_declined.to_s.length < 1
        invalid_properties.push('invalid value for "redirect_url_declined", the character length must be great than or equal to 1.')
      end

      if !@subject.nil? && @subject.to_s.length < 1
        invalid_properties.push('invalid value for "subject", the character length must be great than or equal to 1.')
      end

      if !@message.nil? && @message.to_s.length < 1
        invalid_properties.push('invalid value for "message", the character length must be great than or equal to 1.')
      end

      if !@uuid.nil? && @uuid.to_s.length < 1
        invalid_properties.push('invalid value for "uuid", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@from_email.nil? && @from_email.to_s.length < 1
      return false if !@from_email_name.nil? && @from_email_name.to_s.length < 1
      return false if !@prepare_url.nil? && @prepare_url.to_s.length < 1
      return false if !@redirect_url.nil? && @redirect_url.to_s.length < 1
      return false if !@redirect_url_declined.nil? && @redirect_url_declined.to_s.length < 1
      return false if !@subject.nil? && @subject.to_s.length < 1
      return false if !@message.nil? && @message.to_s.length < 1
      who_validator = EnumAttributeValidator.new('String', ['m', 'mo', 'o'])
      return false unless who_validator.valid?(@who)
      return false if !@uuid.nil? && @uuid.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] from_email Value to be assigned
    def from_email=(from_email)
      if !from_email.nil? && from_email.to_s.length < 1
        fail ArgumentError, 'invalid value for "from_email", the character length must be great than or equal to 1.'
      end

      @from_email = from_email
    end

    # Custom attribute writer method with validation
    # @param [Object] from_email_name Value to be assigned
    def from_email_name=(from_email_name)
      if !from_email_name.nil? && from_email_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "from_email_name", the character length must be great than or equal to 1.'
      end

      @from_email_name = from_email_name
    end

    # Custom attribute writer method with validation
    # @param [Object] prepare_url Value to be assigned
    def prepare_url=(prepare_url)
      if !prepare_url.nil? && prepare_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "prepare_url", the character length must be great than or equal to 1.'
      end

      @prepare_url = prepare_url
    end

    # Custom attribute writer method with validation
    # @param [Object] redirect_url Value to be assigned
    def redirect_url=(redirect_url)
      if !redirect_url.nil? && redirect_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "redirect_url", the character length must be great than or equal to 1.'
      end

      @redirect_url = redirect_url
    end

    # Custom attribute writer method with validation
    # @param [Object] redirect_url_declined Value to be assigned
    def redirect_url_declined=(redirect_url_declined)
      if !redirect_url_declined.nil? && redirect_url_declined.to_s.length < 1
        fail ArgumentError, 'invalid value for "redirect_url_declined", the character length must be great than or equal to 1.'
      end

      @redirect_url_declined = redirect_url_declined
    end

    # Custom attribute writer method with validation
    # @param [Object] subject Value to be assigned
    def subject=(subject)
      if !subject.nil? && subject.to_s.length < 1
        fail ArgumentError, 'invalid value for "subject", the character length must be great than or equal to 1.'
      end

      @subject = subject
    end

    # Custom attribute writer method with validation
    # @param [Object] message Value to be assigned
    def message=(message)
      if !message.nil? && message.to_s.length < 1
        fail ArgumentError, 'invalid value for "message", the character length must be great than or equal to 1.'
      end

      @message = message
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] who Object to be assigned
    def who=(who)
      validator = EnumAttributeValidator.new('String', ['m', 'mo', 'o'])
      unless validator.valid?(who)
        fail ArgumentError, 'invalid value for "who", must be one of #{validator.allowable_values}.'
      end
      @who = who
    end

    # Custom attribute writer method with validation
    # @param [Object] uuid Value to be assigned
    def uuid=(uuid)
      if !uuid.nil? && uuid.to_s.length < 1
        fail ArgumentError, 'invalid value for "uuid", the character length must be great than or equal to 1.'
      end

      @uuid = uuid
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          from_email == o.from_email &&
          from_email_name == o.from_email_name &&
          is_being_prepared == o.is_being_prepared &&
          prepare_url == o.prepare_url &&
          redirect_url == o.redirect_url &&
          redirect_url_declined == o.redirect_url_declined &&
          required_attachments == o.required_attachments &&
          disable_attachments == o.disable_attachments &&
          disable_text_signatures == o.disable_text_signatures &&
          disable_text == o.disable_text &&
          disable_date == o.disable_date &&
          disable_emails == o.disable_emails &&
          disable_upload_signatures == o.disable_upload_signatures &&
          disable_blockchain_proof == o.disable_blockchain_proof &&
          text_message_verification_locked == o.text_message_verification_locked &&
          subject == o.subject &&
          message == o.message &&
          who == o.who &&
          send_reminders == o.send_reminders &&
          signers == o.signers &&
          uuid == o.uuid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [from_email, from_email_name, is_being_prepared, prepare_url, redirect_url, redirect_url_declined, required_attachments, disable_attachments, disable_text_signatures, disable_text, disable_date, disable_emails, disable_upload_signatures, disable_blockchain_proof, text_message_verification_locked, subject, message, who, send_reminders, signers, uuid].hash
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
