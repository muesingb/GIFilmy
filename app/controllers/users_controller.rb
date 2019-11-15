class UsersController < ApplicationController
    def index
        @users = User.all 
    end

    def show
        @user = User.find(params[:id]) 
    end 

    def new
        @user = User.new
    end

    def create
        session[:username] = user_params[:name] 
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end
 
private
 
    def user_params
        params.require(:user).permit(:name, :favorite_movie, :gif_that_represents_you)
    end

  #:password, :password_confirmation
end
