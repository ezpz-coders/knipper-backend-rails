# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :users do
        jsonapi_resource :sessions, only: %i[index]
      end

      # devise_for :users,
      #            controllers: {
      #              sessions: 'users/sessions',
      #              registrations: 'users/registrations'
      #            }
      # get '/member-data', to: 'members#show'
    end
  end
end
