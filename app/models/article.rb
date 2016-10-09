class Article < ActiveRecord::Base
	has_attached_file :image, styles: { large: "900x510#", medium: "600x340#", thumb: "270x270#" }, default_url: ":style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    def title
		if I18n.locale.to_s.include?("en")
	      title_en
	    elsif I18n.locale.to_s.include?("fr")
	      title_fr
	    elsif I18n.locale.to_s.include?("nl")
	      title_nl
	    end
	end

	def content
		if I18n.locale.to_s.include?("en")
	      content_en
	    elsif I18n.locale.to_s.include?("fr")
	      content_fr
	    elsif I18n.locale.to_s.include?("nl")
	      content_nl
	    end
	end

end
