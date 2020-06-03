class OmniauthController < Devise::OmniauthCallbacksController

  def google_oauth2
    @user = User.crete_from_provider_data(request.env['omniauth.auth'])
    if @user.persisted?
      sign_in_and_redirect @user
      set_flash_message(:notice, :success, kind: 'Google') if is_navigational_format?
    else
      flash[:error] = t(:failure, scope: 'devise.omniauth_callbacks', kind: 'Google')
      redirect_to new_user_registration_url
    end
  end
end
