class ReviewController < ApplicationController
  def new
    binding.pry
    Review.create(title: :params[:title], rating: :params[:rating], user_id: :params[:id], market_id: :params[:market_id])
  end

end