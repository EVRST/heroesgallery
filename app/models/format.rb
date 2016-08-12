class Format < ActiveRecord::Base
	has_many :dimensions
	has_many :visual_formats
end
