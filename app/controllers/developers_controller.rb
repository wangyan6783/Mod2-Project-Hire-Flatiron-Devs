class DevelopersController < ApplicationController
  before_action :find_developer, only: [:show, :edit, :update]

  def index
    @developers = Developer.all
  end

  def new
    @developer = Developer.new
  end

  def create
    developer = Developer.new(developer_params)
    if developer.save
      redirect_to developer
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @developer.update(developer_params)
      flash[:notice] = "Developer Updated!"
      redirect_to @developer
    else
      render :edit
    end
  end

  private

  def find_developer
    @developer = Developer.find_by(id: params[:id])
  end

  def developer_params
    params.require(:developer).permit(:name, :email, :title, :description, :location)
  end
end
