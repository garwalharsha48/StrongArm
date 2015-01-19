class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_staging_access

  def authenticate_staging_access
    if Rails.env.staging?
      authenticate_or_request_with_http_basic do |username, password|
        username == [ENV['STAGING_USERNAME'] && password == ENV['STAGING_PASSWORD']
      end
    end
  end
end
