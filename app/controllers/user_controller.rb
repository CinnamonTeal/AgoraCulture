class UserController < ApplicationController

	def show
		@user = User.find_by_id(params[:id])
	end

	private

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
helper_method :current_user

end