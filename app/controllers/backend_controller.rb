class BackendController < ApplicationController

	before_filter :check_session, :except => [:login, :createUser]

	def login

	end

	def createUser

	end

	private
		def check_session
			return !!session[:user_id]
		end

end
