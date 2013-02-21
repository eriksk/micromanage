class AuthenticationController < ApplicationController

	def login
		authentication = Authentication.new params
		user = User.find_by_email(authentication.email)
		if user && user.password == authentication.password
			session['user_id'] = user.id
			redirect_to costs_path, :flash => { :success => "Logged in as #{user.email}" }
		else
			redirect_to "/", :flash => { :error => "Invalid email and password combination" }
		end
  end

  def logout
		session['user_id'] = nil
		redirect_to :root
  end
end
