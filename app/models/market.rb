class Market < ActiveRecord::Base
  has_many :reviews

  validates :name, :address, :longitude, :latitude, presence: true, uniqueness: true
  validates :zipcode, :accepts_ebt, presence: true

	def self.pins
		Market.all.collect do |market, json|
			[market.id, market.latitude, market.longitude]
		end.to_json
	end

end
