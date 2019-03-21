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
    class ImageTagCreateBatch

      include MsRestAzure

      # @return [Array<ImageTagCreateEntry>]
      attr_accessor :tags


      #
      # Mapper for ImageTagCreateBatch class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImageTagCreateBatch',
          type: {
            name: 'Composite',
            class_name: 'ImageTagCreateBatch',
            model_properties: {
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ImageTagCreateEntryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ImageTagCreateEntry'
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
