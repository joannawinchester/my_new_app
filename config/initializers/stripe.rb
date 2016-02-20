if Rails.env.production?
	Rails.configuration.stripe = {
		:publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
		:secret_key => ENV['STRIPE_SECRET_KEY']
	}
else
	Rails.configuration.stripe = {
		:publishable_key => 'pk_test_zfBaWjpqB5iIG6GTwQpGmeHC',
		:secret_key => 'sk_test_Hd2uox4msKIje8wkqzPQyjsr'
	}
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]