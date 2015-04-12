class UserController < ApplicationController

	def show
		@user = User.find_by_id(params[:id])
	end

	private

	def user_params
		params.require(:user).permit(:name, :provider, :uid, :image)
	end 

end