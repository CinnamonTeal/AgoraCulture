class User < ActiveRecord::Base
  has_many :reviews

  def self.create_with_omniauth(auth)
  	User.create(
  		:name => auth.info.name,
  		:provider => auth.provider,
  		:image => auth.info.image,
  		:uid => auth.uid,
  		:oauth_token => auth.credentials.token,
  		:oauth_expires_at => Time.at(auth.credentials.expires_at)
  		)
  end

end