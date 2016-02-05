class SignupController < ApplicationController
	def create
		s = SignUp.new
		s.name = params[:name]
		s.email = params[:email]
		
		if SignUp.exists?(email: s.email)
			render text: "ERROR - Email already exists #{s.email}"
		elsif s.name.length > 0 && s.email['@']
			@email = s.email
			render "signup.html.erb"
		else 
			render text: "ERROR!"
		end

		s.save
	end

end
