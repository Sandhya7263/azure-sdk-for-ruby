# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_02_01
  module Models
    #
    # ExpressRouteCrossConnection resource
    #
    class ExpressRouteCrossConnection < Resource

      include MsRestAzure

      # @return [String] The name of the primary  port.
      attr_accessor :primary_azure_port

      # @return [String] The name of the secondary  port.
      attr_accessor :secondary_azure_port

      # @return [Integer] The identifier of the circuit traffic.
      attr_accessor :s_tag

      # @return [String] The peering location of the ExpressRoute circuit.
      attr_accessor :peering_location

      # @return [Integer] The circuit bandwidth In Mbps.
      attr_accessor :bandwidth_in_mbps

      # @return [ExpressRouteCircuitReference] The ExpressRouteCircuit
      attr_accessor :express_route_circuit

      # @return [ServiceProviderProvisioningState] The provisioning state of
      # the circuit in the connectivity provider system. Possible values are
      # 'NotProvisioned', 'Provisioning', 'Provisioned'. Possible values
      # include: 'NotProvisioned', 'Provisioning', 'Provisioned',
      # 'Deprovisioning'
      attr_accessor :service_provider_provisioning_state

      # @return [String] Additional read only notes set by the connectivity
      # provider.
      attr_accessor :service_provider_notes

      # @return [String] Gets the provisioning state of the public IP resource.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [Array<ExpressRouteCrossConnectionPeering>] The list of
      # peerings.
      attr_accessor :peerings

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated.
      attr_accessor :etag


      #
      # Mapper for ExpressRouteCrossConnection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCrossConnection',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCrossConnection',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              primary_azure_port: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.primaryAzurePort',
                type: {
                  name: 'String'
                }
              },
              secondary_azure_port: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.secondaryAzurePort',
                type: {
                  name: 'String'
                }
              },
              s_tag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.sTag',
                type: {
                  name: 'Number'
                }
              },
              peering_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peeringLocation',
                type: {
                  name: 'String'
                }
              },
              bandwidth_in_mbps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.bandwidthInMbps',
                type: {
                  name: 'Number'
                }
              },
              express_route_circuit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.expressRouteCircuit',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteCircuitReference'
                }
              },
              service_provider_provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceProviderProvisioningState',
                type: {
                  name: 'String'
                }
              },
              service_provider_notes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceProviderNotes',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              peerings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peerings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExpressRouteCrossConnectionPeeringElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteCrossConnectionPeering'
                      }
                  }
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
