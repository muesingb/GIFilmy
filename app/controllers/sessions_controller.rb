class SessionsController < ApplicationController
    
    def new
    end

    def create
      session[:username] = params[:username] 
      redirect_to user_path(User.find_by(name: session["username"]))  
    end 

    def destroy
      session.delete :username
    end
end



# params =  {
#     "id": 2,
#     "cool stuff": "At Clarke Campus"
# }

# user2 = User.find(params["id"])  

# employee1 = {
#     "id": 1
#     "name": "spongebob",
#     "employer": "Krusty Krab",
#     "boss": "Mr. Crabs"
# }

# employee1["name"] => "spongebob"