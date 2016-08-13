class VisitorsController < ApplicationController
	def home
	end

	def concept
	end

	def finitions
	end

	def contact
	end

	def terms
	end

	def shipping
	end

	def billing
	end

	def checkout
		@order_items = current_order.order_items
		@order = current_order
	end
end
