class ApplicationController < ActionController::Base

    def home 
        redirect_to signup_path
    end

end
