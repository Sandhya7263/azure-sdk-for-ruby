# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::CustomVision::Training::V1_0
  module Models
    #
    # Model object.
    #
    #
    class ImageIdCreateEntry

      include MsRestAzure

      # @return
      attr_accessor :id

      # @return
      attr_accessor :tag_ids

      # @return [Array<Region>]
      attr_accessor :regions


      #
      # Mapper for ImageIdCreateEntry class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImageIdCreateEntry',
          type: {
            name: 'Composite',
            class_name: 'ImageIdCreateEntry',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              tag_ids: {
                required: false,
                serialized_name: 'tagIds',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'UuidElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              regions: {
                required: false,
                serialized_name: 'regions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RegionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Region'
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
