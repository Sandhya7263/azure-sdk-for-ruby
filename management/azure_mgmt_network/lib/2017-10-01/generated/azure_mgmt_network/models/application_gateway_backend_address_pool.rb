# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_10_01
  module Models
    #
    # Backend Address Pool of an application gateway.
    #
    class ApplicationGatewayBackendAddressPool < SubResource

      include MsRestAzure

      # @return [Array<NetworkInterfaceIPConfiguration>] Collection of
      # references to IPs defined in network interfaces.
      attr_accessor :backend_ipconfigurations

      # @return [Array<ApplicationGatewayBackendAddress>] Backend addresses
      attr_accessor :backend_addresses

      # @return [String] Provisioning state of the backend address pool
      # resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] Resource that is unique within a resource group. This
      # name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for ApplicationGatewayBackendAddressPool class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayBackendAddressPool',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayBackendAddressPool',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              backend_ipconfigurations: {
                required: false,
                serialized_name: 'properties.backendIPConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NetworkInterfaceIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkInterfaceIPConfiguration'
                      }
                  }
                }
              },
              backend_addresses: {
                required: false,
                serialized_name: 'properties.backendAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayBackendAddressElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayBackendAddress'
                      }
                  }
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
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
