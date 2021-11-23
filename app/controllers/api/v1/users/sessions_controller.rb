# frozen_string_literal: true

module Api
  module V1
    module Users
      # api controller for managing sessions
      class SessionsController < Devise::SessionsController
        include JSONAPI::ActsAsResourceController

        private

        def respond_with(_resource, _opts = {})
          render json: { message: 'You are logged in.' }, status: :ok
        end

        def respond_to_on_destroy
          log_out_success && return if current_user

          log_out_failure
        end

        def log_out_success
          render json: { message: 'You are logged out.' }, status: :ok
        end

        def log_out_failure
          render json: { message: 'Hmm nothing happened.' }, status: :unauthorized
        end
      end
    end
  end
end
