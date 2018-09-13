class ReviewsController < ApplicationController
  before_action :find_review, only: :destroy
  skip_before_action :developer_authorized, only: [:create, :destroy]

  def create
    @review = Review.new(review_params)
    @review.project_id = params[:project_id]
    if @review.save
      redirect_to @review.project
    else
      render project_path(@review.project)
    end
  end

  def destroy
    project = @review.project
    @review.destroy
    flash[:notice] = "Review Deleted!"
    redirect_to project
  end

  private

  def find_review
    @review = Review.find_by(id: params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
