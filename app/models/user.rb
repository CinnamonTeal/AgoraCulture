class User < ActiveRecord::Base
  has_many :reviews

  def self.create_with_omniauth(auth)
  	user_name = hash["info"]["name"]
  	User.create(:name => user_name)
  end	

end