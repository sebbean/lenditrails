class Speaker < ActiveRecord::Base
	include Herd::Assetable
	extend FriendlyId
	friendly_id :full_name, use: [:slugged, :finders]

	def full_name
		first_name + " " + last_name
	end
end
