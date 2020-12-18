class RequirementsController < ApplicationController
 
    def show 
        @requirement = Requirement.find(params[:id])
    end

    def status
        # binding.pry
        @deadline = Deadline.find(params[:id])
        if @deadline.completed == true
            @deadline.completed = false
            @deadline.save
          else  @deadline.completed == false
            @deadline.completed = true
            @deadline.save
          end
          redirect_to user_project_path(@deadline.project.user_id,@deadline.project_id)
    end

   
end
