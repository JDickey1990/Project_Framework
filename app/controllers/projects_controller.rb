class ProjectsController < ApplicationController
    before_action :verified_user  
    before_action :set_project, only: [:show, :edit, :update, :destroy]
    before_action :redirect_if_not_project_owner, only: [:edit, :update, :destroy]

    def index
        @projects = current_user.projects
    end

    def show 
        @incomplete_statuses = @project.deadlines.incomplete_statuses
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

    def edit
    end
  
    def update 
        updated = @project.update(project_params)
        if updated
            redirect_to project_path(@project)
        else
            render :edit
        end
    end

    def destroy
        @project.destroy
        redirect_to projects_path
    end

    private

    def project_params
        params.require(:project).permit(:name, :description, :user_id, :project_deadline, requirements_attributes: [:description, :notes, :priority])
    end

    def set_project
        @project = Project.find_by(id: params[:id])
        if !@project
            flash[:message] = "Project Was not found."
            redirect_to projects_path
        end
    end

    def redirect_if_not_project_owner
        if @project.user != current_user
            flash[:message] = "Access Denied"
            redirect_to projects_path 
        end
    end
end
