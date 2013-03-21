class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
 def facebook
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)
    
    if @user == nil
      flash[:notice] = "A user with your facebook email already exists.  You cannot link your accounts at this time."
      redirect_to new_user_registration_url
    elsif @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end 
end
