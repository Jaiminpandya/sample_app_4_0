class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def handle_unverified_request
    sign_out
    super
  end
end

