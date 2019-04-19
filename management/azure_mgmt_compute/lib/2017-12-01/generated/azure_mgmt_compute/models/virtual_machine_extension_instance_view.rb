# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_12_01
  module Models
    #
    # The instance view of a virtual machine extension.
    #
    class VirtualMachineExtensionInstanceView

      include MsRestAzure

      # @return [String] The virtual machine extension name.
      attr_accessor :name

      # @return [String] Specifies the type of the extension; an example is
      # "CustomScriptExtension".
      attr_accessor :type

      # @return [String] Specifies the version of the script handler.
      attr_accessor :type_handler_version

      # @return [Array<InstanceViewStatus>] The resource status information.
      attr_accessor :substatuses

      # @return [Array<InstanceViewStatus>] The resource status information.
      attr_accessor :statuses


      #
      # Mapper for VirtualMachineExtensionInstanceView class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineExtensionInstanceView',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineExtensionInstanceView',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
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
              },
              type_handler_version: {
                required: false,
                serialized_name: 'typeHandlerVersion',
                type: {
                  name: 'String'
                }
              },
              substatuses: {
                required: false,
                serialized_name: 'substatuses',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'InstanceViewStatusElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InstanceViewStatus'
                      }
                  }
                }
              },
              statuses: {
                required: false,
                serialized_name: 'statuses',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'InstanceViewStatusElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InstanceViewStatus'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
