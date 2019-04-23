# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_08_01
  module Models
    #
    # Class representing certificate reissue request.
    #
    class ReissueCertificateOrderRequest < ProxyOnlyResource

      include MsRestAzure

      # @return [Integer] Certificate Key Size.
      attr_accessor :key_size

      # @return [Integer] Delay in hours to revoke existing certificate after
      # the new certificate is issued.
      attr_accessor :delay_existing_revoke_in_hours

      # @return [String] Csr to be used for re-key operation.
      attr_accessor :csr

      # @return [Boolean] Should we change the ASC type (from managed private
      # key to external private key and vice versa).
      attr_accessor :is_private_key_external


      #
      # Mapper for ReissueCertificateOrderRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ReissueCertificateOrderRequest',
          type: {
            name: 'Composite',
            class_name: 'ReissueCertificateOrderRequest',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              key_size: {
                required: false,
                serialized_name: 'properties.keySize',
                type: {
                  name: 'Number'
                }
              },
              delay_existing_revoke_in_hours: {
                required: false,
                serialized_name: 'properties.delayExistingRevokeInHours',
                type: {
                  name: 'Number'
                }
              },
              csr: {
                required: false,
                serialized_name: 'properties.csr',
                type: {
                  name: 'String'
                }
              },
              is_private_key_external: {
                required: false,
                serialized_name: 'properties.isPrivateKeyExternal',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
