class School < ActiveRecord::Base
	STUDENT_BODY = %w[ co-ed boys gilrs ]
	has_many :school_recreations
	has_many :school_campus
	has_many :campus, through: :school_campus
	has_many :school_academics
	has_many :academics, through: :school_academics
end
