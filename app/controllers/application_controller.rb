# Application Controller
class ApplicationController < ActionController::Base
  #Befor actions
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  #devise strong params
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[name email role team_id])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[name role email avatar team_id])
  end

  private

  #intialization for user profile picture
  def init_attachment
    current_user.avatar.attach(params[:avatar]) if current_user.update
  end
end
