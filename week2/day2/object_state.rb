# Create a Tweet Class

class Tweet

	# Add a content variable
	def content
		@content
	end
	def content=(value)
		@content = value
	end

  # We can also do this:
  # attr_accessor :content

	# Add a valid? method
	def valid?
    # can include @, or can put self.
    # if we leave off the @, we get the content method (which returns @content)
		content.length <= 140
	end

	# Add a post method
	def post
		if valid?
      puts content
      true
    elsif 
      puts "Invalid!"
      false
    end
	end

end

	