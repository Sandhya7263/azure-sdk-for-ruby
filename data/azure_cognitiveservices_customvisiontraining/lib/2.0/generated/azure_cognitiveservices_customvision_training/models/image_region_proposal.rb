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
    class ImageRegionProposal

      include MsRestAzure

      # @return
      attr_accessor :project_id

      # @return
      attr_accessor :image_id

      # @return [Array<RegionProposal>]
      attr_accessor :proposals


      #
      # Mapper for ImageRegionProposal class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImageRegionProposal',
          type: {
            name: 'Composite',
            class_name: 'ImageRegionProposal',
            model_properties: {
              project_id: {
                required: false,
                read_only: true,
                serialized_name: 'projectId',
                type: {
                  name: 'String'
                }
              },
              image_id: {
                required: false,
                read_only: true,
                serialized_name: 'imageId',
                type: {
                  name: 'String'
                }
              },
              proposals: {
                required: false,
                read_only: true,
                serialized_name: 'proposals',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RegionProposalElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RegionProposal'
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
