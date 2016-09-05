class Artist < ActiveRecord::Base
	has_many :visuals, dependent: :destroy

	has_attached_file :image, styles: { large: "976x600#", medium: "600x300#", little: "600x270#", thumb: "270x270#" }, default_url: ":style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	def full_name
		"#{first_name} #{last_name}"
	end

	def presentation
		if I18n.locale.to_s.include?("en")
	      presentation_en
	    elsif I18n.locale.to_s.include?("fr")
	      presentation_fr
	    elsif I18n.locale.to_s.include?("nl")
	      presentation_nl
	    end
	end
end
