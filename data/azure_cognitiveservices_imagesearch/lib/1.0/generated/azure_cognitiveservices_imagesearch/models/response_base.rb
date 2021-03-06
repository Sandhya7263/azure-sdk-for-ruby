# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ImageSearch::V1_0
  module Models
    #
    # Response base
    #
    class ResponseBase

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Organization"] = "Organization"
      @@discriminatorMap["Offer"] = "Offer"
      @@discriminatorMap["AggregateOffer"] = "AggregateOffer"
      @@discriminatorMap["ImageObject"] = "ImageObject"
      @@discriminatorMap["Images"] = "Images"
      @@discriminatorMap["SearchResultsAnswer"] = "SearchResultsAnswer"
      @@discriminatorMap["Answer"] = "Answer"
      @@discriminatorMap["MediaObject"] = "MediaObject"
      @@discriminatorMap["Response"] = "Response"
      @@discriminatorMap["Thing"] = "Thing"
      @@discriminatorMap["CreativeWork"] = "CreativeWork"
      @@discriminatorMap["Identifiable"] = "Identifiable"
      @@discriminatorMap["ErrorResponse"] = "ErrorResponse"
      @@discriminatorMap["ImageGallery"] = "ImageGallery"
      @@discriminatorMap["Recipe"] = "Recipe"
      @@discriminatorMap["NormalizedRectangle"] = "NormalizedRectangle"
      @@discriminatorMap["RecognizedEntity"] = "RecognizedEntity"
      @@discriminatorMap["RecognizedEntityRegion"] = "RecognizedEntityRegion"
      @@discriminatorMap["ImageInsights"] = "ImageInsights"
      @@discriminatorMap["TrendingImages"] = "TrendingImages"
      @@discriminatorMap["WebPage"] = "WebPage"
      @@discriminatorMap["Person"] = "Person"
      @@discriminatorMap["Intangible"] = "Intangible"
      @@discriminatorMap["CollectionPage"] = "CollectionPage"
      @@discriminatorMap["StructuredValue"] = "StructuredValue"

      def initialize
        @_type = "ResponseBase"
      end

      attr_accessor :_type


      #
      # Mapper for ResponseBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResponseBase',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '_type',
            uber_parent: 'ResponseBase',
            class_name: 'ResponseBase',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
