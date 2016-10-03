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

	def price_plexi
		if gabarit.id == 1
			price_paysage_plexi
		elsif gabarit.id == 2
			price_portrait_plexi
		elsif gabarit.id == 3
			price_carre_plexi
		elsif gabarit.id == 4
			price_pano_plexi
		end
	end

	def price_paysage
		if id == 4
			795
		elsif id == 3
			300
		elsif id == 2
			225
		else
			135
		end
	end

	def price_paysage_plexi
		if id == 4
			1250
		elsif id == 3
			500
		elsif id == 2
			400
		else
			275
		end
	end

	def price_portrait
		if id == 8
			795
		elsif id == 7
			300
		elsif id == 6
			225
		else
			135
		end
	end

	def price_portrait_plexi
		if id == 8
			1250
		elsif id == 7
			500
		elsif id == 6
			400
		else
			275
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

	def price_carre_plexi
		if id == 11
			485
		elsif id == 10
			415
		else
			275
		end
	end

	def price_pano
		if id == 14
			595
		elsif id == 13
			425
		else
			200
		end
	end

	def price_pano_plexi
		if id == 14
			950
		elsif id == 13
			675
		else
			350
		end
	end
end
