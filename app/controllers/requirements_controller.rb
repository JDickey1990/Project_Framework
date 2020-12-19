class RequirementsController < ApplicationController
 
    def show 
        @requirement = Requirement.find(params[:id])
    end

    def new
      if  @project = Project.find_by(id: params[:project_id])
         @requirement = @project.requirements.build
        @deadline = @project.deadlines.build
      else 
        @project = Project.new
      end
    end

    def create
      # binding.pry
      if params.blank?
        @requirement = Requirement.create(requirement_params)
        if @requirement.save
            redirect_to requirement_path(@requirement)
        else 
            render :new
        end
      else 
          render :new
      end
    end

    def status
        @deadline = Deadline.find(params[:id])
        if @deadline.completed == true
            @deadline.completed = false
            @deadline.save
          else  @deadline.completed == false
            @deadline.completed = true
            @deadline.save
          end
          redirect_to project_path(@deadline.project_id)
    end


   private 

   def requirement_params
    params.require(:requirement).permit(:description, :priority, deadlines_attributes: [:deadline, :project_id])
   end

end
