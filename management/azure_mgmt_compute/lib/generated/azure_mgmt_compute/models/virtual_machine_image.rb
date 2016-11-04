# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a Virtual Machine Image.
    #
    class VirtualMachineImage < VirtualMachineImageResource

      include MsRestAzure

      # @return [PurchasePlan]
      attr_accessor :plan

      # @return [OSDiskImage]
      attr_accessor :os_disk_image

      # @return [Array<DataDiskImage>]
      attr_accessor :data_disk_images


      #
      # Mapper for VirtualMachineImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineImage',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineImage',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              plan: {
                required: false,
                serialized_name: 'properties.plan',
                type: {
                  name: 'Composite',
                  class_name: 'PurchasePlan'
                }
              },
              os_disk_image: {
                required: false,
                serialized_name: 'properties.osDiskImage',
                type: {
                  name: 'Composite',
                  class_name: 'OSDiskImage'
                }
              },
              data_disk_images: {
                required: false,
                serialized_name: 'properties.dataDiskImages',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DataDiskImageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataDiskImage'
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
