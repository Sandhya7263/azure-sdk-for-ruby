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
require '2018-03-31/generated/azure_mgmt_consumption/module_definition'
require 'ms_rest_azure'

module Azure::Consumption::Mgmt::V2018_03_31
  autoload :UsageDetails,                                       '2018-03-31/generated/azure_mgmt_consumption/usage_details.rb'
  autoload :UsageDetailsByBillingAccount,                       '2018-03-31/generated/azure_mgmt_consumption/usage_details_by_billing_account.rb'
  autoload :UsageDetailsByDepartment,                           '2018-03-31/generated/azure_mgmt_consumption/usage_details_by_department.rb'
  autoload :UsageDetailsByEnrollmentAccount,                    '2018-03-31/generated/azure_mgmt_consumption/usage_details_by_enrollment_account.rb'
  autoload :Marketplaces,                                       '2018-03-31/generated/azure_mgmt_consumption/marketplaces.rb'
  autoload :MarketplacesByBillingAccount,                       '2018-03-31/generated/azure_mgmt_consumption/marketplaces_by_billing_account.rb'
  autoload :MarketplacesByDepartment,                           '2018-03-31/generated/azure_mgmt_consumption/marketplaces_by_department.rb'
  autoload :MarketplacesByEnrollmentAccounts,                   '2018-03-31/generated/azure_mgmt_consumption/marketplaces_by_enrollment_accounts.rb'
  autoload :GetBalancesByBillingAccount,                        '2018-03-31/generated/azure_mgmt_consumption/get_balances_by_billing_account.rb'
  autoload :ReservationsSummaries,                              '2018-03-31/generated/azure_mgmt_consumption/reservations_summaries.rb'
  autoload :ReservationsDetails,                                '2018-03-31/generated/azure_mgmt_consumption/reservations_details.rb'
  autoload :ReservationRecommendationsOperations,               '2018-03-31/generated/azure_mgmt_consumption/reservation_recommendations_operations.rb'
  autoload :Budgets,                                            '2018-03-31/generated/azure_mgmt_consumption/budgets.rb'
  autoload :Operations,                                         '2018-03-31/generated/azure_mgmt_consumption/operations.rb'
  autoload :PriceSheet,                                         '2018-03-31/generated/azure_mgmt_consumption/price_sheet.rb'
  autoload :CostTagsOperations,                                 '2018-03-31/generated/azure_mgmt_consumption/cost_tags_operations.rb'
  autoload :TagsOperations,                                     '2018-03-31/generated/azure_mgmt_consumption/tags_operations.rb'
  autoload :ConsumptionManagementClient,                        '2018-03-31/generated/azure_mgmt_consumption/consumption_management_client.rb'

  module Models
    autoload :Filters,                                            '2018-03-31/generated/azure_mgmt_consumption/models/filters.rb'
    autoload :CurrentSpend,                                       '2018-03-31/generated/azure_mgmt_consumption/models/current_spend.rb'
    autoload :Tag,                                                '2018-03-31/generated/azure_mgmt_consumption/models/tag.rb'
    autoload :UsageDetailsListResult,                             '2018-03-31/generated/azure_mgmt_consumption/models/usage_details_list_result.rb'
    autoload :ResourceAttributes,                                 '2018-03-31/generated/azure_mgmt_consumption/models/resource_attributes.rb'
    autoload :MarketplacesListResult,                             '2018-03-31/generated/azure_mgmt_consumption/models/marketplaces_list_result.rb'
    autoload :BudgetTimePeriod,                                   '2018-03-31/generated/azure_mgmt_consumption/models/budget_time_period.rb'
    autoload :BalancePropertiesAdjustmentDetailsItem,             '2018-03-31/generated/azure_mgmt_consumption/models/balance_properties_adjustment_details_item.rb'
    autoload :MeterDetails,                                       '2018-03-31/generated/azure_mgmt_consumption/models/meter_details.rb'
    autoload :PriceSheetProperties,                               '2018-03-31/generated/azure_mgmt_consumption/models/price_sheet_properties.rb'
    autoload :Resource,                                           '2018-03-31/generated/azure_mgmt_consumption/models/resource.rb'
    autoload :ProxyResource,                                      '2018-03-31/generated/azure_mgmt_consumption/models/proxy_resource.rb'
    autoload :Notification,                                       '2018-03-31/generated/azure_mgmt_consumption/models/notification.rb'
    autoload :ReservationRecommendations,                         '2018-03-31/generated/azure_mgmt_consumption/models/reservation_recommendations.rb'
    autoload :OperationListResult,                                '2018-03-31/generated/azure_mgmt_consumption/models/operation_list_result.rb'
    autoload :BudgetsListResult,                                  '2018-03-31/generated/azure_mgmt_consumption/models/budgets_list_result.rb'
    autoload :QueryOptions,                                       '2018-03-31/generated/azure_mgmt_consumption/models/query_options.rb'
    autoload :CostTag,                                            '2018-03-31/generated/azure_mgmt_consumption/models/cost_tag.rb'
    autoload :ReservationDetailsListResult,                       '2018-03-31/generated/azure_mgmt_consumption/models/reservation_details_list_result.rb'
    autoload :Operation,                                          '2018-03-31/generated/azure_mgmt_consumption/models/operation.rb'
    autoload :BalancePropertiesNewPurchasesDetailsItem,           '2018-03-31/generated/azure_mgmt_consumption/models/balance_properties_new_purchases_details_item.rb'
    autoload :ErrorDetails,                                       '2018-03-31/generated/azure_mgmt_consumption/models/error_details.rb'
    autoload :ReservationRecommendationsListResult,               '2018-03-31/generated/azure_mgmt_consumption/models/reservation_recommendations_list_result.rb'
    autoload :ErrorResponse,                                      '2018-03-31/generated/azure_mgmt_consumption/models/error_response.rb'
    autoload :ReservationSummariesListResult,                     '2018-03-31/generated/azure_mgmt_consumption/models/reservation_summaries_list_result.rb'
    autoload :OperationDisplay,                                   '2018-03-31/generated/azure_mgmt_consumption/models/operation_display.rb'
    autoload :UsageDetail,                                        '2018-03-31/generated/azure_mgmt_consumption/models/usage_detail.rb'
    autoload :Marketplace,                                        '2018-03-31/generated/azure_mgmt_consumption/models/marketplace.rb'
    autoload :Balance,                                            '2018-03-31/generated/azure_mgmt_consumption/models/balance.rb'
    autoload :ReservationSummaries,                               '2018-03-31/generated/azure_mgmt_consumption/models/reservation_summaries.rb'
    autoload :ReservationDetails,                                 '2018-03-31/generated/azure_mgmt_consumption/models/reservation_details.rb'
    autoload :Tags,                                               '2018-03-31/generated/azure_mgmt_consumption/models/tags.rb'
    autoload :Budget,                                             '2018-03-31/generated/azure_mgmt_consumption/models/budget.rb'
    autoload :CostTags,                                           '2018-03-31/generated/azure_mgmt_consumption/models/cost_tags.rb'
    autoload :PriceSheetResult,                                   '2018-03-31/generated/azure_mgmt_consumption/models/price_sheet_result.rb'
    autoload :BillingFrequency,                                   '2018-03-31/generated/azure_mgmt_consumption/models/billing_frequency.rb'
    autoload :CategoryType,                                       '2018-03-31/generated/azure_mgmt_consumption/models/category_type.rb'
    autoload :TimeGrainType,                                      '2018-03-31/generated/azure_mgmt_consumption/models/time_grain_type.rb'
    autoload :OperatorType,                                       '2018-03-31/generated/azure_mgmt_consumption/models/operator_type.rb'
    autoload :Datagrain,                                          '2018-03-31/generated/azure_mgmt_consumption/models/datagrain.rb'
  end
end
