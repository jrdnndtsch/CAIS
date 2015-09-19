class AcademicType < ActiveRecord::Base
	has_many :academics
	has_many :school_academics, through: :academics
end
