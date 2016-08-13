class Purchase < ActiveRecord::Base
	belongs_to :order_item
	belongs_to :buyer, class_name: 'User'
	belongs_to :visual
end
