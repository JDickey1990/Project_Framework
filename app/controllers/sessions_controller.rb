class SessionsController < ApplicationController

    def new
       
    end

    def create 
        @user = User.find_by(email: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id 
            redirect_to projects_path
        else
            flash[:error] = "Invalid Entry, Please enter a valid email and password"
            redirect_to login_path
        end
    end

    def omniauth
         user = User.find_or_create_by_omniauth(auth)
         if user.valid?
            session[:user_id] = user.id
            redirect_to projects_path
        else
            flash[:message] = user.errors.full_messages.join(", ")
            redirect_to login_path
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to "/"
    end

    private 

    def auth 
        request.env['omniauth.auth']
    end
end
