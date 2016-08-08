class Article < ActiveRecord::Base
	has_attached_file :image, styles: { large: "900x510#", medium: "600x340#", thumb: "270x270#" }, default_url: ":style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
