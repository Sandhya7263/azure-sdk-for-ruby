# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2016_05_15
  module Models
    #
    # Properties of an environment deployment.
    #
    class EnvironmentDeploymentProperties

      include MsRestAzure

      # @return [String] The Azure Resource Manager template's identifier.
      attr_accessor :arm_template_id

      # @return [Array<ArmTemplateParameterProperties>] The parameters of the
      # Azure Resource Manager template.
      attr_accessor :parameters


      #
      # Mapper for EnvironmentDeploymentProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EnvironmentDeploymentProperties',
          type: {
            name: 'Composite',
            class_name: 'EnvironmentDeploymentProperties',
            model_properties: {
              arm_template_id: {
                required: false,
                serialized_name: 'armTemplateId',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ArmTemplateParameterPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ArmTemplateParameterProperties'
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
