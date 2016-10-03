class Gabarit < ActiveRecord::Base
	has_many :dimensions
	has_many :visual_gabarits
	has_many :visuals, through: :visual_gabarits

	has_many :upload_gabarits
	has_many :uploads, through: :upload_gabarits
end
