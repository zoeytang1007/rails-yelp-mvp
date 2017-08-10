class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id]) #syntax error here
    @review = Review.new
  end

  def create
    @review= Review.new(review_params)
    if @review.save(review_params)
     redirect_to restaurant_path(@review)
    else
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end  #missing something here
end
