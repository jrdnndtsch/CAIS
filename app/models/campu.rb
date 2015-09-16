class Campu < ActiveRecord::Base
	TYPE = [ 'Student Life', 'Dorm Amenities', 'Facilities', 'Clubs & Organizations' ]
	has_many :school_campus
end
