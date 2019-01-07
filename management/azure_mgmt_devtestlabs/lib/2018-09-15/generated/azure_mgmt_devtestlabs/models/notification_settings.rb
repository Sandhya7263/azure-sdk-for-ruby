# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Notification settings for a schedule.
    #
    class NotificationSettings

      include MsRestAzure

      # @return [EnableStatus] If notifications are enabled for this schedule
      # (i.e. Enabled, Disabled). Possible values include: 'Enabled',
      # 'Disabled'
      attr_accessor :status

      # @return [Integer] Time in minutes before event at which notification
      # will be sent.
      attr_accessor :time_in_minutes

      # @return [String] The webhook URL to which the notification will be
      # sent.
      attr_accessor :webhook_url

      # @return [String] The email recipient to send notifications to (can be a
      # list of semi-colon separated email addresses).
      attr_accessor :email_recipient

      # @return [String] The locale to use when sending a notification
      # (fallback for unsupported languages is EN).
      attr_accessor :notification_locale


      #
      # Mapper for NotificationSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NotificationSettings',
          type: {
            name: 'Composite',
            class_name: 'NotificationSettings',
            model_properties: {
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              time_in_minutes: {
                required: false,
                serialized_name: 'timeInMinutes',
                type: {
                  name: 'Number'
                }
              },
              webhook_url: {
                required: false,
                serialized_name: 'webhookUrl',
                type: {
                  name: 'String'
                }
              },
              email_recipient: {
                required: false,
                serialized_name: 'emailRecipient',
                type: {
                  name: 'String'
                }
              },
              notification_locale: {
                required: false,
                serialized_name: 'notificationLocale',
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
