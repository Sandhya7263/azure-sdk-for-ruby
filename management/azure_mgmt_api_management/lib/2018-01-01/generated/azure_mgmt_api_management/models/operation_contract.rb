# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Api Operation details.
    #
    class OperationContract < Resource

      include MsRestAzure

      # @return [Array<ParameterContract>] Collection of URL template
      # parameters.
      attr_accessor :template_parameters

      # @return [String] Description of the operation. May include HTML
      # formatting tags.
      attr_accessor :description

      # @return [RequestContract] An entity containing request details.
      attr_accessor :request

      # @return [Array<ResponseContract>] Array of Operation responses.
      attr_accessor :responses

      # @return [String] Operation Policies
      attr_accessor :policies

      # @return [String] Operation Name.
      attr_accessor :display_name

      # @return [String] A Valid HTTP Operation Method. Typical Http Methods
      # like GET, PUT, POST but not limited by only them.
      attr_accessor :method

      # @return [String] Relative URL template identifying the target resource
      # for this operation. May include parameters. Example:
      # /customers/{cid}/orders/{oid}/?date={date}
      attr_accessor :url_template


      #
      # Mapper for OperationContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationContract',
          type: {
            name: 'Composite',
            class_name: 'OperationContract',
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              template_parameters: {
                required: false,
                serialized_name: 'properties.templateParameters',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ParameterContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterContract'
                      }
                  }
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                constraints: {
                  MaxLength: 1000
                },
                type: {
                  name: 'String'
                }
              },
              request: {
                required: false,
                serialized_name: 'properties.request',
                type: {
                  name: 'Composite',
                  class_name: 'RequestContract'
                }
              },
              responses: {
                required: false,
                serialized_name: 'properties.responses',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ResponseContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResponseContract'
                      }
                  }
                }
              },
              policies: {
                required: false,
                serialized_name: 'properties.policies',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: true,
                serialized_name: 'properties.displayName',
                constraints: {
                  MaxLength: 300,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              method: {
                required: true,
                serialized_name: 'properties.method',
                type: {
                  name: 'String'
                }
              },
              url_template: {
                required: true,
                serialized_name: 'properties.urlTemplate',
                constraints: {
                  MaxLength: 1000,
                  MinLength: 1
                },
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
