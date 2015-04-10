class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :market

  validates :title, :rating, :comment, :user_id, :market_id, presence: true
end