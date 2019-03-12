# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_graph_rbac'

module Azure::Profiles::Latest
  module GraphRbac
    Users = Azure::GraphRbac::V1_6::Users
    Objects = Azure::GraphRbac::V1_6::Objects
    Applications = Azure::GraphRbac::V1_6::Applications
    Groups = Azure::GraphRbac::V1_6::Groups
    ServicePrincipals = Azure::GraphRbac::V1_6::ServicePrincipals
    Domains = Azure::GraphRbac::V1_6::Domains

    module Models
      DomainListResult = Azure::GraphRbac::V1_6::Models::DomainListResult
      PasswordCredential = Azure::GraphRbac::V1_6::Models::PasswordCredential
      ServicePrincipalListResult = Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
      PasswordProfile = Azure::GraphRbac::V1_6::Models::PasswordProfile
      ServicePrincipalCreateParameters = Azure::GraphRbac::V1_6::Models::ServicePrincipalCreateParameters
      DirectoryObjectListResult = Azure::GraphRbac::V1_6::Models::DirectoryObjectListResult
      CheckGroupMembershipResult = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
      AADObject = Azure::GraphRbac::V1_6::Models::AADObject
      UserBase = Azure::GraphRbac::V1_6::Models::UserBase
      GetObjectsParameters = Azure::GraphRbac::V1_6::Models::GetObjectsParameters
      RequiredResourceAccess = Azure::GraphRbac::V1_6::Models::RequiredResourceAccess
      SignInName = Azure::GraphRbac::V1_6::Models::SignInName
      PasswordCredentialListResult = Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
      UserListResult = Azure::GraphRbac::V1_6::Models::UserListResult
      ApplicationAddOwnerParameters = Azure::GraphRbac::V1_6::Models::ApplicationAddOwnerParameters
      UserGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
      DirectoryObject = Azure::GraphRbac::V1_6::Models::DirectoryObject
      ServicePrincipal = Azure::GraphRbac::V1_6::Models::ServicePrincipal
      ADGroup = Azure::GraphRbac::V1_6::Models::ADGroup
      UserType = Azure::GraphRbac::V1_6::Models::UserType
      UserCreateParameters = Azure::GraphRbac::V1_6::Models::UserCreateParameters
      Application = Azure::GraphRbac::V1_6::Models::Application
      UserUpdateParameters = Azure::GraphRbac::V1_6::Models::UserUpdateParameters
      User = Azure::GraphRbac::V1_6::Models::User
      GroupCreateParameters = Azure::GraphRbac::V1_6::Models::GroupCreateParameters
      Domain = Azure::GraphRbac::V1_6::Models::Domain
      GroupAddMemberParameters = Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
      GraphError = Azure::GraphRbac::V1_6::Models::GraphError
      KeyCredential = Azure::GraphRbac::V1_6::Models::KeyCredential
      ResourceAccess = Azure::GraphRbac::V1_6::Models::ResourceAccess
      GroupListResult = Azure::GraphRbac::V1_6::Models::GroupListResult
      GroupGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
      UserGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
      ApplicationListResult = Azure::GraphRbac::V1_6::Models::ApplicationListResult
      GroupGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
      ApplicationCreateParameters = Azure::GraphRbac::V1_6::Models::ApplicationCreateParameters
      KeyCredentialListResult = Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
      CheckGroupMembershipParameters = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
      KeyCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
      ApplicationUpdateParameters = Azure::GraphRbac::V1_6::Models::ApplicationUpdateParameters
      PasswordCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
      GetObjectsResult = Azure::GraphRbac::V1_6::Models::GetObjectsResult
    end

    class GraphRbacDataClass
      attr_reader :users, :objects, :applications, :groups, :service_principals, :domains, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::GraphRbac::V1_6::GraphRbacClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @users = @client_0.users
        @objects = @client_0.objects
        @applications = @client_0.applications
        @groups = @client_0.groups
        @service_principals = @client_0.service_principals
        @domains = @client_0.domains

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/GraphRbac"
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
        def domain_list_result
          Azure::GraphRbac::V1_6::Models::DomainListResult
        end
        def password_credential
          Azure::GraphRbac::V1_6::Models::PasswordCredential
        end
        def service_principal_list_result
          Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
        end
        def password_profile
          Azure::GraphRbac::V1_6::Models::PasswordProfile
        end
        def service_principal_create_parameters
          Azure::GraphRbac::V1_6::Models::ServicePrincipalCreateParameters
        end
        def directory_object_list_result
          Azure::GraphRbac::V1_6::Models::DirectoryObjectListResult
        end
        def check_group_membership_result
          Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
        end
        def aadobject
          Azure::GraphRbac::V1_6::Models::AADObject
        end
        def user_base
          Azure::GraphRbac::V1_6::Models::UserBase
        end
        def get_objects_parameters
          Azure::GraphRbac::V1_6::Models::GetObjectsParameters
        end
        def required_resource_access
          Azure::GraphRbac::V1_6::Models::RequiredResourceAccess
        end
        def sign_in_name
          Azure::GraphRbac::V1_6::Models::SignInName
        end
        def password_credential_list_result
          Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
        end
        def user_list_result
          Azure::GraphRbac::V1_6::Models::UserListResult
        end
        def application_add_owner_parameters
          Azure::GraphRbac::V1_6::Models::ApplicationAddOwnerParameters
        end
        def user_get_member_groups_parameters
          Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
        end
        def directory_object
          Azure::GraphRbac::V1_6::Models::DirectoryObject
        end
        def service_principal
          Azure::GraphRbac::V1_6::Models::ServicePrincipal
        end
        def adgroup
          Azure::GraphRbac::V1_6::Models::ADGroup
        end
        def user_type
          Azure::GraphRbac::V1_6::Models::UserType
        end
        def user_create_parameters
          Azure::GraphRbac::V1_6::Models::UserCreateParameters
        end
        def application
          Azure::GraphRbac::V1_6::Models::Application
        end
        def user_update_parameters
          Azure::GraphRbac::V1_6::Models::UserUpdateParameters
        end
        def user
          Azure::GraphRbac::V1_6::Models::User
        end
        def group_create_parameters
          Azure::GraphRbac::V1_6::Models::GroupCreateParameters
        end
        def domain
          Azure::GraphRbac::V1_6::Models::Domain
        end
        def group_add_member_parameters
          Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
        end
        def graph_error
          Azure::GraphRbac::V1_6::Models::GraphError
        end
        def key_credential
          Azure::GraphRbac::V1_6::Models::KeyCredential
        end
        def resource_access
          Azure::GraphRbac::V1_6::Models::ResourceAccess
        end
        def group_list_result
          Azure::GraphRbac::V1_6::Models::GroupListResult
        end
        def group_get_member_groups_parameters
          Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
        end
        def user_get_member_groups_result
          Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
        end
        def application_list_result
          Azure::GraphRbac::V1_6::Models::ApplicationListResult
        end
        def group_get_member_groups_result
          Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
        end
        def application_create_parameters
          Azure::GraphRbac::V1_6::Models::ApplicationCreateParameters
        end
        def key_credential_list_result
          Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
        end
        def check_group_membership_parameters
          Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
        end
        def key_credentials_update_parameters
          Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
        end
        def application_update_parameters
          Azure::GraphRbac::V1_6::Models::ApplicationUpdateParameters
        end
        def password_credentials_update_parameters
          Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
        end
        def get_objects_result
          Azure::GraphRbac::V1_6::Models::GetObjectsResult
        end
      end
    end
  end
end
