class Dimension < ActiveRecord::Base
	belongs_to :gabarit
	has_many :order_items

	def whole_name
	    "#{name} (#{hauteur} cm x #{largeur} cm)"
	end
end
