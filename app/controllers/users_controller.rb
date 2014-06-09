class UsersController < ApplicationController

	def create
		@user = User.create(user_params)
		
		if @user.save
			redirect_to :backend
		else
			render 'backend/createUser'
		end
	end

	def auth
		user = User.find_by_email(params[:user][:email])

		if user && user.authenticate(params[:user][:password])
			session[:user_id] = user.id
			redirect_to backend_index_path
		else
			flash.alert = "Incorrect email or password"
			redirect_to backend_path
		end

	end

	private
		def user_params
			params.require(:user).permit(:email, :password)
		end

end
