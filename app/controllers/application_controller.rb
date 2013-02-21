class ApplicationController < ActionController::Base
  protect_from_forgery
	http_basic_authenticate_with :name => "ersk", :password => "starfox64"
	helper_method :current_user

	private

	def logged_in?
		if current_user == nil
			redirect_to :root, :flash => { :error => "You need to log in to do that!" }
		end
	end

	def current_user
		@current_user ||= User.find(session['user_id']) if session['user_id']
	end
end
