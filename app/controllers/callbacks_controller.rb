class CallbacksController < Devise::OmniauthCallbacksController
    def github
        @user = User.from_omniauth(request.env["omniauth.auth"])
        sign_in_and_redirect @user
    end

    # def facebook
    #     @user = User.from_omniauth(request.env["omniauth.auth"])
    #     sign_in_and_redirect @user
    # end


    def failure
        flash[:error] = 'There was a problem signing you in. Please register or try signing in later.'
        redirect_to new_user_registration_url
    end

end