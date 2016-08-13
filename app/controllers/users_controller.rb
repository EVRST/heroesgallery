class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

  def update
    @user = User.find(params[:id])
    
    respond_to do |format|
      if @user.update(user_params)
        if @user.billing_zipcode.blank?
          if @user.billing_as_shipping == true
            @user.update_attributes(billing_street: @user.shipping_street, 
                                    billing_number: @user.shipping_number, 
                                    billing_zipcode: @user.shipping_zipcode, 
                                    billing_city: @user.shipping_city, 
                                    billing_telephone: @user.shipping_telephone)
            format.html { redirect_to checkout_path }
          else
            format.html { redirect_to billing_path }
          end
        else
          format.html { redirect_to checkout_path }
        end
        
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :back }
        #format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :users, :last_name, :email_invite, :lead_source,
                                    :shipping_street, :shipping_number, :shipping_zipcode, :shipping_city, :shipping_telephone, 
                                    :billing_street, :billing_number, :billing_zipcode, :billing_city, :billing_telephone,
                                    :billing_as_shipping)
    end

end
