class ReviewController < ApplicationController
  def new
    Review.create(title: params[:title], rating: params[:rating], user_id: params[:id], market_id: params[:market_id])
    redirect_to 'market/#{params[:market_id]}'
  end
end