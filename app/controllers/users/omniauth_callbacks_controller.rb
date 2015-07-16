class Users::OmniauthCallbacksController < ApplicationController

  # def twitter
  #   user  = User.new
  #   user.first_name = auth['info']['name'.split[0]]
  #   user.last_name = auth['info']['name'.split[1]]
  #   user.email = auth['info']['email']
  # user.password = SecureRandom.hex
  #   user.save!
  #   redirect_to root_path
  # end
  #
  # private
  # def auth
  #   request.env["omniauth.auth"]
  # end


  def twitter
    # You need to implement the method below in your model (e.g. app/models/user.rb)

    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      flash[:success] = "Successfully logged in with Twitter"
      return sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
    else
      flash[:alert] = "Twitter signup unsuccessful. Please sign up with your email."
      redirect_to destroy_user_session_path
    end
  end
end

    ####not run

      # session[:user_id] = @user.id

    # puts ">>>>>>>>> current_user is #{current_user.inspect} <<<<<<<<<<<<<\n"
    # puts ">>>>>>>>> user_signed_in? returns #{user_signed_in?}<<<<<<<<<<<<<\n"
    # puts ">>>>>>>>> signed in, user id is #{@user.id} <<<<<<<<<<<<<<<<<<<\n"


      # redirect_to root_path

      # sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      # set_flash_message(:notice, :success, :kind => "Twitter") if is_navigational_format?
      # session["devise.twitter_data"] = request.env["omniauth.auth"].except("extra")

      # session[:user_id] = nil
      # request.env["omniauth.auth"].except("extra")
