class Users::OmniauthCallbacksController < ApplicationController
  skip_before_action :authenticate_user!, only: :facebook
  def facebook
    user = User.find_for_facebook_oauth(request.env['omniauth.auth'])

      if user.persisted?

        flash[:notice] = 'Your are now signed in on our platform, enjoy!'
        sign_in_and_redirect user, event: :authentication, notice: 'Thank you to sign in enjoy our platform'
        # set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
      else
        session['devise.facebook_data'] = request.env['omniauth.auth']
        redirect_to new_user_registration_url
      end
  end
end
