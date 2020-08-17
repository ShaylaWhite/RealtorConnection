class UsersController < ApplicationController
#responsible for creating our user object and signing up 


   #renders the sign-up form
   def new
    @user = User.new
   end 

    #sign-up users
    def create
        @user = User.new(user_params)
        if @user.save #okay to login in user w/ sessions
          session[:user_id] = @user.id
          redirect_to users_path
        else
          render :new
        
    end 
    
    def show
    end 

    def delete
    end 

     private
    
    def user_params
        paramas.require(:user).params(:email,:password,:name)
    end 

    end 


end
