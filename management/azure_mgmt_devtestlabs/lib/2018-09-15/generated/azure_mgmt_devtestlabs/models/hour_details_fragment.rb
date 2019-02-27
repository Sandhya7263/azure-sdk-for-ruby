# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Properties of an hourly schedule.
    #
    class HourDetailsFragment

      include MsRestAzure

      # @return [Integer] Minutes of the hour the schedule will run.
      attr_accessor :minute


      #
      # Mapper for HourDetailsFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HourDetailsFragment',
          type: {
            name: 'Composite',
            class_name: 'HourDetailsFragment',
            model_properties: {
              minute: {
                required: false,
                serialized_name: 'minute',
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
