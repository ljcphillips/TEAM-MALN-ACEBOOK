# frozen_string_literal: true

# this class defines registrations
class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(
      :username,
      :first_name,
      :surname,
      :email,
      :password,
      :password_confirmation
    )
  end

  def account_update_params
    params.require(:user).permit(
      :username,
      :first_name,
      :surname,
      :email,
      :password,
      :password_confirmation,
      :current_password
    )
  end
end
