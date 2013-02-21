module AuthHelper
	def http_login
		user = 'ersk'
		pwd = 'starfox64'
		request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user, pwd)
	end
end
