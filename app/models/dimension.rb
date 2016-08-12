class Dimension < ActiveRecord::Base
	belongs_to :gabarit
	has_many :order_items

	def whole_name
	    "#{name} (#{hauteur} x #{largeur} cm)"
	end

	def price
		if gabarit.id == 1
			price_paysage
		elsif gabarit.id == 2
			price_portrait
		elsif gabarit.id == 3
			price_carre
		elsif gabarit.id == 4
			price_pano
		end
	end

	def price_paysage
		if id == 4
			1
		elsif id == 3
			300
		elsif id == 2
			225
		else
			135
		end
	end

	def price_portrait
		if id == 8
			1
		elsif id == 7
			300
		elsif id == 6
			225
		else
			135
		end
	end

	def price_carre
		if id == 11
			285
		elsif id == 10
			215
		else
			135
		end
	end

	def price_pano
		if id == 14
			1
		elsif id == 13
			1
		else
			1
		end
	end
end
