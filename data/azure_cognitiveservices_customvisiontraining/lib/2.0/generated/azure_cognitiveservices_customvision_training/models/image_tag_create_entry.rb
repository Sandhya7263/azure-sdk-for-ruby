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
    class ImageTagCreateEntry

      include MsRestAzure

      # @return
      attr_accessor :image_id

      # @return
      attr_accessor :tag_id


      #
      # Mapper for ImageTagCreateEntry class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImageTagCreateEntry',
          type: {
            name: 'Composite',
            class_name: 'ImageTagCreateEntry',
            model_properties: {
              image_id: {
                required: false,
                serialized_name: 'imageId',
                type: {
                  name: 'String'
                }
              },
              tag_id: {
                required: false,
                serialized_name: 'tagId',
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
