# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # API details.
    #
    class ApiContract < ApiEntityBaseContract

      include MsRestAzure

      # @return [String] API identifier path: /apis/{apiId}
      attr_accessor :id

      # @return [String] API name.
      attr_accessor :name

      # @return [String] Absolute URL of the backend service implementing this
      # API.
      attr_accessor :service_url

      # @return [String] Relative URL uniquely identifying this API and all of
      # its resource paths within the API Management service instance. It is
      # appended to the API endpoint base URL specified during the service
      # instance creation to form a public URL for this API.
      attr_accessor :path

      # @return [Array<ApiProtocolContract>] Describes on which protocols the
      # operations in this API can be invoked.
      attr_accessor :protocols


      #
      # Mapper for ApiContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApiContract',
          type: {
            name: 'Composite',
            class_name: 'ApiContract',
            model_properties: {
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              authentication_settings: {
                required: false,
                serialized_name: 'authenticationSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AuthenticationSettingsContract'
                }
              },
              subscription_key_parameter_names: {
                required: false,
                serialized_name: 'subscriptionKeyParameterNames',
                type: {
                  name: 'Composite',
                  class_name: 'SubscriptionKeyParameterNamesContract'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ApiTypeContract'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 300,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              service_url: {
                required: true,
                serialized_name: 'serviceUrl',
                constraints: {
                  MaxLength: 2000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              path: {
                required: true,
                serialized_name: 'path',
                constraints: {
                  MaxLength: 400,
                  MinLength: 0
                },
                type: {
                  name: 'String'
                }
              },
              protocols: {
                required: true,
                serialized_name: 'protocols',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApiProtocolContractElementType',
                      type: {
                        name: 'Enum',
                        module: 'ApiProtocolContract'
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
