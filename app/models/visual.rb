class Visual < ActiveRecord::Base
	belongs_to :artist
	
	has_many :visual_gabarits, dependent: :destroy
	has_many :gabarits, through: :visual_gabarits, dependent: :destroy
	has_many :dimensions, through: :gabarits, dependent: :destroy

	has_many :order_items
	has_many :purchases

	has_attached_file :image, styles: { large: "976x600#", medium: "600x300#", little: "600x270#", thumb: "270x270#" }, default_url: ":style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    has_attached_file :miniature, styles: { large: "976x600#", medium: "600x300#", little: "600x270#", thumb: "270x270#" }, default_url: ":style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    def with_this(gabarit)
	  visual_gabarits.where(:gabarit_id => gabarit.id).last
	end

	def miniature_or_placeholder
		if miniature.present?
			miniature
		else
			image
		end
	end
end
