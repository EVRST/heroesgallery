class Custom < ActiveRecord::Base

	has_attached_file :image_one, styles: { cover: "1900x870#", medium: "200x300#", thumb: "65x100#" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image_one, content_type: /\Aimage\/.*\Z/

  	has_attached_file :image_two, styles: { cover: "1900x870#", medium: "200x300#", thumb: "65x100#" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image_two, content_type: /\Aimage\/.*\Z/

  	has_attached_file :image_three, styles: { cover: "1900x870#", medium: "200x300#", thumb: "65x100#" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image_three, content_type: /\Aimage\/.*\Z/

  	has_attached_file :image_four, styles: { cover: "1900x870#", medium: "200x300#", thumb: "65x100#" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image_four, content_type: /\Aimage\/.*\Z/

  	has_attached_file :image_down, styles: { cover: "1900x870#", medium: "200x300#", thumb: "65x100#" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image_down, content_type: /\Aimage\/.*\Z/

  	def home_text
	    if I18n.locale.to_s.include?("en")
	      home_text_en
	    elsif I18n.locale.to_s.include?("fr")
	      home_text_fr
	    elsif I18n.locale.to_s.include?("nl")
	      home_text_nl
	    end
  	end

  	def concept_title
  		if I18n.locale.to_s.include?("en")
	      concept_title_en
	    elsif I18n.locale.to_s.include?("fr")
	      concept_title_fr
	    elsif I18n.locale.to_s.include?("nl")
	      concept_title_nl
	    end
  	end

  	def concept_text
  		if I18n.locale.to_s.include?("en")
	      concept_text_en
	    elsif I18n.locale.to_s.include?("fr")
	      concept_text_fr
	    elsif I18n.locale.to_s.include?("nl")
	      concept_text_nl
	    end
  	end

  	def step_one_title
  		if I18n.locale.to_s.include?("en")
	      step_one_title_en
	    elsif I18n.locale.to_s.include?("fr")
	      step_one_title_fr
	    elsif I18n.locale.to_s.include?("nl")
	      step_one_title_nl
	    end
  	end

  	def step_one_text
  		if I18n.locale.to_s.include?("en")
	      step_one_text_en
	    elsif I18n.locale.to_s.include?("fr")
	      step_one_text_fr
	    elsif I18n.locale.to_s.include?("nl")
	      step_one_text_nl
	    end
  	end

  	def step_two_title
  		if I18n.locale.to_s.include?("en")
	      step_two_title_en
	    elsif I18n.locale.to_s.include?("fr")
	      step_two_title_fr
	    elsif I18n.locale.to_s.include?("nl")
	      step_two_title_nl
	    end
  	end

  	def step_two_text
  		if I18n.locale.to_s.include?("en")
	      step_two_text_en
	    elsif I18n.locale.to_s.include?("fr")
	      step_two_text_fr
	    elsif I18n.locale.to_s.include?("nl")
	      step_two_text_nl
	    end
  	end

  	def step_three_title
  		if I18n.locale.to_s.include?("en")
	      step_three_title_en
	    elsif I18n.locale.to_s.include?("fr")
	      step_three_title_fr
	    elsif I18n.locale.to_s.include?("nl")
	      step_three_title_nl
	    end
  	end

  	def step_three_text
  		if I18n.locale.to_s.include?("en")
	      step_three_text_en
	    elsif I18n.locale.to_s.include?("fr")
	      step_three_text_fr
	    elsif I18n.locale.to_s.include?("nl")
	      step_three_text_nl
	    end
  	end

  	def step_four_title
  		if I18n.locale.to_s.include?("en")
	      step_four_title_en
	    elsif I18n.locale.to_s.include?("fr")
	      step_four_title_fr
	    elsif I18n.locale.to_s.include?("nl")
	      step_four_title_nl
	    end
  	end

  	def step_four_text
  		if I18n.locale.to_s.include?("en")
	      step_four_text_en
	    elsif I18n.locale.to_s.include?("fr")
	      step_four_text_fr
	    elsif I18n.locale.to_s.include?("nl")
	      step_four_text_nl
	    end
  	end

end
