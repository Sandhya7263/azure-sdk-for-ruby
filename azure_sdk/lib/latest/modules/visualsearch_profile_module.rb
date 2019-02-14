# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_visualsearch'

module Azure::Profiles::Latest
  module VisualSearch
    Images = Azure::CognitiveServices::VisualSearch::V1_0::Images

    module Models
      Query = Azure::CognitiveServices::VisualSearch::V1_0::Models::Query
      ImageObject = Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageObject
      MediaObject = Azure::CognitiveServices::VisualSearch::V1_0::Models::MediaObject
      ErrorSubCode = Azure::CognitiveServices::VisualSearch::V1_0::Models::ErrorSubCode
      ErrorCode = Azure::CognitiveServices::VisualSearch::V1_0::Models::ErrorCode
      Organization = Azure::CognitiveServices::VisualSearch::V1_0::Models::Organization
      Intangible = Azure::CognitiveServices::VisualSearch::V1_0::Models::Intangible
      Response = Azure::CognitiveServices::VisualSearch::V1_0::Models::Response
      StructuredValue = Azure::CognitiveServices::VisualSearch::V1_0::Models::StructuredValue
      ImageTag = Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageTag
      RelatedSearchesModule = Azure::CognitiveServices::VisualSearch::V1_0::Models::RelatedSearchesModule
      PropertiesItem = Azure::CognitiveServices::VisualSearch::V1_0::Models::PropertiesItem
      Error = Azure::CognitiveServices::VisualSearch::V1_0::Models::Error
      Filters = Azure::CognitiveServices::VisualSearch::V1_0::Models::Filters
      ImagesImageMetadata = Azure::CognitiveServices::VisualSearch::V1_0::Models::ImagesImageMetadata
      RecipesModule = Azure::CognitiveServices::VisualSearch::V1_0::Models::RecipesModule
      ImagesModule = Azure::CognitiveServices::VisualSearch::V1_0::Models::ImagesModule
      AggregateRating = Azure::CognitiveServices::VisualSearch::V1_0::Models::AggregateRating
      Offer = Azure::CognitiveServices::VisualSearch::V1_0::Models::Offer
      AggregateOffer = Azure::CognitiveServices::VisualSearch::V1_0::Models::AggregateOffer
      Recipe = Azure::CognitiveServices::VisualSearch::V1_0::Models::Recipe
      Rating = Azure::CognitiveServices::VisualSearch::V1_0::Models::Rating
      Currency = Azure::CognitiveServices::VisualSearch::V1_0::Models::Currency
      ItemAvailability = Azure::CognitiveServices::VisualSearch::V1_0::Models::ItemAvailability
      Person = Azure::CognitiveServices::VisualSearch::V1_0::Models::Person
      ResponseBase = Azure::CognitiveServices::VisualSearch::V1_0::Models::ResponseBase
      Thing = Azure::CognitiveServices::VisualSearch::V1_0::Models::Thing
      CreativeWork = Azure::CognitiveServices::VisualSearch::V1_0::Models::CreativeWork
      Identifiable = Azure::CognitiveServices::VisualSearch::V1_0::Models::Identifiable
      Action = Azure::CognitiveServices::VisualSearch::V1_0::Models::Action
      CropArea = Azure::CognitiveServices::VisualSearch::V1_0::Models::CropArea
      ImageInfo = Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageInfo
      ImageTagRegion = Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageTagRegion
      KnowledgeRequest = Azure::CognitiveServices::VisualSearch::V1_0::Models::KnowledgeRequest
      VisualSearchRequest = Azure::CognitiveServices::VisualSearch::V1_0::Models::VisualSearchRequest
      Point2D = Azure::CognitiveServices::VisualSearch::V1_0::Models::Point2D
      NormalizedQuadrilateral = Azure::CognitiveServices::VisualSearch::V1_0::Models::NormalizedQuadrilateral
      ImageAction = Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageAction
      ImageKnowledge = Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageKnowledge
      ImageModuleAction = Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageModuleAction
      ImageRecipesAction = Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageRecipesAction
      ImageRelatedSearchesAction = Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageRelatedSearchesAction
      ImageShoppingSourcesAction = Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageShoppingSourcesAction
      ContentTypes = Azure::CognitiveServices::VisualSearch::V1_0::Models::ContentTypes
      ImageEntityAction = Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageEntityAction
      ErrorResponse = Azure::CognitiveServices::VisualSearch::V1_0::Models::ErrorResponse
      SafeSearch = Azure::CognitiveServices::VisualSearch::V1_0::Models::SafeSearch
    end

    class VisualSearchDataClass
      attr_reader :images, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::VisualSearch::V1_0::VisualSearchClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @images = @client_0.images

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/VisualSearch"
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

      class ModelClasses
        def query
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Query
        end
        def image_object
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageObject
        end
        def media_object
          Azure::CognitiveServices::VisualSearch::V1_0::Models::MediaObject
        end
        def error_sub_code
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ErrorSubCode
        end
        def error_code
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ErrorCode
        end
        def organization
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Organization
        end
        def intangible
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Intangible
        end
        def response
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Response
        end
        def structured_value
          Azure::CognitiveServices::VisualSearch::V1_0::Models::StructuredValue
        end
        def image_tag
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageTag
        end
        def related_searches_module
          Azure::CognitiveServices::VisualSearch::V1_0::Models::RelatedSearchesModule
        end
        def properties_item
          Azure::CognitiveServices::VisualSearch::V1_0::Models::PropertiesItem
        end
        def error
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Error
        end
        def filters
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Filters
        end
        def images_image_metadata
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ImagesImageMetadata
        end
        def recipes_module
          Azure::CognitiveServices::VisualSearch::V1_0::Models::RecipesModule
        end
        def images_module
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ImagesModule
        end
        def aggregate_rating
          Azure::CognitiveServices::VisualSearch::V1_0::Models::AggregateRating
        end
        def offer
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Offer
        end
        def aggregate_offer
          Azure::CognitiveServices::VisualSearch::V1_0::Models::AggregateOffer
        end
        def recipe
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Recipe
        end
        def rating
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Rating
        end
        def currency
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Currency
        end
        def item_availability
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ItemAvailability
        end
        def person
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Person
        end
        def response_base
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ResponseBase
        end
        def thing
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Thing
        end
        def creative_work
          Azure::CognitiveServices::VisualSearch::V1_0::Models::CreativeWork
        end
        def identifiable
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Identifiable
        end
        def action
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Action
        end
        def crop_area
          Azure::CognitiveServices::VisualSearch::V1_0::Models::CropArea
        end
        def image_info
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageInfo
        end
        def image_tag_region
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageTagRegion
        end
        def knowledge_request
          Azure::CognitiveServices::VisualSearch::V1_0::Models::KnowledgeRequest
        end
        def visual_search_request
          Azure::CognitiveServices::VisualSearch::V1_0::Models::VisualSearchRequest
        end
        def point2_d
          Azure::CognitiveServices::VisualSearch::V1_0::Models::Point2D
        end
        def normalized_quadrilateral
          Azure::CognitiveServices::VisualSearch::V1_0::Models::NormalizedQuadrilateral
        end
        def image_action
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageAction
        end
        def image_knowledge
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageKnowledge
        end
        def image_module_action
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageModuleAction
        end
        def image_recipes_action
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageRecipesAction
        end
        def image_related_searches_action
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageRelatedSearchesAction
        end
        def image_shopping_sources_action
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageShoppingSourcesAction
        end
        def content_types
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ContentTypes
        end
        def image_entity_action
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ImageEntityAction
        end
        def error_response
          Azure::CognitiveServices::VisualSearch::V1_0::Models::ErrorResponse
        end
        def safe_search
          Azure::CognitiveServices::VisualSearch::V1_0::Models::SafeSearch
        end
      end
    end
  end
end
