class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
  
 # def configure_permitted_parameters
  #  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation) }
 # end


  def configure_permitted_parameters

  puts "--------------------------------"
  params.each{|key, value| puts "#{key} => #{value}"}
   

    if params[:controller] == "users/registrations"
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation) }
      #devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :password, :remember_me) }
    else

      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:firstname, :secondname, :email, :password, :password_confirmation, :image_passport, :born_on) }
      #devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :remember_me) }
    end
  end
end
