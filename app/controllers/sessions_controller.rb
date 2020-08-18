class SessionsController < ApplicationController

    def new
        @user = User.new
        render :new
    end 

    def create
        @user = User.find_by(email: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            
            #logging in
            session[:user_id] = @user.id
            redirect_to user_path(@user) #show page
        else 
            flash[:error] = "Sorry, your username or password was incorrect"
           redirect_to login_path
    end  

    def destroy
         session.clear
         redirect_to '/'
    end 
 
    def home

    end 
end 
     
end
