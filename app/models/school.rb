class School < ActiveRecord::Base
	STUDENT_BODY = %w[ co-ed boys gilrs ]
	has_many :school_recreations
end
