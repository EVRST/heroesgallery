class User < ActiveRecord::Base
  has_many :purchases, foreign_key: :buyer_id

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    def full_name
    	"#{first_name} #{last_name}"
    end

    def email_or_placeholder
      email
    end

    def shipping_address
    	"#{shipping_street}, #{shipping_number}"
    end

    def shipping_town
    	"#{shipping_zipcode} #{shipping_city}"
    end

    def shipping_address_or_placeholder
      if billing_as_shipping
        billing_address
      else
        shipping_address
      end
    end

    def shipping_town_or_placeholder
      if billing_as_shipping
        billing_town
      else
        shipping_town
      end
    end

    def shipping_telephone_or_placeholder
      if billing_as_shipping
        billing_telephone
      else
        shipping_telephone
      end
    end

    def billing_address
    	"#{billing_street}, #{billing_number}"
    end

    def billing_town
    	"#{billing_zipcode} #{billing_city}"
    end



    def purchase_cart_order_items!(order)
      order.order_items.each do |order_item|
        purchase(order_item)
        order_item.destroy
      end
    end

    def purchase(order_item)
      unless purchase?(order_item)
        Purchase.create(:order_item_id => order_item.id, :buyer_id => self.id, :visual_id => order_item.visual.id, :price => order_item.price, :dimension_id => order_item.dimension_id, :finish_id => order_item.finish_id)
        UserMailer.your_purchase(order_item.purchase).deliver_now
        UserMailer.new_purchase(order_item.purchase).deliver_now
      end
    end

    def purchase?(order_item)
      purchases.where(:order_item_id => order_item.id).any?
    end

end
