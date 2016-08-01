class Artist < ActiveRecord::Base
	has_many :visuals

	def full_name
		"#{first_name} #{last_name}"
	end
end
