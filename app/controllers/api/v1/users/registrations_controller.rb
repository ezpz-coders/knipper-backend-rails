# frozen_string_literal: true

module Api
  module V1
    module Users
      # user registration via json api
      class RegistrationsController < Devise::RegistrationsController
        include JSONAPI::ActsAsResourceController

        private

        def respond_with(resource, _opts = {})
          register_success && return if resource.persisted?

          register_failed
        end

        def register_success
          render json: { message: 'Signed up sucessfully.' }
        end

        def register_failed
          render json: { message: 'Something went wrong.' }
        end
      end
    end
  end
end
