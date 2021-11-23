module Api
  module V1
    module Users
      class SessionResource < JSONAPI::Resource
        attributes :email, :password
      end
    end
  end
end
