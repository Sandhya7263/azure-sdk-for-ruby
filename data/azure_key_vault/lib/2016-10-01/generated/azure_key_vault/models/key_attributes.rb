# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V2016_10_01
  module Models
    #
    # The attributes of a key managed by the key vault service.
    #
    class KeyAttributes < Attributes

      include MsRestAzure

      # @return [DeletionRecoveryLevel] Reflects the deletion recovery level
      # currently in effect for keys in the current vault. If it contains
      # 'Purgeable' the key can be permanently deleted by a privileged user;
      # otherwise, only the system can purge the key, at the end of the
      # retention interval. Possible values include: 'Purgeable',
      # 'Recoverable+Purgeable', 'Recoverable',
      # 'Recoverable+ProtectedSubscription'
      attr_accessor :recovery_level


      #
      # Mapper for KeyAttributes class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyAttributes',
          type: {
            name: 'Composite',
            class_name: 'KeyAttributes',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              not_before: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nbf',
                type: {
                  name: 'UnixTime'
                }
              },
              expires: {
                client_side_validation: true,
                required: false,
                serialized_name: 'exp',
                type: {
                  name: 'UnixTime'
                }
              },
              created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'created',
                type: {
                  name: 'UnixTime'
                }
              },
              updated: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'updated',
                type: {
                  name: 'UnixTime'
                }
              },
              recovery_level: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'recoveryLevel',
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