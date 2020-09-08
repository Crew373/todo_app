class ApplicationController < ActionController::Base
    include SessionsHelper
    helper_method :current_user
    
    private
    # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
        redirect_to login_url
      end
    end
    
    # def current_user
    #   @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    #   puts session[:user_id]
    # end
end