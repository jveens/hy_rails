class SignupController < ApplicationController


	def confirm
		@email = params[:email]
		render "signup.html.erb"
	end
end
