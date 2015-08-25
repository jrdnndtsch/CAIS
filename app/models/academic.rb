class Academic < ActiveRecord::Base
	SUBJECT = %w[ computer_studies advanced/enrichment_programs english science humanities/social_sciences support_programs special_programs performing/visual_arts music foriegn_languages history mathematics religion/philosophy distinctive_or_new_programs ]
	has_many :school_academics
end
