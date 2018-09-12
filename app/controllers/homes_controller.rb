class HomesController < ApplicationController
  skip_before_action :customer_authorized
  skip_before_action :developer_authorized

  def signup
    #code
  end

  def homepage
  end

  def about
  end


end
