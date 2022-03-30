class ApplicationController < ActionController::API
    ActiveModel::Serializer.config.adapter = :json_api
end
