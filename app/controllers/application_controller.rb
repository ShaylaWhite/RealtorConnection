class ApplicationController < ActionController::Base
    before_action :auth

    def auth
        @current_user = User.find_by(:id session[:user_id])
    end


    def home
        redirect_to login_path
    end 
end
