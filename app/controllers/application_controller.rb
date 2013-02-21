class ApplicationController < ActionController::Base
  protect_from_forgery
	helper_method :current_user

	private

	def logged_in?
		if current_user == nil
			redirect_to :root, :flash => { :error => "You need to log in to do that!" }
		end
	end

	def admin?
		unless current_user && current_user.email == "erikskoglund88@gmail.com"
			redirect_to costs_path, :flash => { :error => "You need to be admin for that!" }
		end
	end

	def current_user
		@current_user ||= User.find(session['user_id']) if session['user_id']
	end
end
