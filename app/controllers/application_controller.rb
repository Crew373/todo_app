class ApplicationController < ActionController::Base
    include SessionsHelper
    helper_method :current_user
    add_flash_types :success, :info, :warning, :danger
    
    private
    # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
        redirect_to login_url
      end
    end
end