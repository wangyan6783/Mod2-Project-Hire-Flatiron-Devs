class SessionsController < ApplicationController
  # authorized comes from application_controller
  # skip_before_action 'unlocks' this portion of our app
  # skip_before_action :authorized, only: [:new, :create]

  def new_developer # show developer a form to login w/ username/pw combo
    render :developer_new
  end

  def new_customer # show user a form to login w/ username/pw combo
    render :customer_new
  end

  def create_developer #handles form submission; should login a new user
    # find the user by the provided username
    # attempt to authenticate that user w/ provided pw
    developer = Developer.find_by({ email: params[:email] })
    if developer && developer.authenticate(params[:password])
      session[:developer_id] = developer.id
      # if they are who the claim to be, create a new session for that developer in our app
      flash[:notice] = "Login Successful"
      redirect_to developer
    else
      flash[:notice] = "Invalid email or password"
      redirect_to login_path
    end
  end

  def create_customer #handles form submission; should login a new user
    # find the user by the provided username
    # attempt to authenticate that user w/ provided pw
    customer = Customer.find_by({ email: params[:email] })
    if customer && customer.authenticate(params[:password])
      session[:customer_id] = customer.id
      # if they are who the claim to be, create a new session for that customer in our app
      flash[:notice] = "Login Successful"
      redirect_to customer
    else
      flash[:notice] = "Invalid email or password"
      redirect_to customer_login_path
    end
  end

  def destroy
    # session[:user_id] = nil
    session.delete(:user_id)
    flash[:notice] = "Logout Successful"
    redirect_to login_path
  end
end
