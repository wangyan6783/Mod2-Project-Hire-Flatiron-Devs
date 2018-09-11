class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.date_created_desc
  end

  def new
    @project = Project.new
  end

  def create
    project = Project.new(project_params)
    if project.save
      redirect_to project
    else
      render :new
    end
  end

  def show
    @review = Review.new
  end

  def edit
  end

  def update
    if @project.update(project_params)
      flash[:notice] = "Project Updated!"
      redirect_to @project
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    flash[:notice] = "Project Deleted!"
    redirect_to projects_path
  end

  private

  def find_project
    @project = Project.find_by(id: params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :price)
  end

end
