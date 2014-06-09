class BackendController < ApplicationController

	before_filter :check_session, :except => [:login, :createUser]

	def login

	end

	def createUser

	end

	private
		def check_session
			if !session[:user_id]
				flash.alert = "You must login to access this page"
				redirect_to backend_path
			end
		end

end
