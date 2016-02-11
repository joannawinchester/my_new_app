# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

	def contact_form
		UserMailer.contact_form("joannawinchester@gmail.com", "Joanna", "Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...Some test filler...")
	end

end
