# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::CustomVision::Training::V3_0
  module Models
    #
    # Model object.
    #
    #
    class CustomVisionError

      include MsRestAzure

      # @return [CustomVisionErrorCodes] The error code. Possible values
      # include: 'NoError', 'BadRequest', 'BadRequestExceededBatchSize',
      # 'BadRequestNotSupported', 'BadRequestInvalidIds',
      # 'BadRequestProjectName', 'BadRequestProjectNameNotUnique',
      # 'BadRequestProjectDescription', 'BadRequestProjectUnknownDomain',
      # 'BadRequestProjectUnknownClassification',
      # 'BadRequestProjectUnsupportedDomainTypeChange',
      # 'BadRequestProjectUnsupportedExportPlatform',
      # 'BadRequestIterationName', 'BadRequestIterationNameNotUnique',
      # 'BadRequestIterationDescription', 'BadRequestIterationIsNotTrained',
      # 'BadRequestWorkspaceCannotBeModified',
      # 'BadRequestWorkspaceNotDeletable', 'BadRequestTagName',
      # 'BadRequestTagNameNotUnique', 'BadRequestTagDescription',
      # 'BadRequestTagType', 'BadRequestMultipleNegativeTag',
      # 'BadRequestImageTags', 'BadRequestImageRegions',
      # 'BadRequestNegativeAndRegularTagOnSameImage',
      # 'BadRequestRequiredParamIsNull', 'BadRequestIterationIsPublished',
      # 'BadRequestInvalidPublishName', 'BadRequestInvalidPublishTarget',
      # 'BadRequestUnpublishFailed', 'BadRequestIterationNotPublished',
      # 'BadRequestSubscriptionApi', 'BadRequestExceedProjectLimit',
      # 'BadRequestExceedIterationPerProjectLimit',
      # 'BadRequestExceedTagPerProjectLimit',
      # 'BadRequestExceedTagPerImageLimit', 'BadRequestExceededQuota',
      # 'BadRequestCannotMigrateProjectWithName', 'BadRequestNotLimitedTrial',
      # 'BadRequestImageBatch', 'BadRequestImageStream', 'BadRequestImageUrl',
      # 'BadRequestImageFormat', 'BadRequestImageSizeBytes',
      # 'BadRequestImageExceededCount', 'BadRequestTrainingNotNeeded',
      # 'BadRequestTrainingNotNeededButTrainingPipelineUpdated',
      # 'BadRequestTrainingValidationFailed',
      # 'BadRequestClassificationTrainingValidationFailed',
      # 'BadRequestMultiClassClassificationTrainingValidationFailed',
      # 'BadRequestMultiLabelClassificationTrainingValidationFailed',
      # 'BadRequestDetectionTrainingValidationFailed',
      # 'BadRequestTrainingAlreadyInProgress',
      # 'BadRequestDetectionTrainingNotAllowNegativeTag',
      # 'BadRequestInvalidEmailAddress',
      # 'BadRequestDomainNotSupportedForAdvancedTraining',
      # 'BadRequestExportPlatformNotSupportedForAdvancedTraining',
      # 'BadRequestReservedBudgetInHoursNotEnoughForAdvancedTraining',
      # 'BadRequestExportValidationFailed',
      # 'BadRequestExportAlreadyInProgress', 'BadRequestPredictionIdsMissing',
      # 'BadRequestPredictionIdsExceededCount',
      # 'BadRequestPredictionTagsExceededCount',
      # 'BadRequestPredictionResultsExceededCount',
      # 'BadRequestPredictionInvalidApplicationName',
      # 'BadRequestPredictionInvalidQueryParameters', 'BadRequestInvalid',
      # 'UnsupportedMediaType', 'Forbidden', 'ForbiddenUser',
      # 'ForbiddenUserResource', 'ForbiddenUserSignupDisabled',
      # 'ForbiddenUserSignupAllowanceExceeded', 'ForbiddenUserDoesNotExist',
      # 'ForbiddenUserDisabled', 'ForbiddenUserInsufficientCapability',
      # 'ForbiddenDRModeEnabled', 'ForbiddenInvalid', 'NotFound',
      # 'NotFoundProject', 'NotFoundProjectDefaultIteration',
      # 'NotFoundIteration', 'NotFoundIterationPerformance', 'NotFoundTag',
      # 'NotFoundImage', 'NotFoundDomain', 'NotFoundApimSubscription',
      # 'NotFoundInvalid', 'Conflict', 'ConflictInvalid', 'ErrorUnknown',
      # 'ErrorProjectInvalidWorkspace',
      # 'ErrorProjectInvalidPipelineConfiguration',
      # 'ErrorProjectInvalidDomain', 'ErrorProjectTrainingRequestFailed',
      # 'ErrorProjectExportRequestFailed',
      # 'ErrorFeaturizationServiceUnavailable',
      # 'ErrorFeaturizationQueueTimeout',
      # 'ErrorFeaturizationInvalidFeaturizer',
      # 'ErrorFeaturizationAugmentationUnavailable',
      # 'ErrorFeaturizationUnrecognizedJob',
      # 'ErrorFeaturizationAugmentationError', 'ErrorExporterInvalidPlatform',
      # 'ErrorExporterInvalidFeaturizer', 'ErrorExporterInvalidClassifier',
      # 'ErrorPredictionServiceUnavailable', 'ErrorPredictionModelNotFound',
      # 'ErrorPredictionModelNotCached', 'ErrorPrediction',
      # 'ErrorPredictionStorage', 'ErrorRegionProposal', 'ErrorInvalid'
      attr_accessor :code

      # @return [String] A message explaining the error reported by the
      # service.
      attr_accessor :message


      #
      # Mapper for CustomVisionError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CustomVisionError',
          type: {
            name: 'Composite',
            class_name: 'CustomVisionError',
            model_properties: {
              code: {
                required: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: true,
                serialized_name: 'message',
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
