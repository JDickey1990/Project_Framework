class ProjectsController < ApplicationController

    def index
        # binding.pry
        @user = User.find(params[:user_id])
        @projects = @user.projects
    end

    def show 
        @project = Project.find_by(id: params[:id])
    end

    def new 
        #  binding.pry
         @user = User.find(params[:user_id])
         @project =Project.new
        
     end

    def create
        #  raise params.inspect
        #  binding.pry
        @project = Project.create(project_params)

         
        if @project.save
            redirect_to user_project_path(@project.user_id, @project)
        else 
            render :new
        end
    end

    private

    def project_params
        params.require(:project).permit(:name, :description, :user_id, requirements_attributes: [:description])
    end
end
