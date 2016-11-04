# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # The status code and count of the virtual machine scale set instance view
    # status summary.
    #
    class VirtualMachineStatusCodeCount

      include MsRestAzure

      # @return [String] the instance view status code.
      attr_accessor :code

      # @return [Integer] the number of instances having a particular status
      # code.
      attr_accessor :count


      #
      # Mapper for VirtualMachineStatusCodeCount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineStatusCodeCount',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineStatusCodeCount',
            model_properties: {
              code: {
                required: false,
                read_only: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              count: {
                required: false,
                read_only: true,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
