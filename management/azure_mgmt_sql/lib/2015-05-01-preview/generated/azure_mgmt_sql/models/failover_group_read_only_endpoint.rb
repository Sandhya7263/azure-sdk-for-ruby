# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # Read-only endpoint of the failover group instance.
    #
    class FailoverGroupReadOnlyEndpoint

      include MsRestAzure

      # @return [ReadOnlyEndpointFailoverPolicy] Failover policy of the
      # read-only endpoint for the failover group. Possible values include:
      # 'Disabled', 'Enabled'
      attr_accessor :failover_policy


      #
      # Mapper for FailoverGroupReadOnlyEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FailoverGroupReadOnlyEndpoint',
          type: {
            name: 'Composite',
            class_name: 'FailoverGroupReadOnlyEndpoint',
            model_properties: {
              failover_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'failoverPolicy',
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
