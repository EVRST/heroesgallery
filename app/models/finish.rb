class Finish < ActiveRecord::Base
	has_many :order_items
	has_many :purchases
end
