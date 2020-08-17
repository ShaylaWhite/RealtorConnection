class UsersController < ApplicationController
#responsible for creating our user object and signing up 


   #renders the sign-up form
   def new
    @user = User.new
   end 

    #sign-up users
    def create
    end 
    
    def show
    end 

    def delete
    end 


end
