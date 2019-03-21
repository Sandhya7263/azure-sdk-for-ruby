# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::CustomVision::Training::V3_0
  module Models
    #
    # Represents performance data for a particular tag in a trained iteration.
    #
    class TagPerformance

      include MsRestAzure

      # @return
      attr_accessor :id

      # @return [String]
      attr_accessor :name

      # @return [Float] Gets the precision.
      attr_accessor :precision

      # @return [Float] Gets the standard deviation for the precision.
      attr_accessor :precision_std_deviation

      # @return [Float] Gets the recall.
      attr_accessor :recall

      # @return [Float] Gets the standard deviation for the recall.
      attr_accessor :recall_std_deviation

      # @return [Float] Gets the average precision when applicable.
      attr_accessor :average_precision


      #
      # Mapper for TagPerformance class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TagPerformance',
          type: {
            name: 'Composite',
            class_name: 'TagPerformance',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              precision: {
                required: false,
                read_only: true,
                serialized_name: 'precision',
                type: {
                  name: 'Double'
                }
              },
              precision_std_deviation: {
                required: false,
                read_only: true,
                serialized_name: 'precisionStdDeviation',
                type: {
                  name: 'Double'
                }
              },
              recall: {
                required: false,
                read_only: true,
                serialized_name: 'recall',
                type: {
                  name: 'Double'
                }
              },
              recall_std_deviation: {
                required: false,
                read_only: true,
                serialized_name: 'recallStdDeviation',
                type: {
                  name: 'Double'
                }
              },
              average_precision: {
                required: false,
                read_only: true,
                serialized_name: 'averagePrecision',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
