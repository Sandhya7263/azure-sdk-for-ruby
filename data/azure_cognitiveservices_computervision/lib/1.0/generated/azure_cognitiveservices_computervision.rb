# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '1.0/generated/azure_cognitiveservices_computervision/module_definition'
require 'ms_rest_azure'

module Azure::CognitiveServices::ComputerVision::V1_0
  autoload :ComputerVisionClient,                               '1.0/generated/azure_cognitiveservices_computervision/computer_vision_client.rb'

  module Models
    autoload :FaceDescription,                                    '1.0/generated/azure_cognitiveservices_computervision/models/face_description.rb'
    autoload :ImageAnalysis,                                      '1.0/generated/azure_cognitiveservices_computervision/models/image_analysis.rb'
    autoload :Line,                                               '1.0/generated/azure_cognitiveservices_computervision/models/line.rb'
    autoload :OcrWord,                                            '1.0/generated/azure_cognitiveservices_computervision/models/ocr_word.rb'
    autoload :TextOperationResult,                                '1.0/generated/azure_cognitiveservices_computervision/models/text_operation_result.rb'
    autoload :OcrLine,                                            '1.0/generated/azure_cognitiveservices_computervision/models/ocr_line.rb'
    autoload :CelebritiesModel,                                   '1.0/generated/azure_cognitiveservices_computervision/models/celebrities_model.rb'
    autoload :OcrRegion,                                          '1.0/generated/azure_cognitiveservices_computervision/models/ocr_region.rb'
    autoload :Category,                                           '1.0/generated/azure_cognitiveservices_computervision/models/category.rb'
    autoload :OcrResult,                                          '1.0/generated/azure_cognitiveservices_computervision/models/ocr_result.rb'
    autoload :ColorInfo,                                          '1.0/generated/azure_cognitiveservices_computervision/models/color_info.rb'
    autoload :ModelDescription,                                   '1.0/generated/azure_cognitiveservices_computervision/models/model_description.rb'
    autoload :ImageTag,                                           '1.0/generated/azure_cognitiveservices_computervision/models/image_tag.rb'
    autoload :ListModelsResult,                                   '1.0/generated/azure_cognitiveservices_computervision/models/list_models_result.rb'
    autoload :ImageMetadata,                                      '1.0/generated/azure_cognitiveservices_computervision/models/image_metadata.rb'
    autoload :DomainModelResults,                                 '1.0/generated/azure_cognitiveservices_computervision/models/domain_model_results.rb'
    autoload :Word,                                               '1.0/generated/azure_cognitiveservices_computervision/models/word.rb'
    autoload :CelebrityResults,                                   '1.0/generated/azure_cognitiveservices_computervision/models/celebrity_results.rb'
    autoload :FaceRectangle,                                      '1.0/generated/azure_cognitiveservices_computervision/models/face_rectangle.rb'
    autoload :LandmarkResultsLandmarksItem,                       '1.0/generated/azure_cognitiveservices_computervision/models/landmark_results_landmarks_item.rb'
    autoload :AdultInfo,                                          '1.0/generated/azure_cognitiveservices_computervision/models/adult_info.rb'
    autoload :LandmarkResults,                                    '1.0/generated/azure_cognitiveservices_computervision/models/landmark_results.rb'
    autoload :ImageCaption,                                       '1.0/generated/azure_cognitiveservices_computervision/models/image_caption.rb'
    autoload :ImageDescription,                                   '1.0/generated/azure_cognitiveservices_computervision/models/image_description.rb'
    autoload :RecognitionResult,                                  '1.0/generated/azure_cognitiveservices_computervision/models/recognition_result.rb'
    autoload :TagResult,                                          '1.0/generated/azure_cognitiveservices_computervision/models/tag_result.rb'
    autoload :ImageType,                                          '1.0/generated/azure_cognitiveservices_computervision/models/image_type.rb'
    autoload :ComputerVisionError,                                '1.0/generated/azure_cognitiveservices_computervision/models/computer_vision_error.rb'
    autoload :CategoryDetail,                                     '1.0/generated/azure_cognitiveservices_computervision/models/category_detail.rb'
    autoload :ImageUrl,                                           '1.0/generated/azure_cognitiveservices_computervision/models/image_url.rb'
    autoload :ImageDescriptionDetails,                            '1.0/generated/azure_cognitiveservices_computervision/models/image_description_details.rb'
    autoload :TextOperationStatusCodes,                           '1.0/generated/azure_cognitiveservices_computervision/models/text_operation_status_codes.rb'
    autoload :Gender,                                             '1.0/generated/azure_cognitiveservices_computervision/models/gender.rb'
    autoload :ComputerVisionErrorCodes,                           '1.0/generated/azure_cognitiveservices_computervision/models/computer_vision_error_codes.rb'
    autoload :VisualFeatureTypes,                                 '1.0/generated/azure_cognitiveservices_computervision/models/visual_feature_types.rb'
    autoload :OcrLanguages,                                       '1.0/generated/azure_cognitiveservices_computervision/models/ocr_languages.rb'
    autoload :AzureRegions,                                       '1.0/generated/azure_cognitiveservices_computervision/models/azure_regions.rb'
    autoload :Details,                                            '1.0/generated/azure_cognitiveservices_computervision/models/details.rb'
  end
end
