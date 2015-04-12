class MarketController < ApplicationController

	def show
		@market = Market.find_by_id(params[:id])
	end

	private
	
	def market_params
		params.require(:review).permit(:title, :rating, :comment, :user_id, :market_id)
	end

end