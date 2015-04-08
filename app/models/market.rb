class Market < ActiveRecord::Base
  has_many :reviews
	def self.pins
		Market.all.collect do |market, json|
			[market.id, market.latitude, market.longitude]
		end.to_json
	end
end
