class ApplicationController < ActionController::Base
  before_action(:customer_authorized, :developer_authorized)
  helper_method(:current_customer, :current_developer, :customer_logged_in?, :developer_logged_in?) #allows me to call a particular method in my VIEWS

  def current_customer
    Customer.find_by({ id: session[:customer_id] })
  end

  def current_developer
    Developer.find_by({ id: session[:developer_id] })
  end

  def logged_in_customer?
    !!current_customer
  end

  def logged_in_developer?
    !!current_developer
  end

  def customer_authorized
    unless logged_in_customer?
      flash[:notice] = "Please login to see this page"
      redirect_to customer_login_path
    end
  end

  def developer_authorized
    unless logged_in_developer?
      flash[:notice] = "Please login to see this page"
      redirect_to developer_login_path
    end
  end


end
