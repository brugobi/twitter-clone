class RegistratrionsController < Devise::RegistratrionsController
    private

    def sign_in_params
        params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
    end

    def acount_update_params
        params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :current_password)
    end
end