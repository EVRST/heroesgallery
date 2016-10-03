class UploadGabarit < ActiveRecord::Base
	belongs_to :upload
	belongs_to :gabarit
end
