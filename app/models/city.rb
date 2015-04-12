class City < ActiveRecord::Base
	has_many :markets

	validates :name, presence: true
end
