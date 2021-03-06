class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:email].downcase)

		if user && user.authenticate(params[:password])
			sign_in user
			redirect_back_or :back
		else
			flash.now[:error] = "Wrong user name or password"
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end

end
