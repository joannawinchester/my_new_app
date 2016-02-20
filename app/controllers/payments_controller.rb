class PaymentsController < ApplicationController

	# POST /payments
	def create
		@product = Product.find(params[:product_id])
		@user - current_user
		token = params[:stripeToken]
		# Create the charge on Stripe's servers - this will charge the user's card
		begin
			charge = Stripe::Charge.create(
				:amount => @product.price.to_i,
				:currency => "usd",
				:source => token,
				:description => params[:stripeEmail]
			)
			
			redirect_to product_path(@product)
			
			if charge.paid
				Order.create(
					:product_id => @product.id
					:user_id => @user.id
					:total => @product.price.to_i
					)
			end

		rescue Stripe::CardError => e
			# The card has been declined
		end
		
	end

end
