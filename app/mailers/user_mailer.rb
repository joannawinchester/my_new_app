class UserMailer < ApplicationMailer

	default from: "joannawinchester@gmail.com"

	def contact_form(email, name, message)
	@message = message	
		mail(:from => email,
			:to => 'joannawinchester@gmail.com',
			:subject => "A new contact form message from #{name}")
	end
end
