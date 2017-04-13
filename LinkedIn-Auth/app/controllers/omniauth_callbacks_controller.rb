class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def linkedin

    @user = User.connect_to_linkedin(request.env["omniauth.auth"],current_user)
    if @user.persisted?

      sign_in_and_redirect @user, :event => :authentication

    else
      session["devise.linkedin_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
end
end
