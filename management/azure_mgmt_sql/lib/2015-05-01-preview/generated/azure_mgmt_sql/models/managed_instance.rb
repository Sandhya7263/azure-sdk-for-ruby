# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # An Azure SQL managed instance.
    #
    class ManagedInstance < TrackedResource

      include MsRestAzure

      # @return [ResourceIdentity] The Azure Active Directory identity of the
      # managed instance.
      attr_accessor :identity

      # @return [Sku] Managed instance sku
      attr_accessor :sku

      # @return [String] The fully qualified domain name of the managed
      # instance.
      attr_accessor :fully_qualified_domain_name

      # @return [String] Administrator username for the managed instance. Can
      # only be specified when the managed instance is being created (and is
      # required for creation).
      attr_accessor :administrator_login

      # @return [String] The administrator login password (required for managed
      # instance creation).
      attr_accessor :administrator_login_password

      # @return [String] Subnet resource ID for the managed instance.
      attr_accessor :subnet_id

      # @return [String] The state of the managed instance.
      attr_accessor :state

      # @return [String] The license type. Possible values are
      # 'LicenseIncluded' and 'BasePrice'.
      attr_accessor :license_type

      # @return [Integer] The number of VCores.
      attr_accessor :v_cores

      # @return [Integer] The maximum storage size in GB.
      attr_accessor :storage_size_in_gb

      # @return [String] Collation of the managed instance.
      attr_accessor :collation

      # @return [String] The Dns Zone that the managed instance is in.
      attr_accessor :dns_zone

      # @return [String] The resource id of another managed instance whose DNS
      # zone this managed instance will share after creation.
      attr_accessor :dns_zone_partner

      # @return [Boolean] Whether or not the public data endpoint is enabled.
      attr_accessor :public_data_endpoint_enabled

      # @return [ManagedInstanceProxyOverride] Connection type used for
      # connecting to the instance. Possible values include: 'Proxy',
      # 'Redirect', 'Default'
      attr_accessor :proxy_override

      # @return [String] Id of the timezone. Allowed values are timezones
      # supported by Windows.
      # Windows keeps details on supported timezones, including the id, in
      # registry under
      # KEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time
      # Zones.
      # You can get those registry values via SQL Server by querying SELECT
      # name AS timezone_id FROM sys.time_zone_info.
      # List of Ids can also be obtained by executing
      # [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell.
      # An example of valid timezone id is "Pacific Standard Time" or "W.
      # Europe Standard Time".
      attr_accessor :timezone_id


      #
      # Mapper for ManagedInstance class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ManagedInstance',
          type: {
            name: 'Composite',
            class_name: 'ManagedInstance',
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
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              identity: {
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceIdentity'
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              fully_qualified_domain_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.fullyQualifiedDomainName',
                type: {
                  name: 'String'
                }
              },
              administrator_login: {
                required: false,
                serialized_name: 'properties.administratorLogin',
                type: {
                  name: 'String'
                }
              },
              administrator_login_password: {
                required: false,
                serialized_name: 'properties.administratorLoginPassword',
                type: {
                  name: 'String'
                }
              },
              subnet_id: {
                required: false,
                serialized_name: 'properties.subnetId',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              license_type: {
                required: false,
                serialized_name: 'properties.licenseType',
                type: {
                  name: 'String'
                }
              },
              v_cores: {
                required: false,
                serialized_name: 'properties.vCores',
                type: {
                  name: 'Number'
                }
              },
              storage_size_in_gb: {
                required: false,
                serialized_name: 'properties.storageSizeInGB',
                type: {
                  name: 'Number'
                }
              },
              collation: {
                required: false,
                serialized_name: 'properties.collation',
                type: {
                  name: 'String'
                }
              },
              dns_zone: {
                required: false,
                read_only: true,
                serialized_name: 'properties.dnsZone',
                type: {
                  name: 'String'
                }
              },
              dns_zone_partner: {
                required: false,
                serialized_name: 'properties.dnsZonePartner',
                type: {
                  name: 'String'
                }
              },
              public_data_endpoint_enabled: {
                required: false,
                serialized_name: 'properties.publicDataEndpointEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              proxy_override: {
                required: false,
                serialized_name: 'properties.proxyOverride',
                type: {
                  name: 'String'
                }
              },
              timezone_id: {
                required: false,
                serialized_name: 'properties.timezoneId',
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
