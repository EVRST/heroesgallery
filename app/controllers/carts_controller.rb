class CartsController < ApplicationController


  def show
    @order_items = current_order.order_items
    @visuals = Visual.for_all.all
  end
end
