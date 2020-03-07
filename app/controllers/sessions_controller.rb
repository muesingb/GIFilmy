class SessionsController < ApplicationController
    
    # def new
    # end

    def create
      session[:username] = params[:username] 
      redirect_to user_path(User.find_by(name: session["username"]))  
    end 

    def destroy
      session.delete :username
      redirect_to :controller => :games, :action => "intro"
    end
end


