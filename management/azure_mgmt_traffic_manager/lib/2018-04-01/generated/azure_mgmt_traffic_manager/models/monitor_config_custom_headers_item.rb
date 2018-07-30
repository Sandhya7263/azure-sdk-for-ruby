# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2018_04_01
  module Models
    #
    # Custom header name and value.
    #
    class MonitorConfigCustomHeadersItem

      include MsRestAzure

      # @return [String] Header name.
      attr_accessor :name

      # @return [String] Header value.
      attr_accessor :value


      #
      # Mapper for MonitorConfigCustomHeadersItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MonitorConfig_customHeadersItem',
          type: {
            name: 'Composite',
            class_name: 'MonitorConfigCustomHeadersItem',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
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