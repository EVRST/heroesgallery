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

	def price_upload
		if gabarit.id == 1
			price_paysage_upload
		elsif gabarit.id == 2
			price_portrait_upload
		elsif gabarit.id == 3
			price_carre_upload
		elsif gabarit.id == 4
			price_pano_upload
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

	def price_plexi_upload
		if gabarit.id == 1
			price_paysage_plexi_upload
		elsif gabarit.id == 2
			price_portrait_plexi_upload
		elsif gabarit.id == 3
			price_carre_plexi_upload
		elsif gabarit.id == 4
			price_pano_plexi_upload
		end
	end


	def price_paysage #prix ttc
		if id == 4 # impressionnant alu
			695 #795
		elsif id == 3 # étonnant alu
			495 #300
		elsif id == 2 # grand alu
			355 #225
		else # standard alu
			255 #135
		end
	end

	def price_paysage_upload #prix upload ttc
		if id == 4 # impressionnant alu
			415 #695 #795
		elsif id == 3 # étonnant alu
			295 #495 #300
		elsif id == 2 # grand alu
			225 #355 #225
		else # standard alu
			155 #255 #135
		end
	end

	def price_paysage_plexi
		if id == 4 # impressionnant plexi
			950 #1250
		elsif id == 3 # étonnant plexi
			750 #500
		elsif id == 2 # grand plexi
			545 #400
		else # standard plexi
			395 #275
		end
	end

	def price_paysage_plexi_upload
		if id == 4 # impressionnant plexi
			570 #950 #1250
		elsif id == 3 # étonnant plexi
			450 #750 #500
		elsif id == 2 # grand plexi
			325 #545 #400
		else # standard plexi
			245 #395 #275
		end
	end

	def price_portrait
		if id == 8 # impressionnant alu
			695 #795
		elsif id == 7 # étonnant alu
			495 #300
		elsif id == 6 # grand alu
			355 #225
		else # standard alu
			255 #135
		end
	end

	def price_portrait_upload
		if id == 8 # impressionnant alu
			415 #695 #795
		elsif id == 7 # étonnant alu
			295 #495 #300
		elsif id == 6 # grand alu
			225 #355 #225
		else # standard alu
			155 #255 #135
		end
	end

	def price_portrait_plexi
		if id == 8 # impressionnant plexi
			950 #1250
		elsif id == 7 # étonnant plexi
			750 #500
		elsif id == 6 # grand plexi
			545 #400
		else # standard plexi
			395 #275
		end
	end

	def price_portrait_plexi_upload
		if id == 8 # impressionnant plexi
			570 #950 #1250
		elsif id == 7 # étonnant plexi
			450 #750 #500
		elsif id == 6 # grand plexi
			325 #545 #400
		else # standard plexi
			245 #395 #275
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

	def price_carre_upload
		if id == 11
			330 #285
		elsif id == 10
			235 #215
		else
			165 #135
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

	def price_carre_plexi_upload
		if id == 11
			455 #485
		elsif id == 10
			355 #415
		else
			235 #275
		end
	end

	def price_pano
		if id == 14 # impressionnant alu
			635 #595
		elsif id == 13 # étonnant alu
			435 #425
		else # grand alu
			195 #200
		end
	end

	def price_pano_upload
		if id == 14 # impressionnant alu
			385 #635 #595
		elsif id == 13 # étonnant alu
			265 #435 #425
		else # grand alu
			155 #195 #200
		end
	end

	def price_pano_plexi
		if id == 14 # impressionnant plexi
			975 #950
		elsif id == 13 # étonnant plexi
			675 #675
		else # grand plexi
			245 #350
		end
	end

	def price_pano_plexi_upload
		if id == 14 # impressionnant plexi
			570 #975 #950
		elsif id == 13 # étonnant plexi
			395 #675 #675
		else # grand plexi
			195 #245 #350
		end
	end
	
end
