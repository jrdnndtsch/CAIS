class Academic < ActiveRecord::Base
	SUBJECT = [ 'Computer Studies', 'Advanced/Enrichment_programs', 'English', 'Science', 'Humanities/Social Sciences', 'Support Programs', 'Special Programs', 'Performing/Visual Arts', 'Music', 'Foriegn Languages', 'History', 'Mathematics', 'Religion/Philosophy', 'Distinctive or New Programs' ]
	has_many :school_academics
	belongs_to :academic_type
end
