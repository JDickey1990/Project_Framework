class RequirementsController < ApplicationController
  before_action :verified_user   
  
    def show 
        @requirement = Requirement.find(params[:id])
    end

    def new
       @project = Project.find_by(id: params[:project_id])
       @requirement = @project.requirements.build
       @deadline = @project.deadlines.build
    end

    def create
      @requirement = Requirement.create(requirement_params)
      if @requirement.save
          redirect_to requirement_path(@requirement)
      else 
          render :new
      end
    end

    def edit
      @requirement = Requirement.find(params[:id]) 
    end

    def update 
      @requirement = Requirement.find(params[:id])
      updated = @requirement.update(requirement_params)
      if updated
        redirect_to requirement_path(@requirement)
      else
        render :edit
      end
    end

    

    def destroy
      Requirement.find(params[:id]).destroy
      redirect_to projects_path
    end

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


   private 

   def requirement_params
    params.require(:requirement).permit(:description, :priority, :notes, deadlines_attributes: [:deadline, :project_id, :id])
   end

end
