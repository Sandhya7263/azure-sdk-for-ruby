# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_customvisionprediction'

module Azure::Profiles::Latest
  module Customvisionprediction

    module Models
      Prediction = Azure::CognitiveServices::Customvisionprediction::V3_0::Models::Prediction
      ImagePrediction = Azure::CognitiveServices::Customvisionprediction::V3_0::Models::ImagePrediction
      BoundingBox = Azure::CognitiveServices::Customvisionprediction::V3_0::Models::BoundingBox
      CustomVisionError = Azure::CognitiveServices::Customvisionprediction::V3_0::Models::CustomVisionError
      ImageUrl = Azure::CognitiveServices::Customvisionprediction::V3_0::Models::ImageUrl
      CustomVisionErrorCodes = Azure::CognitiveServices::Customvisionprediction::V3_0::Models::CustomVisionErrorCodes
    end

    class CustomvisionpredictionDataClass
      attr_reader :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::Customvisionprediction::V3_0::CustomvisionpredictionClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Customvisionprediction"
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
        def prediction
          Azure::CognitiveServices::Customvisionprediction::V3_0::Models::Prediction
        end
        def image_prediction
          Azure::CognitiveServices::Customvisionprediction::V3_0::Models::ImagePrediction
        end
        def bounding_box
          Azure::CognitiveServices::Customvisionprediction::V3_0::Models::BoundingBox
        end
        def custom_vision_error
          Azure::CognitiveServices::Customvisionprediction::V3_0::Models::CustomVisionError
        end
        def image_url
          Azure::CognitiveServices::Customvisionprediction::V3_0::Models::ImageUrl
        end
        def custom_vision_error_codes
          Azure::CognitiveServices::Customvisionprediction::V3_0::Models::CustomVisionErrorCodes
        end
      end
    end
  end
end
