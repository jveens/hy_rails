class User
	# 1. Add name and email attributes
	attr_accessor :name, :email, :friends

	# 2. Add a friends attribute - initilize to an empty array
	

	# 3. Implement a friends_with? methods

	def name
		@name
	end

	def name=(value)
		@name = value.to_s
	end

	def initialize # initalize is a special method name, it gets called when we call .new


		# initialize friends to an empty array
		self.friends = []
		# remember you can access attributes directly inside methods
		# ie. self.name = "Jenny"

		# u = User.new
		# u2 = User.new
		# u.friends  		# []
		# u.friends << u2
		# u.friends_with?(u2) 		# true

	end
end

