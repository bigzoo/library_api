class ApplicationController < ActionController::API
  include Response
  rescue_from ActiveRecord::RecordNotFound do |exception|
    json_response({ error: exception.message }, :not_found)
  end
  rescue_from ActiveRecord::RecordInvalid do |exception|
    json_response({ error: exception.message }, :unprocessable_entity)
  end
end
