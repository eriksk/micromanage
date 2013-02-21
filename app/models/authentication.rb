class Authentication
	attr_accessor :email, :password

	def initialize params
		@email = params['email']
		@password = params['password']
	end
end
