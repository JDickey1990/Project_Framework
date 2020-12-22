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

  private 

  def requirement_params
  params.require(:requirement).permit(:description, :priority, :notes, deadlines_attributes: [:deadline, :project_id, :id])
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
