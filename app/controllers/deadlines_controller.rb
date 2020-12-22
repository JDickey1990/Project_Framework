class DeadlinesController < ApplicationController
    before_action :verified_user 

    def status
        @deadline = Deadline.find(params[:id])
        if @deadline.completed == true
            @deadline.completed = false
        else  
            @deadline.completed = true
        end
        @deadline.save
        redirect_to project_path(@deadline.project_id)
    end
end
