# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_05_31
  #
  # Consumption management client provides access to consumption resources for
  # Azure Enterprise Subscriptions.
  #
  class Forecasts
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Forecasts class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ConsumptionManagementClient] reference to the ConsumptionManagementClient
    attr_reader :client

    #
    # Lists the forecast charges by subscriptionId.
    #
    # @param filter [String] May be used to filter forecasts by
    # properties/usageDate (Utc time), properties/chargeType or properties/grain.
    # The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not
    # currently support 'ne', 'or', or 'not'.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ForecastsListResult] operation results.
    #
    def list(filter:nil, custom_headers:nil)
      response = list_async(filter:filter, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the forecast charges by subscriptionId.
    #
    # @param filter [String] May be used to filter forecasts by
    # properties/usageDate (Utc time), properties/chargeType or properties/grain.
    # The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not
    # currently support 'ne', 'or', or 'not'.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(filter:nil, custom_headers:nil)
      list_async(filter:filter, custom_headers:custom_headers).value!
    end

    #
    # Lists the forecast charges by subscriptionId.
    #
    # @param filter [String] May be used to filter forecasts by
    # properties/usageDate (Utc time), properties/chargeType or properties/grain.
    # The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not
    # currently support 'ne', 'or', or 'not'.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(filter:nil, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Consumption/forecasts'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'$filter' => filter,'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Consumption::Mgmt::V2018_05_31::Models::ForecastsListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
