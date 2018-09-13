class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]
  skip_before_action :customer_authorized, only: [:index, :show, :accept]
  skip_before_action :developer_authorized

  def index

    @projects = Project.all
    if params[:sort] == "old_to_new"
     @projects = Project.date_created_asc
   elsif params[:sort] == "new_to_old"
     @projects = Project.date_created_desc
   elsif params[:sort] == "high_to_low"
     @projects = Project.price_desc
   elsif params[:sort] == "low_to_high"
     @projects = Project.price_asc
    else
     @projects = Project.all
   end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.customer_id = params[:customer_id]
    if @project.save
      redirect_to @project
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

  def accept
    @project = Project.find(params[:project_id])
    @project.developer_id = session[:developer_id]
    if @project.save
      flash[:notice] = "Congrats on your new job!"
      redirect_to @project
    else
      flash[:notice] = "Error accepting the project"
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
    params.require(:project).permit(:title, :description, :price, :customer_id)
  end

end
