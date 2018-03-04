class Admin::BaseController < ApplicationController

# include ActionController::HttpAuthentication::Basic::ControllerMethods

before_filter :authenticate

protected

def authenticate
  authenticate_or_request_with_http_basic do |username, password|
    username == ENV["ADMIN_NAME"] && password == ENV["ADMIN_PASSWORD"]
  end
end


end
