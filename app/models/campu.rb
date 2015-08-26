class Campu < ActiveRecord::Base
	TYPE = %w[ student_life dorm_amenities facilities clubs_&_organizations ]
	has_many :school_campus
end
