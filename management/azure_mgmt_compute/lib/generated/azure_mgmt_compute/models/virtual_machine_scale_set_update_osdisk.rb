# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes virtual machine scale set operating system disk Update Object.
    # This should be used for Updating VMSS OS Disk.
    #
    class VirtualMachineScaleSetUpdateOSDisk

      include MsRestAzure

      # @return [CachingTypes] The caching type. Possible values include:
      # 'None', 'ReadOnly', 'ReadWrite'
      attr_accessor :caching

      # @return [VirtualHardDisk] The Source User Image VirtualHardDisk. This
      # VirtualHardDisk will be copied before using it to attach to the Virtual
      # Machine. If SourceImage is provided, the destination VirtualHardDisk
      # should not exist.
      attr_accessor :image

      # @return [Array<String>] The list of virtual hard disk container uris.
      attr_accessor :vhd_containers

      # @return [VirtualMachineScaleSetManagedDiskParameters] The managed disk
      # parameters.
      attr_accessor :managed_disk


      #
      # Mapper for VirtualMachineScaleSetUpdateOSDisk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetUpdateOSDisk',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetUpdateOSDisk',
            model_properties: {
              caching: {
                required: false,
                serialized_name: 'caching',
                type: {
                  name: 'Enum',
                  module: 'CachingTypes'
                }
              },
              image: {
                required: false,
                serialized_name: 'image',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualHardDisk'
                }
              },
              vhd_containers: {
                required: false,
                serialized_name: 'vhdContainers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              managed_disk: {
                required: false,
                serialized_name: 'managedDisk',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetManagedDiskParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end