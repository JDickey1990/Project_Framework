class RequirementsController < ApplicationController
  before_action :verified_user   
  before_action :set_requirement, only: [:show, :edit, :update, :destroy]

  def show 
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
  end

  def update 
    updated = @requirement.update(requirement_params)
    if updated
      redirect_to requirement_path(@requirement)
    else
      render :edit
    end
  end

  def destroy
    @requirement.destroy
    redirect_to projects_path
  end

  private 

  def requirement_params
    params.require(:requirement).permit(:description, :priority, :notes, deadlines_attributes: [:deadline, :project_id, :id])
  end

  def set_requirement
    @requirement = Requirement.find_by(id: params[:id])
    if !@requirement
      flash[:message] = "Requirement Was not found."
      redirect_to projects_path
    end
  end

end
