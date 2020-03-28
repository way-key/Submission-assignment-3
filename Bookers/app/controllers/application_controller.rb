class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:name, :password) }
  end
  def after_sign_out_path_for(resource)
    top_path # ログアウト後に遷移するpathを設定
  end

end
