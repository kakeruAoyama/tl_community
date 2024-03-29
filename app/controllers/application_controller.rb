class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    top_index_path # ログイン後に遷移するpathを設定
  end
  
  def after_sign_out_path_for(resource)
    top_about_path # ログアウト後に遷移するpathを設定
  end
  
  protected
  def configure_permitted_parameters
    # サインアップ時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:login, :name, :email, :password, :remember_me])        
    # アカウント編集の時にnameとprofileのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile, :password, :password_confirmation, :current_password])
  end

end
