# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::CustomVision::Training::V1_0
  module Models
    #
    # Represents a project
    #
    class Project

      include MsRestAzure

      # @return Gets the project id
      attr_accessor :id

      # @return [String] Gets or sets the name of the project
      attr_accessor :name

      # @return [String] Gets or sets the description of the project
      attr_accessor :description

      # @return [ProjectSettings] Gets or sets the project settings
      attr_accessor :settings

      # @return [DateTime] Gets the date this project was created
      attr_accessor :created

      # @return [DateTime] Gets the date this project was last modified
      attr_accessor :last_modified

      # @return [String] Gets the thumbnail url representing the project
      attr_accessor :thumbnail_uri


      #
      # Mapper for Project class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Project',
          type: {
            name: 'Composite',
            class_name: 'Project',
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
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              settings: {
                required: false,
                serialized_name: 'settings',
                type: {
                  name: 'Composite',
                  class_name: 'ProjectSettings'
                }
              },
              created: {
                required: false,
                read_only: true,
                serialized_name: 'created',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified: {
                required: false,
                read_only: true,
                serialized_name: 'lastModified',
                type: {
                  name: 'DateTime'
                }
              },
              thumbnail_uri: {
                required: false,
                read_only: true,
                serialized_name: 'thumbnailUri',
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
