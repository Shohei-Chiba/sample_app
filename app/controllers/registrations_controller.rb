class RegistrationsController < Devise::RegistrationsController
<<<<<<< HEAD
  def after_sign_up_path_for(resource)
    user_path(resource)
  end
  
=======

 def after_sign_up_path_for(resource)
    user_path(resource)
 end

 
>>>>>>> 31fa9486edea99cf6168b5f19223dee959249132
  private

      def sign_up_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
<<<<<<< HEAD
      
      def account_update_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
      end

=======
>>>>>>> 31fa9486edea99cf6168b5f19223dee959249132
end