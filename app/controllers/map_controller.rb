class MapController < ApplicationController

	def index
		@pin_json = Market.pins 
	end
	
end
