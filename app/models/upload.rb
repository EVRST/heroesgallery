class Upload < ActiveRecord::Base
	has_many :upload_gabarits, dependent: :destroy
	has_many :gabarits, through: :upload_gabarits, dependent: :destroy
	has_many :dimensions, through: :gabarits, dependent: :destroy

	has_attached_file :image,
					styles: { large: "976x600#", medium: "600x300>", little: "600x270#", thumb: "270x270#", 
						      paysage: "435x680#", portrait: "680x435#", carre: "435x435#", pano: "340,680#"},
					default_url: ":style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    def size_in_mega
    	(image_file_size.round(1) / 1000000).round(2)
    end

end
