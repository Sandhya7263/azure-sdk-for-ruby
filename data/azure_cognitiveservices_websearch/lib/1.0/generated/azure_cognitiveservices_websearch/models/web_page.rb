# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::WebSearch::V1_0
  module Models
    #
    # Defines a webpage that is relevant to the query.
    #
    class WebPage < CreativeWork

      include MsRestAzure


      def initialize
        @_type = "WebPage"
      end

      attr_accessor :_type

      # @return [String] The display URL of the webpage. The URL is meant for
      # display purposes only and is not well formed.
      attr_accessor :display_url

      # @return [String] A snippet of text from the webpage that describes its
      # contents.
      attr_accessor :snippet

      # @return [Array<WebPage>] A list of links to related content that Bing
      # found in the website that contains this webpage. The Webpage object in
      # this context includes only the name, url, urlPingSuffix, and snippet
      # fields.
      attr_accessor :deep_links

      # @return [String] The last time that Bing crawled the webpage. The date
      # is in the form, YYYY-MM-DDTHH:MM:SS. For example, 2015-04-13T05:23:39.
      attr_accessor :date_last_crawled

      # @return [Array<WebMetaTag>] A list of search tags that the webpage
      # owner specified on the webpage. The API returns only indexed search
      # tags. The name field of the MetaTag object contains the indexed search
      # tag. Search tags begin with search.* (for example, search.assetId). The
      # content field contains the tag's value.
      attr_accessor :search_tags

      # @return [ImageObject]
      attr_accessor :primary_image_of_page


      #
      # Mapper for WebPage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WebPage',
          type: {
            name: 'Composite',
            class_name: 'WebPage',
            model_properties: {
              _type: {
                client_side_validation: true,
                required: true,
                serialized_name: '_type',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              web_search_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'webSearchUrl',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'url',
                type: {
                  name: 'String'
                }
              },
              image: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'image',
                type: {
                  name: 'Composite',
                  class_name: 'ImageObject'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              bing_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'bingId',
                type: {
                  name: 'String'
                }
              },
              thumbnail_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'thumbnailUrl',
                type: {
                  name: 'String'
                }
              },
              provider: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provider',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ThingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Thing'
                      }
                  }
                }
              },
              text: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              display_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'displayUrl',
                type: {
                  name: 'String'
                }
              },
              snippet: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'snippet',
                type: {
                  name: 'String'
                }
              },
              deep_links: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'deepLinks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WebPageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WebPage'
                      }
                  }
                }
              },
              date_last_crawled: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'dateLastCrawled',
                type: {
                  name: 'String'
                }
              },
              search_tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'searchTags',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WebMetaTagElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WebMetaTag'
                      }
                  }
                }
              },
              primary_image_of_page: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'primaryImageOfPage',
                type: {
                  name: 'Composite',
                  class_name: 'ImageObject'
                }
              }
            }
          }
        }
      end
    end
  end
end
