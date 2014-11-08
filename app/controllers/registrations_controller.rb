class RegistrationsController < Devise::RegistrationsController
  # Devise sign in/out path
  def after_sign_in_path_for(resource)
    user_show_path
  end

  def after_sign_out_path_for(resource)
    '/'
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :phone_number, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :phone_number, :password, :password_confirmation, :current_password)
  end
end
