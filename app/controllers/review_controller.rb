class ReviewController < ApplicationController

  def new
  	binding.pry
    Review.create(title: params[:title], rating: params[:rating], comment: params[:comment], user_id: current_user.id, market_id: params[:market_id])
    redirect_to "/market/#{params[:market_id]}"
  end

  private

  def review_params
  	params.require(:review).permit(:title, :rating, :comment, :user_id, :market_id)
  end

end