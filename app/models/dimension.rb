class Dimension < ActiveRecord::Base
	belongs_to :gabarit

	def whole_name
	    "#{name} (#{hauteur} cm x #{largeur} cm)"
	end
end
