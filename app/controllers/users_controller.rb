class UsersController < ApplicationController
    def new 
        @user = User.new
    end

    def create 
        if !params.blank?
            @user = User.new(user_params)
            if @user.save
                session[:user_id] = @user.id
                redirect_to projects_path
            else
                render :new
            end
        else 
            render :new
        end
    end 

    private 

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
    

end
