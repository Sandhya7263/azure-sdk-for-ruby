# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # Container network interface configruation child resource.
    #
    class ContainerNetworkInterfaceConfiguration < SubResource

      include MsRestAzure

      # @return [Array<IPConfigurationProfile>] A list of ip configurations of
      # the container network interface configuration.
      attr_accessor :ip_configurations

      # @return [Array<SubResource>] A list of container network interfaces
      # created from this container network interface configuration.
      attr_accessor :container_network_interfaces

      # @return [String] The provisioning state of the resource.
      attr_accessor :provisioning_state

      # @return [String] The name of the resource. This name can be used to
      # access the resource.
      attr_accessor :name

      # @return [String] Sub Resource type.
      attr_accessor :type

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for ContainerNetworkInterfaceConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerNetworkInterfaceConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ContainerNetworkInterfaceConfiguration',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              ip_configurations: {
                required: false,
                serialized_name: 'properties.ipConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'IPConfigurationProfileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IPConfigurationProfile'
                      }
                  }
                }
              },
              container_network_interfaces: {
                required: false,
                serialized_name: 'properties.containerNetworkInterfaces',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
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
              }
            }
          }
        }
      end
    end
  end
end
