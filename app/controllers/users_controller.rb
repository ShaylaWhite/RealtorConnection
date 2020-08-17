class UsersController < ApplicationController
#responsible for creating our user object and signing up 


   #renders the sign-up form
   def new
    @user = User.new
   end 

    #sign-up users
    def create
        @user = User.new(user_params)
        if @user.save #okay to save then login user w/ sessions
            session[:user_id] = @user.id
            redirect_to user_path(@user) #show page
        else 
           render :new
        end  
    end 

    def show
    end 

    def delete
    end 


private
    
    def user_params
        params.require(:user).permit(:email, :password, :name)
    end 

end 

