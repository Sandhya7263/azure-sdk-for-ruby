# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2016_04_02
  module Models
    #
    # Output of custom domain validation.
    #
    class ValidateCustomDomainOutput

      include MsRestAzure

      # @return [Boolean] Indicates whether the custom domain is validated or
      # not.
      attr_accessor :custom_domain_validated

      # @return [String] The reason why the custom domain is not valid.
      attr_accessor :reason

      # @return [String] The message describing why the custom domain is not
      # valid.
      attr_accessor :message


      #
      # Mapper for ValidateCustomDomainOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ValidateCustomDomainOutput',
          type: {
            name: 'Composite',
            class_name: 'ValidateCustomDomainOutput',
            model_properties: {
              custom_domain_validated: {
                required: false,
                serialized_name: 'customDomainValidated',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
