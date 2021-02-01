class ApplicationController < ActionController::Base
<<<<<<< HEAD

  
=======
  protect_from_forgery with: :exception

  # before_action :configure_permitted_parameters, if: :devise_controller?

  # # protected

  # # def configure_permitted_parameters
  # #   devise_parametter_sanitizer.permit(:update, keys: [:first_name, :last_name, :url])
  # #   devise_parametter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name,])
  # # end
>>>>>>> 47dcd1a141f7675a3645d91e790d7e06d39e30ca
end
