class ReviewsController < ApplicationController
  before_action do |controller|
    if !current_user
      flash[:error] = "You must be logged in to post a review"
      redirect_to '/login'
    end
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to product_path(@review.product_id)
    else
      redirect_to product_path(@review.product_id), notice: "your review failed to save"
    end
  end

private

def review_params
    params.require(:review).permit(:product_id, :content, :rating)
end


end
