class CustomersController < ApplicationController
  before_action :find_customer, only: [:show, :edit, :update]
  skip_before_action :developer_authorized
  skip_before_action :customer_authorized, only: [:index, :new, :create, :show]


  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    byebug
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:notice] = "Sign Up Successful! Welcome, #{@customer.name}!"
      session[:customer_id] = @customer.id
      redirect_to @customer
    else
      render :new
    end
  end

  def show
  end

  def edit
    if current_customer.id == @customer.id
      render :edit
    else
      flash[:notice] = "You are not authorized to see this"
      redirect_to @customer
    end
  end

  def update
    if @customer.update(customer_params)
      flash[:notice] = "Customer Updated!"
      redirect_to @customer
    else
      render :edit
    end
  end

  private

  def find_customer
    @customer = Customer.find_by(id: params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name, :email, :password)
  end
end
