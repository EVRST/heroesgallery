class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @order_item = @order.order_items.new(order_item_params)
    @order.save
    @order_item.save
    redirect_to :back
    session[:order_id] = @order.id

    
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items

    @order.save
    @order_item.save
    redirect_to :back
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end

  private
  
  def order_item_params
    params.require(:order_item).permit(:quantity, :visual_id, :dimension_id, :finish_id)
  end
end
