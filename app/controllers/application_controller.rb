class ApplicationController < ActionController::Base
  protect_from_forgery
	http_basic_authenticate_with :name => "ersk", :password => "starfox64"


	private

	def current_user
		@current_user ||= User.first
	end
end
