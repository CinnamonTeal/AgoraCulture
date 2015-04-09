class MarketController < ApplicationController

	def show
		@market = Market.find_by_id(params[:id])
	end

end