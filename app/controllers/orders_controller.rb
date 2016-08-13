class OrdersController < ApplicationController

  def update
    @order = current_order

    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to :back }
        #format.json { render :show, status: :ok, location: @upload }
      else
        format.html { render :back }
        #format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
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
