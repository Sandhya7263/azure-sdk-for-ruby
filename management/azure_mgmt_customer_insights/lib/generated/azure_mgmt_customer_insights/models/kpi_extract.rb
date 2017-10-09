# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights
  module Models
    #
    # The KPI extract.
    #
    class KpiExtract

      include MsRestAzure

      # @return [String] KPI extract name.
      attr_accessor :extract_name

      # @return [String] The expression.
      attr_accessor :expression


      #
      # Mapper for KpiExtract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'KpiExtract',
          type: {
            name: 'Composite',
            class_name: 'KpiExtract',
            model_properties: {
              extract_name: {
                required: true,
                serialized_name: 'extractName',
                type: {
                  name: 'String'
                }
              },
              expression: {
                required: true,
                serialized_name: 'expression',
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