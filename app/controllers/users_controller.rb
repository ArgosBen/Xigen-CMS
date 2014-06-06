class UsersController < ApplicationController

	def create

		render plain: params[:user].inspect

		@user = User.create(user_params)
		@user.save
	end

	private
		def user_params
			params.require(:user).permit(:email, :password)
		end

end
