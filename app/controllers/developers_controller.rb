class DevelopersController < ApplicationController
  before_action :find_developer, only: [:show, :edit, :update]
  skip_before_action :customer_authorized
  skip_before_action :developer_authorized, only: [:index, :new, :create, :show]


  def index
    @developers = Developer.all
  end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(developer_params)
    if @developer.save
      flash[:notice] = "Sign Up Successful! Welcome, #{@developer.name}!"
      session[:developer_id] = @developer.id
      redirect_to @developer
    else
      render :new
    end
  end

  def show
  end

  def edit
    if current_developer.id == @developer.id
      render :edit
    else
      flash[:notice] = "You are not authorized to see this"
      redirect_to @developer
    end
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
    params.require(:developer).permit(:name, :email, :title, :description, :location, :password)
  end
end
