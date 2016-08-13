class OrdersController < ApplicationController
  def update
    @order = current_order
    @order.save
    redirect_to :back
  end

  def show
  end

  def index
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:with_shipping)
    end
end
