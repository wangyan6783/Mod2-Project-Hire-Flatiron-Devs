class CustomersController < ApplicationController
  before_action :find_customer, only: [:show, :edit, :update]

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:notice] = "Sign Up Successful! Welcome, #{customer.name}!"
      redirect_to @customer
    else
      render :new
    end
  end

  def show
  end

  def edit
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
