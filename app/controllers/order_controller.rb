class OrderController < ApplicationController
	def update
    @order = current_order
    

    @order.save
   
    redirect_to :back
  end
end
