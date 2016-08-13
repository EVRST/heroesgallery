class ChargesController < ApplicationController
	def new
		
	end

	def create
		# Amount in cents
		  
		begin

		customer = Stripe::Customer.create(
			:email => current_user.email,
		    :card  => params[:stripeToken]
		)

		charge = Stripe::Charge.create(
		    :customer    => customer.id,
		    :amount      => (current_order.total*100),
		    :description => 'Heroes Gallery',
		    :currency    => 'eur'
		    
		  )

		current_user.purchase_cart_order_items!(current_order)

		current_user.stripeid = customer.id
		current_user.save

      	redirect_to user_url(current_user), notice: "Congratulations! Your transaction has been successfully!"

		rescue Stripe::CardError => e
			flash[:error] = e.message
			redirect_to 'carts/show'
		end
	end
end
