class UsersController < ApplicationController
    def new 
    end

    def create 
        if (user = User.create(user_params))
            session[:user_id] = user.id
            redirect_to projects_path
        else
            render 'new'
        end
    end 

    private 

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
    

end
