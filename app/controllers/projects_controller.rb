class ProjectsController < ApplicationController

    def index
        @projects = current_user.projects
    end

    def show 
        @project = Project.find_by(id: params[:id])
    end

    def new 
         @user = current_user
         @project = Project.new
     end

    def create
        @project = current_user.projects.build(project_params)
        if @project.save
            redirect_to project_path(@project)
        else 
            render :new
        end
    end

    private

    def project_params
        params.require(:project).permit(:name, :description, :user_id, :project_deadline, requirements_attributes: [:description, :notes])
    end
end
