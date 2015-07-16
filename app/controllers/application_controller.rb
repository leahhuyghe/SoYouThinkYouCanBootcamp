class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user


  def authenticate_user
    if session[:user_id]
    else
      redirect_to new_user_registration_url
    end
  end

end
