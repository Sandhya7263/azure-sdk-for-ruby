# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::CustomVision::Prediction::V1_0
  module Models
    #
    # Model object.
    #
    #
    class ImageUrl

      include MsRestAzure

      # @return [String]
      attr_accessor :url


      #
      # Mapper for ImageUrl class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImageUrl',
          type: {
            name: 'Composite',
            class_name: 'ImageUrl',
            model_properties: {
              url: {
                required: false,
                serialized_name: 'url',
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
