# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Schema of the Data property of an EventGridEvent for a
    # Microsoft.EventGrid.SubscriptionValidationEvent.
    #
    class SubscriptionValidationEventData

      include MsRestAzure

      # @return [String] The validation code sent by Azure Event Grid to
      # validate an event subscription. To complete the validation handshake,
      # the subscriber must either respond with this validation code as part of
      # the validation response, or perform a GET request on the validationUrl
      # (available starting version 2018-05-01-preview).
      attr_accessor :validation_code

      # @return [String] The validation URL sent by Azure Event Grid (available
      # starting version 2018-05-01-preview). To complete the validation
      # handshake, the subscriber must either respond with the validationCode
      # as part of the validation response, or perform a GET request on the
      # validationUrl (available starting version 2018-05-01-preview).
      attr_accessor :validation_url


      #
      # Mapper for SubscriptionValidationEventData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SubscriptionValidationEventData',
          type: {
            name: 'Composite',
            class_name: 'SubscriptionValidationEventData',
            model_properties: {
              validation_code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'validationCode',
                type: {
                  name: 'String'
                }
              },
              validation_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'validationUrl',
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