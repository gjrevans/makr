class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :last_name, :email, :password, :password_confirmation, :description)
  end

  def account_update_params
    params.require(:user).permit(:name, :last_name, :email, :password, :password_confirmation, :description, :current_password)
  end
end