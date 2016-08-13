class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    def full_name
    	"#{first_name} #{last_name}"
    end

    def shipping_address
    	"#{shipping_street}, #{shipping_number}"
    end

    def shipping_town
    	"#{shipping_zipcode} #{shipping_city}"
    end

    def billing_address
    	"#{billing_street}, #{billing_number}"
    end

    def billing_town
    	"#{billing_zipcode} #{billing_city}"
    end

end
